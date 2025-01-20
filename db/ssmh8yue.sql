-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmh8yue
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmh8yue`
--

/*!40000 DROP DATABASE IF EXISTS `ssmh8yue`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmh8yue` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmh8yue`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuweihu`
--

DROP TABLE IF EXISTS `fangwuweihu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  `yezhuhao` varchar(200) DEFAULT NULL COMMENT '业主号',
  `weihushijian` date DEFAULT NULL COMMENT '维护时间',
  `weihurenyuan` varchar(200) DEFAULT NULL COMMENT '维护人员',
  `weihuneirong` longtext COMMENT '维护内容',
  `weihujieguo` longtext COMMENT '维护结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647913721840 DEFAULT CHARSET=utf8 COMMENT='房屋维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuweihu`
--

LOCK TABLES `fangwuweihu` WRITE;
/*!40000 ALTER TABLE `fangwuweihu` DISABLE KEYS */;
INSERT INTO `fangwuweihu` VALUES (61,'2022-03-22 01:40:05','房屋编号1','房屋名称1','房屋类型1','业主号1','2022-03-22','维护人员1','维护内容1','维护结果1'),(62,'2022-03-22 01:40:05','房屋编号2','房屋名称2','房屋类型2','业主号2','2022-03-22','维护人员2','维护内容2','维护结果2'),(63,'2022-03-22 01:40:05','房屋编号3','房屋名称3','房屋类型3','业主号3','2022-03-22','维护人员3','维护内容3','维护结果3'),(64,'2022-03-22 01:40:05','房屋编号4','房屋名称4','房屋类型4','业主号4','2022-03-22','维护人员4','维护内容4','维护结果4'),(65,'2022-03-22 01:40:05','房屋编号5','房屋名称5','房屋类型5','业主号5','2022-03-22','维护人员5','维护内容5','维护结果5'),(66,'2022-03-22 01:40:05','房屋编号6','房屋名称6','房屋类型6','业主号6','2022-03-22','维护人员6','维护内容6','维护结果6'),(1647913721839,'2022-03-22 01:48:41','1647913769392','A房屋','A类型','111','2022-03-22','A人员','定期维护','定期维护定期维护');
/*!40000 ALTER TABLE `fangwuweihu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuxinxi`
--

DROP TABLE IF EXISTS `fangwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) NOT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `fangwumianji` varchar(200) NOT NULL COMMENT '房屋面积',
  `yezhuhao` varchar(200) DEFAULT NULL COMMENT '业主号',
  `yezhushouji` varchar(200) DEFAULT NULL COMMENT '业主手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647913703136 DEFAULT CHARSET=utf8 COMMENT='房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuxinxi`
--

LOCK TABLES `fangwuxinxi` WRITE;
/*!40000 ALTER TABLE `fangwuxinxi` DISABLE KEYS */;
INSERT INTO `fangwuxinxi` VALUES (31,'2022-03-22 01:40:05','1111111111','房屋名称1','房屋类型1','房屋面积1','业主号1','业主手机1','身份证1','业主姓名1','楼房号1'),(32,'2022-03-22 01:40:05','2222222222','房屋名称2','房屋类型2','房屋面积2','业主号2','业主手机2','身份证2','业主姓名2','楼房号2'),(33,'2022-03-22 01:40:05','3333333333','房屋名称3','房屋类型3','房屋面积3','业主号3','业主手机3','身份证3','业主姓名3','楼房号3'),(34,'2022-03-22 01:40:05','4444444444','房屋名称4','房屋类型4','房屋面积4','业主号4','业主手机4','身份证4','业主姓名4','楼房号4'),(35,'2022-03-22 01:40:05','5555555555','房屋名称5','房屋类型5','房屋面积5','业主号5','业主手机5','身份证5','业主姓名5','楼房号5'),(36,'2022-03-22 01:40:05','6666666666','房屋名称6','房屋类型6','房屋面积6','业主号6','业主手机6','身份证6','业主姓名6','楼房号6'),(1647913703135,'2022-03-22 01:48:22','1647913769392','A房屋','A类型','100','111','13811111111','441455555555555555','业主姓名1','楼房号1');
/*!40000 ALTER TABLE `fangwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','cft6lj3cinl59v7l5lq9d4mlzczmftmo','2022-03-22 01:44:37','2022-03-22 02:46:05'),(2,1647913630798,'111','yezhu','业主','l104oilmb7bh1sarbfnyw6qz8pcdqltj','2022-03-22 01:49:07','2022-03-22 02:50:09'),(3,21,'001','weixiudanwei','维修单位','u7nnycq484l4n7s73en0c71xksjtk7r9','2022-03-22 01:49:25','2022-03-22 02:49:26');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-22 01:40:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiudanwei`
--

DROP TABLE IF EXISTS `weixiudanwei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiudanwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiugonghao` varchar(200) NOT NULL COMMENT '维修工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shifushouji` varchar(200) DEFAULT NULL COMMENT '师傅手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiugonghao` (`weixiugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='维修单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiudanwei`
--

LOCK TABLES `weixiudanwei` WRITE;
/*!40000 ALTER TABLE `weixiudanwei` DISABLE KEYS */;
INSERT INTO `weixiudanwei` VALUES (21,'2022-03-22 01:40:04','001','001','师傅姓名1','男','年龄1','13823888881'),(22,'2022-03-22 01:40:04','维修工号2','123456','师傅姓名2','男','年龄2','13823888882'),(23,'2022-03-22 01:40:05','维修工号3','123456','师傅姓名3','男','年龄3','13823888883'),(24,'2022-03-22 01:40:05','维修工号4','123456','师傅姓名4','男','年龄4','13823888884'),(25,'2022-03-22 01:40:05','维修工号5','123456','师傅姓名5','男','年龄5','13823888885'),(26,'2022-03-22 01:40:05','维修工号6','123456','师傅姓名6','男','年龄6','13823888886');
/*!40000 ALTER TABLE `weixiudanwei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiushenbaodan`
--

DROP TABLE IF EXISTS `weixiushenbaodan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiushenbaodan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiubianhao` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `baoxiushebei` varchar(200) NOT NULL COMMENT '报修设备',
  `wentimiaoshu` longtext COMMENT '问题描述',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `yezhuhao` varchar(200) DEFAULT NULL COMMENT '业主号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `yezhushouji` varchar(200) DEFAULT NULL COMMENT '业主手机',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `wanchengzhuangtai` varchar(200) DEFAULT NULL COMMENT '完成状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baoxiubianhao` (`baoxiubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647913759375 DEFAULT CHARSET=utf8 COMMENT='维修申报单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiushenbaodan`
--

LOCK TABLES `weixiushenbaodan` WRITE;
/*!40000 ALTER TABLE `weixiushenbaodan` DISABLE KEYS */;
INSERT INTO `weixiushenbaodan` VALUES (41,'2022-03-22 01:40:05','1111111111','报修设备1','问题描述1','2022-03-22','业主号1','业主姓名1','13823888881','楼房号1','已完成','是',''),(42,'2022-03-22 01:40:05','2222222222','报修设备2','问题描述2','2022-03-22','业主号2','业主姓名2','13823888882','楼房号2','已完成','是',''),(43,'2022-03-22 01:40:05','3333333333','报修设备3','问题描述3','2022-03-22','业主号3','业主姓名3','13823888883','楼房号3','已完成','是',''),(44,'2022-03-22 01:40:05','4444444444','报修设备4','问题描述4','2022-03-22','业主号4','业主姓名4','13823888884','楼房号4','已完成','是',''),(45,'2022-03-22 01:40:05','5555555555','报修设备5','问题描述5','2022-03-22','业主号5','业主姓名5','13823888885','楼房号5','已完成','是',''),(46,'2022-03-22 01:40:05','6666666666','报修设备6','问题描述6','2022-03-22','业主号6','业主姓名6','13823888886','楼房号6','已完成','是',''),(1647913759374,'2022-03-22 01:49:19','1647913829649','水管水管','水管水管水管水管','2022-03-22','111','业主姓名1','13811111111','楼房号1','已完成','是','收到, 马上过去');
/*!40000 ALTER TABLE `weixiushenbaodan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiuwancheng`
--

DROP TABLE IF EXISTS `weixiuwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiuwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiushebei` varchar(200) DEFAULT NULL COMMENT '报修设备',
  `yezhuhao` varchar(200) DEFAULT NULL COMMENT '业主号',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `baoxiubianhao` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `weixiugonghao` varchar(200) DEFAULT NULL COMMENT '维修工号',
  `shifuxingming` varchar(200) DEFAULT NULL COMMENT '师傅姓名',
  `shifushouji` varchar(200) DEFAULT NULL COMMENT '师傅手机',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  `weixiujieguo` longtext COMMENT '维修结果',
  `huizhidan` varchar(200) DEFAULT NULL COMMENT '回执单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647913798621 DEFAULT CHARSET=utf8 COMMENT='维修完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiuwancheng`
--

LOCK TABLES `weixiuwancheng` WRITE;
/*!40000 ALTER TABLE `weixiuwancheng` DISABLE KEYS */;
INSERT INTO `weixiuwancheng` VALUES (51,'2022-03-22 01:40:05','报修设备1','业主号1','业主姓名1','报修编号1','楼房号1','维修工号1','师傅姓名1','师傅手机1','2022-03-22 09:40:05','维修结果1',''),(52,'2022-03-22 01:40:05','报修设备2','业主号2','业主姓名2','报修编号2','楼房号2','维修工号2','师傅姓名2','师傅手机2','2022-03-22 09:40:05','维修结果2',''),(53,'2022-03-22 01:40:05','报修设备3','业主号3','业主姓名3','报修编号3','楼房号3','维修工号3','师傅姓名3','师傅手机3','2022-03-22 09:40:05','维修结果3',''),(54,'2022-03-22 01:40:05','报修设备4','业主号4','业主姓名4','报修编号4','楼房号4','维修工号4','师傅姓名4','师傅手机4','2022-03-22 09:40:05','维修结果4',''),(55,'2022-03-22 01:40:05','报修设备5','业主号5','业主姓名5','报修编号5','楼房号5','维修工号5','师傅姓名5','师傅手机5','2022-03-22 09:40:05','维修结果5',''),(56,'2022-03-22 01:40:05','报修设备6','业主号6','业主姓名6','报修编号6','楼房号6','维修工号6','师傅姓名6','师傅手机6','2022-03-22 09:40:05','维修结果6',''),(1647913798620,'2022-03-22 01:49:58','水管水管','111','业主姓名1','1647913829649','楼房号1','001','师傅姓名1','13823888881','2022-03-22 09:51:06','完成完成完成完成','upload/1647913793534.docx');
/*!40000 ALTER TABLE `weixiuwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yezhu`
--

DROP TABLE IF EXISTS `yezhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yezhuhao` varchar(200) NOT NULL COMMENT '业主号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yezhuxingming` varchar(200) DEFAULT NULL COMMENT '业主姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yezhushouji` varchar(200) DEFAULT NULL COMMENT '业主手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yezhuhao` (`yezhuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647913631047 DEFAULT CHARSET=utf8 COMMENT='业主';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yezhu`
--

LOCK TABLES `yezhu` WRITE;
/*!40000 ALTER TABLE `yezhu` DISABLE KEYS */;
INSERT INTO `yezhu` VALUES (1647913630600,'2022-03-22 01:47:10','业主号5','123456','业主姓名5','女','13811111111','身份证5','楼房号5','车牌号5'),(1647913630664,'2022-03-22 01:47:10','业主号2','123456','业主姓名2','女','13811111111','身份证2','楼房号2','车牌号2'),(1647913630798,'2022-03-22 01:47:10','111','111','业主姓名1','女','13811111111','441455555555555555','楼房号1','车牌号1'),(1647913631004,'2022-03-22 01:47:10','业主号3','123456','业主姓名3','女','13811111111','身份证3','楼房号3','车牌号3'),(1647913631046,'2022-03-22 01:47:10','业主号4','123456','业主姓名4','女','13811111111','身份证4','楼房号4','车牌号4');
/*!40000 ALTER TABLE `yezhu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 15:50:54
