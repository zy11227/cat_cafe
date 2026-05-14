-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2026 at 08:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_uni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `target_result_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `admin_id`, `action_type`, `description`, `created_at`, `target_result_id`) VALUES
(1, 5, 'RESULT_CREATED', 'Bulk imported Draft result (88%).', '2026-03-05 15:58:34', 0),
(2, 5, 'RESULT_DELETED', 'Deleted exam result record.', '2026-03-05 15:58:58', 0),
(3, 11, 'RESULT_CREATED', 'Bulk imported Draft result (88%).', '2026-03-05 15:59:21', 0),
(4, 5, 'COURSE_CREATED', 'Added new course: IT405', '2026-03-05 16:19:54', NULL),
(5, 5, 'COURSE_DELETED', 'Deleted course: IT405', '2026-03-05 16:21:13', NULL),
(6, 5, 'COURSE_CREATED', 'Added new course: 405', '2026-03-05 16:23:13', NULL),
(7, 5, 'CREATE_USER', 'Created new student account: @456', '2026-03-05 16:23:42', NULL),
(8, 5, 'ARCHIVE_USER', 'Moved User ID: #47 to the archive.', '2026-03-05 16:23:53', NULL),
(9, 5, 'HARD_DELETE', 'Permanently wiped User ID: #47 and their data from the database.', '2026-03-05 16:23:57', NULL),
(10, 5, 'COURSE_DELETED', 'Deleted course: 405', '2026-03-05 16:24:02', NULL),
(11, 5, 'COURSE_CREATED', 'Added new Core course: IT405 under FAFB', '2026-03-05 16:33:13', NULL),
(12, 5, 'COURSE_EDITED', 'Updated details and set status to \'Retired\' for course: IT303', '2026-03-05 16:33:56', NULL),
(13, 5, 'COURSE_EDITED', 'Updated details and set status to \'Active\' for course: IT303', '2026-03-05 16:34:01', NULL),
(14, 5, 'COURSE_DELETED', 'Permanently deleted course: IT405', '2026-03-05 16:34:19', NULL),
(15, 5, 'COURSE_CREATED', 'Added new Core course: IT404 under FCCI', '2026-03-05 17:05:27', NULL),
(16, 5, 'CREATE_USER', 'Created new student account: @456', '2026-03-05 17:08:46', NULL),
(17, 5, 'EDIT_USER', 'Updated profile details for User ID: #46', '2026-03-05 17:08:51', NULL),
(18, 5, 'COURSE_EDITED', 'Updated course details for: IT303.', '2026-03-08 08:52:12', NULL),
(19, 5, 'EDIT_USER', 'Updated profile details for User ID: #45', '2026-03-08 08:52:29', NULL),
(20, 5, 'EDIT_USER', 'Updated profile details for User ID: #44', '2026-03-08 08:52:33', NULL),
(21, 5, 'EDIT_USER', 'Updated profile details for User ID: #44', '2026-03-08 08:53:27', NULL),
(22, 5, 'COURSE_DELETED', 'Deleted course: IT404.', '2026-03-08 08:53:32', NULL),
(23, 5, 'COURSE_CREATED', 'Added new course: IT505 - drawing (3 Credits).', '2026-03-08 09:05:33', NULL),
(24, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-08 09:05:49', NULL),
(25, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-08 09:05:55', NULL),
(26, 5, 'COURSE_EDITED', 'Updated course details and set status to Active for: IT505.', '2026-03-08 09:06:06', NULL),
(27, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-08 09:13:04', NULL),
(28, 5, 'COURSE_EDITED', 'Updated course details and set status to Active for: IT505.', '2026-03-08 09:14:02', NULL),
(29, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-08 09:14:07', NULL),
(30, 5, 'COURSE_EDITED', 'Updated course details and set status to Active for: IT505.', '2026-03-08 09:14:23', NULL),
(31, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-08 14:18:26', NULL),
(32, 5, 'EDIT_USER', 'Updated profile details for User ID: #44', '2026-03-08 20:10:25', NULL),
(33, 5, 'BULK_IMPORT', 'Bulk imported 0 users via CSV. (Skipped 3 duplicates)', '2026-03-08 20:12:59', NULL),
(34, 5, 'EDIT_USER', 'Updated profile details for User ID: #46', '2026-03-08 20:14:48', NULL),
(35, 5, 'EDIT_USER', 'Updated profile details for User ID: #43', '2026-03-08 20:22:36', NULL),
(36, 5, 'EDIT_USER', 'Updated profile details for User ID: #43', '2026-03-08 20:25:05', NULL),
(37, 5, 'RESULT_EDITED', 'Edited result values. New marks: 88%.', '2026-03-08 20:25:24', 0),
(38, 5, 'RESULT_DELETED', 'Deleted exam result record.', '2026-03-08 20:27:23', 0),
(39, 5, 'BULK_DELETE', 'Successfully performed bulk delete on 3 user(s).', '2026-03-08 20:30:08', NULL),
(40, 5, 'BULK_IMPORT', 'Bulk imported 3 users via CSV. (Skipped 0 duplicates)', '2026-03-08 20:31:39', NULL),
(41, 5, 'RESULT_CREATED', 'Bulk imported Draft result (88%).', '2026-03-08 20:34:14', 0),
(42, 5, 'RESULT_CREATED', 'Bulk imported Draft result (65%).', '2026-03-08 20:34:14', 0),
(43, 5, 'RESULT_DELETED', 'Deleted exam result.', '2026-03-08 20:46:34', 0),
(44, 5, 'RESULT_DELETED', 'Deleted exam result.', '2026-03-08 20:46:34', 0),
(45, 5, 'RESULT_CREATED', 'Bulk imported Draft result (88%).', '2026-03-08 20:48:51', 0),
(46, 5, 'RESULT_CREATED', 'Bulk imported Draft result (65%).', '2026-03-08 20:48:51', 0),
(47, 5, 'RESULT_CREATED', 'Created a new draft result (90%).', '2026-03-08 22:28:18', 0),
(48, 5, 'RESULT_PUBLISHED', 'Published exam result.', '2026-03-08 22:28:27', 0),
(49, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT303.', '2026-03-08 22:31:55', NULL),
(50, 5, 'RESULT_DELETED', 'Deleted exam result.', '2026-03-09 04:00:15', 0),
(51, 5, 'RESULT_CREATED', 'Created a new draft result (80%).', '2026-03-09 04:00:25', 0),
(52, 5, 'RESULT_PUBLISHED', 'Published exam result.', '2026-03-09 04:00:34', 0),
(53, 5, 'APPEAL_APPROVED', 'Approved grade appeal.', '2026-03-09 04:03:29', 0),
(54, 5, 'CREATE_USER', 'Created new lecturer account: @lecturer2', '2026-03-09 04:10:10', NULL),
(55, 5, 'COURSE_DELETED', 'Deleted course: IT505.', '2026-03-13 07:03:38', NULL),
(56, 5, 'COURSE_CREATED', 'Added new course: IT505 - drawing (3 Credits).', '2026-03-13 07:03:44', NULL),
(57, 5, 'COURSE_EDITED', 'Updated course details and set status to Inactive for: IT505.', '2026-03-13 07:04:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `log_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `scan_time` datetime DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Present',
  `ip_address` varchar(45) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `mc_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_sessions`
