-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 04:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'Computer ', '', '2023-08-12 19:14:05', '21-08-2023 08:38:31 PM'),
(10, 'Mobile ', '', '2023-08-12 19:15:48', '13-08-2023 12:51:34 AM'),
(11, 'Camera', '', '2023-08-12 19:17:54', NULL),
(12, 'Television', '', '2023-08-12 19:18:56', NULL),
(13, 'Laptop', '', '2023-08-12 19:22:38', NULL),
(14, 'Fridge', '', '2023-08-21 15:09:39', NULL),
(15, 'Washing Machine', '', '2023-08-21 15:10:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2023-10-12 19:32:57', 'COD', 'Delivered'),
(3, 1, '4', 1, '2023-10-12 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2023-10-12 16:14:17', 'COD', 'Delivered'),
(5, 1, '3', 1, '2023-10-12 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2023-10-12 19:21:38', 'COD', NULL),
(7, 1, '3', 1, '2023-08-10 16:22:33', 'Internet Banking', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2023-10-12 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2023-10-12 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2023-10-12 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2023-10-12 19:50:36'),
(5, 1, 'in Process', 'your order in process be ready', '2023-08-10 18:49:10'),
(6, 7, 'in Process', 'okay wait\r\n', '2023-08-10 18:50:11'),
(7, 1, 'Delivered', 'order has been deliverd', '2023-08-11 19:26:00'),
(8, 4, 'Delivered', 'your orger has been deliverd', '2023-10-18 18:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2023-10-12 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-10-12 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2023-10-12 20:59:19'),
(5, 2, 5, 3, 4, 'vaishnavi aher', 'okay', 'lorem 3hfvch ,dzeyd e5ryh edar4 3uaz4yzy ay', '2023-08-11 19:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(25, 9, 17, 'Lenovo 23.8 inch Full HD VA Panel ', 'Lenovo', 8599, 14299, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;23.8 inch Full HD VA Panel 3-Side Near Edgeless with TUV Eye Care Monitor (D24-20)&nbsp;</span></font></li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;(Response Time: 4 ms, 75 Hz Refresh Rate)</span></font><br></li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Panel Type: VA Panel</li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Screen Resolution Type: Full HD</li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Response Time: 4 ms | Refresh Rate: 75 Hz</li></ul>', 'eqmankoi.png', '308aukpf.png', '0cq2jbjg.png', 299, 'In Stock', '2023-08-21 14:40:26', NULL),
(26, 9, 17, 'iMac Core i5 (7th Gen) ', 'APPLE', 91990, 99900, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">(8 GB Unified/256 GB SSD)</span><br></font></li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">Mac OS Big Sur/21.5 Inch Screen/MHK03HN/A)&nbsp;</span></font></li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;(White, 450 mm x 528 mm x 175 mm, 5.44 kg)</span></font><br></li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Mac OS Big Sur</li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Intel Core i5 (7th Gen)</li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">RAM 8 GB Unified</li><li class=\"_21Ahn-\" style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">21.5 inch Display</li></ul>', 'hdne2wum.png', '0st8r97q.png', 'iz3ldm59.png', 500, 'In Stock', '2023-08-21 14:45:31', NULL),
(27, 10, 18, 'APPLE iPhone 14 (Blue, 128 GB)', 'APPLE ', 61999, 70000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">128 GB ROM</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">15.49 cm (6.1 inch) Super Retina XDR Display</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">12MP + 12MP | 12MP Front Camera</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">A15 Bionic Chip, 6 Core Processor Processor</li></ul>', 'rks6dzqm.png', 'ljsrrbgs.png', '2jq4g7yg.png', 0, 'In Stock', '2023-10-18 18:21:12', NULL),
(28, 11, 21, 'SONY ZV-1F Vlog Camera(4x Digital Zoom)', 'SONY', 46990, 50990, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Effective Pixels: 20.1 MP</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Optical Zoom: Blank | Digital Zoom: 4x</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Auto Focus</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Display Size: 7.5 cm</li></ul>', '1zouwhsc.png', 'oddrijv8.png', 't42dia76.png', 500, 'In Stock', '2023-10-19 19:34:17', NULL),
(29, 13, 20, 'ASUS Vivobook 15 Core i5 11th Gen 1135G7 ', 'ASUS', 43990, 50000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><span style=\"font-size: 18px;\">(8 GB/512 GB SSD/Windows 11 Home) X515EA-EJ522WS Thin and Light Laptop</span><span style=\"font-size: 18px;\">&nbsp;&nbsp;(15.6 Inch, Transparent Silver, 1.80 kg, With MS Office)</span><br></li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">15.6 Inch Full HD 16:9 Aspect ratio, LCD Backlit, 200nits, 45% NTSC Color Gamut, Anti-glare display</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Finger Print Sensor for Faster System Access</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Light Laptop without Optical Disk Drive</li></ul>', '24beo56e.png', 'tbs80otg.png', '1mtj1q8k.png', 0, 'In Stock', '2023-10-19 19:40:05', NULL),
(30, 13, 20, 'HP (2023) Intel Core i3 12th Gen 1215U', 'HP ', 41990, 55990, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">(8 GB/512 GB SSD/Windows 11 Home)&nbsp;</span><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">15s-fy5003TU&nbsp;</span></div><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Thin and Light Laptop</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;</span></div><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">(15.6 Inch, Natural Silver, 1.69 Kg, With MS Office)</span><br></div>', 't0id15ub.png', 'js3h5w5i.png', '1v9q275a.png', 100, 'In Stock', '2023-10-19 19:45:37', NULL),
(31, 10, 18, 'SAMSUNG Galaxy F14 5G (OMG Black, 128 GB)  (6 GB RAM)', 'SAMSUNG', 12490, 20000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6 GB RAM | 128 GB ROM | Expandable Upto 1 TB</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">16.76 cm (6.6 inch) Full HD+ Display</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">50MP + 2MP | 13MP Front Camera</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6000 mAh Battery</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Exynos 1330, Octa Core Processor</li></ul>', 'v2m4f0cl.png', '9wx2fcx6.png', 'h0i4ds97.png', 299, 'In Stock', '2023-10-19 19:49:42', NULL),
(32, 12, 19, 'Mi A series 80 cm (32 inch) HD Ready LED', 'Mi', 10999, 12000, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><font size=\"3\">Smart Google TV 2023 Edition with HD |Dolby Audio | DTS:HD | Vivid Picture Engine</font></span><div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Supported Apps: Netflix|Prime Video|Disney+Hotstar|Youtube</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Operating System: Google TV</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Resolution: HD Ready 1366 x 768 Pixels</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Sound Output: 20 W</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Refresh Rate: 60 Hz</li></ul><div><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><font size=\"3\"><br></font></span></div></div>', 'tx5zdpyt.png', 'or7g7b9s.png', 'mwwdsf26.png', 100, 'In Stock', '2023-10-19 19:57:58', NULL),
(33, 10, 18, 'SAMSUNG Galaxy F14 5G (OMG Black, 128 GB)  (6 GB RAM)', 'SAMSUNG', 12490, 20000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6 GB RAM | 128 GB ROM | Expandable Upto 1 TB</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">16.76 cm (6.6 inch) Full HD+ Display</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">50MP + 2MP | 13MP Front Camera</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">6000 mAh Battery</li><li class=\"_21Ahn-\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Exynos 1330, Octa Core Processor</li></ul>', 'v2m4f0cl.png', '9wx2fcx6.png', 'h0i4ds97.png', 299, 'In Stock', '2023-10-19 20:06:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 10, 'buds', '2023-08-10 16:36:33', NULL),
(17, 9, 'computers', '2023-08-21 14:34:04', '21-08-2023 08:41:26 PM'),
(18, 10, 'Mobiles', '2023-08-21 14:49:13', NULL),
(19, 12, 'Television', '2023-08-21 14:51:47', NULL),
(20, 13, 'Laptops', '2023-08-21 14:53:27', NULL),
(21, 11, 'cameras', '2023-10-19 19:25:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-10 16:17:44', NULL, 1),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-10 18:55:20', NULL, 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-11 19:31:23', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-21 14:15:10', '21-08-2023 07:45:21 PM', 1),
(28, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-10-18 17:49:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Isha Kharat', 'Isha1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2023-10-12 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2023-10-20 17:21:22', ''),
(3, 'Megha', 'megha@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2023-10-20 09:30:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2023-10-20 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