--

CREATE TABLE `attendance_sessions` (
  `session_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `qr_code_string` varchar(255) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_sessions`
--

INSERT INTO `attendance_sessions` (`session_id`, `lecturer_id`, `course_code`, `qr_code_string`, `start_time`, `end_time`) VALUES
(1, 11, 'IT205', 'MANUAL', '2026-03-13 08:00:00', '2026-03-13 09:00:00'),
(2, 11, 'IT101', 'D96B28', '2026-03-13 15:56:55', '2026-03-13 16:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `bus_tracking`
--

CREATE TABLE `bus_tracking` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(50) NOT NULL,
  `route` varchar(255) NOT NULL,
  `current_location` varchar(100) NOT NULL,
  `status` enum('Arriving','On Route','Delayed','Maintenance') DEFAULT 'On Route',
  `eta_minutes` int(11) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_tracking`
--

INSERT INTO `bus_tracking` (`id`, `bus_name`, `route`, `current_location`, `status`, `eta_minutes`, `last_updated`) VALUES
(1, 'Bus 101', 'Main Gate -> Main bus stop -> PV12 bus stop -> Aeon Big bus stop -> PV 15 bus stop -> East Campus bus stop', 'Bus Depot', '', NULL, '2026-04-05 11:22:53'),
(2, 'Bus 102', 'Main Gate -> Main bus stop -> PV12 bus stop -> Aeon Big bus stop -> PV 15 bus stop -> East Campus bus stop', 'Bus Depot', '', NULL, '2026-03-17 21:51:52'),
(3, 'Bus 201', 'LRT Station -> Campus Main Gate', 'Bus Depot', '', NULL, '2026-03-19 22:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit_hours` int(11) DEFAULT 3,
  `status` enum('Active','Retired') NOT NULL DEFAULT 'Active',
  `course_type` enum('Core','Elective','Co-Curriculum') NOT NULL DEFAULT 'Core',
  `faculty_name` varchar(50) NOT NULL DEFAULT 'FOCS'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `credit_hours`, `status`, `course_type`, `faculty_name`) VALUES
('IT101', 'Web Programming', 3, 'Active', 'Core', 'FOCS'),
('IT205', 'Database Systems', 3, 'Active', 'Core', 'FOCS'),
('IT303', 'Software Engineering', 3, '', 'Core', 'FOCS'),
('IT505', 'drawing', 3, '', 'Core', 'FOCS');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `target_audience` varchar(50) DEFAULT 'All',
  `event_date` datetime DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `event_type`, `target_audience`, `event_date`, `image_path`, `created_at`) VALUES
(12, 'LECTURER', 'lecturer', 'Urgent', 'lecturer', '2026-03-13 14:57:00', 'assets/uploads/events/69b3b5599625b.png', '2026-03-13 06:57:29'),
(13, 'student', 'everyone', 'Event', 'all', '2026-03-13 14:59:00', NULL, '2026-03-13 06:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `event_rsvp`
--

CREATE TABLE `event_rsvp` (
  `rsvp_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rsvp_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_rsvp`
--

INSERT INTO `event_rsvp` (`rsvp_id`, `event_id`, `user_id`, `rsvp_date`) VALUES
(3, 13, 46, '2026-03-13 14:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `result_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `grade_point` decimal(3,2) DEFAULT NULL,
  `grade_letter` varchar(2) DEFAULT NULL,
  `status` enum('Draft','Published') NOT NULL DEFAULT 'Draft',
  `appeal_reason` text DEFAULT NULL,
  `appeal_status` enum('None','Pending','Approved','Rejected') DEFAULT 'None',
  `appeal_date` timestamp NULL DEFAULT NULL,
  `appeal_remark` text DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`result_id`, `student_id`, `course_code`, `marks`, `grade`, `semester`, `grade_point`, `grade_letter`, `status`, `appeal_reason`, `appeal_status`, `appeal_date`, `appeal_remark`, `published_at`) VALUES
(0, 49, 'IT101', 88, NULL, 'Year 1 - Sem 1', 4.00, 'A', 'Draft', NULL, 'Approved', NULL, NULL, NULL),
(0, 50, 'IT101', 65, NULL, 'Year 1 - Sem 1', 3.00, 'B', 'Draft', NULL, 'Approved', NULL, NULL, NULL),
(0, 46, 'IT101', 80, NULL, 'Year 1 - Sem 1', 4.00, 'A', 'Published', '123', 'Approved', NULL, NULL, '2026-03-09 04:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `holiday_id` int(11) NOT NULL,
  `holiday_name` varchar(150) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`holiday_id`, `holiday_name`, `start_date`, `end_date`) VALUES
(3, 'Chinese New Year', '2026-02-17', '2026-02-18'),
(4, 'Nuzul Al-Quran', '2026-03-05', '2026-03-05'),
(5, 'Hari Raya Aidilfitri', '2026-03-20', '2026-03-21'),
(6, 'Labour Day', '2026-05-01', '2026-05-01'),
(7, 'Wesak Day', '2026-05-31', '2026-05-31'),
(8, 'Hari Raya Haji', '2026-05-27', '2026-05-27'),
(9, 'Awal Muharram', '2026-06-16', '2026-06-16'),
(10, 'Merdeka Day (National Day)', '2026-08-31', '2026-08-31'),
(11, 'Malaysia Day', '2026-09-16', '2026-09-16'),
(12, 'Deepavali', '2026-11-08', '2026-11-08'),
(13, 'Christmas Day', '2026-12-25', '2026-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `lost_found`
--

CREATE TABLE `lost_found` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `type` enum('Lost','Found') NOT NULL DEFAULT 'Lost',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost_found`
--

INSERT INTO `lost_found` (`item_id`, `user_id`, `item_name`, `description`, `contact_info`, `image_url`, `type`, `created_at`, `status`) VALUES
(0, 6, 'laptop', 'room 101', '010-220349', 'https://placehold.co/400x300/ef4444/ffffff?text=laptop', 'Lost', '2026-02-28 03:23:06', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_reports`
--

CREATE TABLE `maintenance_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reporter_name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `issue_type` varchar(50) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `assigned_tech` varchar(100) DEFAULT 'Unassigned',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_reports`
--

INSERT INTO `maintenance_reports` (`id`, `user_id`, `reporter_name`, `role`, `issue_type`, `location`, `description`, `photo_path`, `status`, `assigned_tech`, `created_at`) VALUES
(6, 46, '123', 'student', 'Plumbing / Leaks', 'toilet block b', 'water pipe is broken', 'uploads/maintenance/maint_69b4db124d510.png', 'Resolved', 'Mr. Ahmad (Electrical)', '2026-03-14 03:50:42'),
(7, 5, 'Admin Tester', 'admin', 'Aircon / HVAC', 'lab 3', ',,', 'uploads/maintenance/maint_69d21e9a3df7e.png', 'Pending', 'Unassigned', '2026-04-05 08:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `room_bookings`
--

CREATE TABLE `room_bookings` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `booking_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(20) DEFAULT 'Approved',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_bookings`
--

INSERT INTO `room_bookings` (`id`, `student_name`, `room_name`, `booking_date`, `start_time`, `end_time`, `status`, `created_at`) VALUES
(10, '123', 'Discussion Room A', '2026-03-15', '13:48:00', '15:47:00', 'Approved', '2026-03-14 03:47:06'),
(11, 'Admin Tester', 'Discussion Room A', '2026-04-06', '08:30:00', '22:30:00', 'Approved', '2026-04-05 08:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semester_id` int(11) NOT NULL,
  `semester_name` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semester_id`, `semester_name`, `is_active`) VALUES
(1, 'Semester 1 - 2026', 1),
(2, 'Semester 2 - 2026', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `semester_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`id`, `student_id`, `course_code`, `semester_id`) VALUES
(36, 48, 'IT101', NULL),
(42, 46, 'IT205', NULL),
(45, 49, 'IT101', NULL),
(46, 50, 'IT101', NULL),
(47, 51, 'IT102', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `timetable_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL DEFAULT 1,
  `course_code` varchar(20) DEFAULT NULL,
  `lecturer_id` int(11) DEFAULT NULL,
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `venue` varchar(50) DEFAULT NULL,
  `class_type` enum('Regular','Replacement') DEFAULT 'Regular',
  `specific_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Approved',
  `reject_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`timetable_id`, `semester_id`, `course_code`, `lecturer_id`, `day_of_week`, `start_time`, `end_time`, `venue`, `class_type`, `specific_date`, `start_date`, `end_date`, `status`, `reject_reason`) VALUES
(6, 1, 'IT101', 11, 'Saturday', '08:00:00', '09:00:00', 'lab1', 'Replacement', '2026-02-28', NULL, NULL, 'Rejected', 'the venue is clashed'),
(16, 1, 'IT101', 11, 'Friday', '15:20:00', '16:00:00', 'lab1', 'Regular', NULL, '2026-03-13', '2026-03-14', 'Approved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `account_status` enum('Active','Suspended') NOT NULL DEFAULT 'Active',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `current_semester` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `username`, `password`, `role`, `account_status`, `is_deleted`, `email`, `created_at`, `current_semester`) VALUES
(5, 'Admin Tester', 'admin', '123', 'admin', 'Active', 0, 'admin@smartuni.edu.my', '2026-02-21 11:46:21', NULL),
(11, 'lecturer', 'lecturer', '123', 'lecturer', 'Active', 0, 'lecturer@gmail.com', '2026-02-28 06:05:35', NULL),
(46, '123', '123', '123', 'student', 'Active', 0, '123@gmail.com', '2026-03-03 16:58:43', 'Year 1 - Sem 1'),
(48, '456', '456', '456', 'student', 'Active', 0, '456@gmail.com', '2026-03-05 17:08:46', NULL),
(49, 'Ahmad Faizal', 'ahmadf', 'smartuni123', 'student', 'Active', 0, 'ahmad@student.edu.my', '2026-03-08 20:31:39', 'Year 1 - Sem 1'),
(50, 'Nurul Ain', 'nurula', 'smartuni123', 'student', 'Active', 0, 'nurul@student.edu.my', '2026-03-08 20:31:39', 'Year 1 - Sem 1'),
(51, 'Jason Tan', 'jasont', 'smartuni123', 'student', 'Active', 0, 'jason@student.edu.my', '2026-03-08 20:31:39', 'Year 2 - Sem 1'),
(52, 'lecturer2', 'lecturer2', '123', 'lecturer', 'Active', 0, 'lecturer2@gmail.com', '2026-03-09 04:10:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `attendance_sessions`
--
ALTER TABLE `attendance_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `bus_tracking`
--
ALTER TABLE `bus_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_rsvp`
--
ALTER TABLE `event_rsvp`
  ADD PRIMARY KEY (`rsvp_id`),
  ADD UNIQUE KEY `unique_rsvp` (`event_id`,`user_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `maintenance_reports`
--
ALTER TABLE `maintenance_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`timetable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_sessions`
--
ALTER TABLE `attendance_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_tracking`
--
ALTER TABLE `bus_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event_rsvp`
--
ALTER TABLE `event_rsvp`
  MODIFY `rsvp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `maintenance_reports`
--
ALTER TABLE `maintenance_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
