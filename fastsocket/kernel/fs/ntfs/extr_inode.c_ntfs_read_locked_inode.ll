; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_54__*, i32*, i32*, i32, i8*, i8*, i8*, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_54__ = type { i32* }
%struct.TYPE_57__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_43__ = type { i32, i32, i32, %struct.TYPE_56__, i32*, i8*, i32, i64, %struct.TYPE_49__, i64 }
%struct.TYPE_56__ = type { %struct.TYPE_55__, %struct.TYPE_50__ }
%struct.TYPE_55__ = type { i32, i32, i32, i8* }
%struct.TYPE_50__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_49__ = type { %struct.inode* }
%struct.TYPE_47__ = type { i32, i32, %struct.TYPE_53__, i32, i32, i64 }
%struct.TYPE_53__ = type { %struct.TYPE_52__, %struct.TYPE_51__ }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_47__*, i64 }
%struct.TYPE_46__ = type { i64, i64, %struct.TYPE_48__, i32 }
%struct.TYPE_48__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@FILE_MFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MFT_RECORD_IN_USE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Inode is not in use!\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Inode is an extent inode!\00", align 1
@S_IRWXUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@MFT_RECORD_IS_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@AT_STANDARD_INFORMATION = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"$STANDARD_INFORMATION attribute is missing.\00", align 1
@AT_ATTRIBUTE_LIST = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to lookup attribute list attribute.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Attribute list found in inode 0x%lx.\00", align 1
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Attribute list attribute is compressed.\00", align 1
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"Non-resident attribute list attribute is encrypted/sparse.\00", align 1
@.str.8 = private unnamed_addr constant [237 x i8] c"Resident attribute list attribute in inode 0x%lx is marked encrypted/sparse which is not true.  However, Windows allows this and chkdsk does not detect or correct it so we will just ignore the invalid flags and pretend they are not set.\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Not enough memory to allocate buffer for attribute list.\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Attribute list has non zero lowest_vcn.\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Mapping pairs decompression failed.\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to load attribute list attribute.\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Corrupt attribute list in inode.\00", align 1
@AT_INDEX_ROOT = common dso_local global i8* null, align 8
@I30 = common dso_local global i32* null, align 8
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is missing.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", align 1
@.str.16 = private unnamed_addr constant [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Found encrypted and compressed attribute.\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Directory index is corrupt.\00", align 1
@AT_FILE_NAME = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"Indexed attribute is not $FILE_NAME.\00", align 1
@COLLATION_FILE_NAME = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [49 x i8] c"Index collation rule is not COLLATION_FILE_NAME.\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Index block size (%u) is not a power of two.\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [72 x i8] c"Index block size (%u) > PAGE_CACHE_SIZE (%ld) is not supported.  Sorry.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", align 1
@AT_INDEX_ALLOCATION = common dso_local global i8* null, align 8
@LARGE_INDEX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", align 1
@.str.28 = private unnamed_addr constant [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", align 1
@AT_BITMAP = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", align 1
@ntfs_dir_inode_ops = common dso_local global i32 0, align 4
@ntfs_dir_ops = common dso_local global i32 0, align 4
@AT_DATA = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [34 x i8] c"Failed to lookup $DATA attribute.\00", align 1
@FILE_Secure = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [28 x i8] c"$DATA attribute is missing.\00", align 1
@.str.38 = private unnamed_addr constant [83 x i8] c"Found compressed data but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@ATTR_IS_COMPRESSED = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [50 x i8] c"Found unknown compression method or corrupt file.\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Found encrypted and compressed data.\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"First extent of $DATA attribute has non zero lowest_vcn.\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Resident data attribute is corrupt (size exceeds allocation).\00", align 1
@ntfs_file_inode_ops = common dso_local global i32 0, align 4
@ntfs_file_ops = common dso_local global i32 0, align 4
@ntfs_mst_aops = common dso_local global i32 0, align 4
@ntfs_aops = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [77 x i8] c"Failed with error code %i.  Marking corrupt inode 0x%lx as bad.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ntfs_read_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.TYPE_57__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.TYPE_47__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_46__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_57__* @NTFS_SB(i32 %19)
  store %struct.TYPE_57__* %20, %struct.TYPE_57__** %4, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 19
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 18
  store i32 %34, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 6
  store i32 0, i32* %38, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FILE_MFT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i32 @ntfs_init_big_inode(%struct.inode* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call %struct.TYPE_43__* @NTFS_I(%struct.inode* %48)
  store %struct.TYPE_43__* %49, %struct.TYPE_43__** %5, align 8
  %50 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %51 = call %struct.inode* @map_mft_record(%struct.TYPE_43__* %50)
  store %struct.inode* %51, %struct.inode** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i64 @IS_ERR(%struct.inode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @PTR_ERR(%struct.inode* %56)
  store i32 %57, i32* %11, align 4
  br label %1396

58:                                               ; preds = %47
  %59 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call %struct.TYPE_44__* @ntfs_attr_get_search_ctx(%struct.TYPE_43__* %59, %struct.inode* %60)
  store %struct.TYPE_44__* %61, %struct.TYPE_44__** %10, align 8
  %62 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %63 = icmp ne %struct.TYPE_44__* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %1377

67:                                               ; preds = %58
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MFT_RECORD_IN_USE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %67
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @ntfs_error(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %1377

79:                                               ; preds = %67
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 17
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.inode*, %struct.inode** %3, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @ntfs_error(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %1377

89:                                               ; preds = %79
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 15
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le16_to_cpu(i32 %92)
  %94 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %94, i32 0, i32 9
  store i64 %93, i64* %95, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 16
  store i64 %93, i64* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 14
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @le16_to_cpu(i32 %100)
  %102 = trunc i64 %101 to i32
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @S_IRWXUGO, align 4
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = call i64 @IS_RDONLY(%struct.inode* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %89
  %114 = load i32, i32* @S_IWUGO, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.inode*, %struct.inode** %3, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %113, %89
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MFT_RECORD_IS_DIRECTORY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %120
  %128 = load i32, i32* @S_IFDIR, align 4
  %129 = load %struct.inode*, %struct.inode** %3, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %127
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 3
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %127
  br label %163

149:                                              ; preds = %120
  %150 = load i32, i32* @S_IFREG, align 4
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.inode*, %struct.inode** %3, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %149, %148
  %164 = load i8*, i8** @AT_STANDARD_INFORMATION, align 8
  %165 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %166 = call i32 @ntfs_attr_lookup(i8* %164, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ENOENT, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.inode*, %struct.inode** %3, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @ntfs_error(i32 %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %180

180:                                              ; preds = %175, %170
  br label %1377

181:                                              ; preds = %163
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_47__*, %struct.TYPE_47__** %183, align 8
  store %struct.TYPE_47__* %184, %struct.TYPE_47__** %8, align 8
  %185 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %186 = bitcast %struct.TYPE_47__* %185 to i32*
  %187 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @le16_to_cpu(i32 %191)
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  %194 = bitcast i32* %193 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %194, %struct.TYPE_45__** %9, align 8
  %195 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @ntfs2utc(i32 %197)
  %199 = load %struct.inode*, %struct.inode** %3, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 13
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @ntfs2utc(i32 %203)
  %205 = load %struct.inode*, %struct.inode** %3, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 12
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @ntfs2utc(i32 %209)
  %211 = load %struct.inode*, %struct.inode** %3, align 8
  %212 = getelementptr inbounds %struct.inode, %struct.inode* %211, i32 0, i32 11
  store i8* %210, i8** %212, align 8
  %213 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %214 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %213)
  %215 = load i8*, i8** @AT_ATTRIBUTE_LIST, align 8
  %216 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %217 = call i32 @ntfs_attr_lookup(i8* %215, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %181
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @ENOENT, align 4
  %223 = sub nsw i32 0, %222
  %224 = icmp ne i32 %221, %223
  %225 = zext i1 %224 to i32
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %220
  %229 = load %struct.inode*, %struct.inode** %3, align 8
  %230 = getelementptr inbounds %struct.inode, %struct.inode* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @ntfs_error(i32 %231, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %1377

233:                                              ; preds = %220
  br label %438

234:                                              ; preds = %181
  %235 = load %struct.inode*, %struct.inode** %3, align 8
  %236 = getelementptr inbounds %struct.inode, %struct.inode* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @FILE_MFT, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %439

241:                                              ; preds = %234
  %242 = load %struct.inode*, %struct.inode** %3, align 8
  %243 = getelementptr inbounds %struct.inode, %struct.inode* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %244)
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %247 = call i32 @NInoSetAttrList(%struct.TYPE_43__* %246)
  %248 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_47__*, %struct.TYPE_47__** %249, align 8
  store %struct.TYPE_47__* %250, %struct.TYPE_47__** %8, align 8
  %251 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %241
  %258 = load %struct.inode*, %struct.inode** %3, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i32, i8*, ...) @ntfs_error(i32 %260, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %1377

262:                                              ; preds = %241
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %262
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %269, %262
  %277 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.inode*, %struct.inode** %3, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 10
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i32, i8*, ...) @ntfs_error(i32 %284, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  br label %1377

286:                                              ; preds = %276
  %287 = load %struct.inode*, %struct.inode** %3, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 10
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.inode*, %struct.inode** %3, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @ntfs_warning(i32 %289, i8* getelementptr inbounds ([237 x i8], [237 x i8]* @.str.8, i64 0, i64 0), i64 %292)
  br label %294

294:                                              ; preds = %286, %269
  %295 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %296 = call i64 @ntfs_attr_size(%struct.TYPE_47__* %295)
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %297, i32 0, i32 7
  store i64 %296, i64* %298, align 8
  %299 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %299, i32 0, i32 7
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @ntfs_malloc_nofs(i64 %301)
  %303 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %303, i32 0, i32 6
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %294
  %310 = load %struct.inode*, %struct.inode** %3, align 8
  %311 = getelementptr inbounds %struct.inode, %struct.inode* %310, i32 0, i32 10
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i32, i8*, ...) @ntfs_error(i32 %312, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %11, align 4
  br label %1377

316:                                              ; preds = %294
  %317 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %385

321:                                              ; preds = %316
  %322 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %323 = call i32 @NInoSetAttrListNonResident(%struct.TYPE_43__* %322)
  %324 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %321
  %331 = load %struct.inode*, %struct.inode** %3, align 8
  %332 = getelementptr inbounds %struct.inode, %struct.inode* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 8
  %334 = call i32 (i32, i8*, ...) @ntfs_error(i32 %333, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %1377

335:                                              ; preds = %321
  %336 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %337 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %338 = call %struct.inode* @ntfs_mapping_pairs_decompress(%struct.TYPE_57__* %336, %struct.TYPE_47__* %337, i32* null)
  %339 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %339, i32 0, i32 8
  %341 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %340, i32 0, i32 0
  store %struct.inode* %338, %struct.inode** %341, align 8
  %342 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %342, i32 0, i32 8
  %344 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %343, i32 0, i32 0
  %345 = load %struct.inode*, %struct.inode** %344, align 8
  %346 = call i64 @IS_ERR(%struct.inode* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %361

348:                                              ; preds = %335
  %349 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %350, i32 0, i32 0
  %352 = load %struct.inode*, %struct.inode** %351, align 8
  %353 = call i32 @PTR_ERR(%struct.inode* %352)
  store i32 %353, i32* %11, align 4
  %354 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %354, i32 0, i32 8
  %356 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %355, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %356, align 8
  %357 = load %struct.inode*, %struct.inode** %3, align 8
  %358 = getelementptr inbounds %struct.inode, %struct.inode* %357, i32 0, i32 10
  %359 = load i32, i32* %358, align 8
  %360 = call i32 (i32, i8*, ...) @ntfs_error(i32 %359, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %1377

361:                                              ; preds = %335
  %362 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %363 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %363, i32 0, i32 8
  %365 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %368, i32 0, i32 7
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = call i8* @sle64_to_cpu(i32 %375)
  %377 = call i32 @load_attribute_list(%struct.TYPE_57__* %362, %struct.TYPE_49__* %364, i32 %367, i64 %370, i8* %376)
  store i32 %377, i32* %11, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %361
  %380 = load %struct.inode*, %struct.inode** %3, align 8
  %381 = getelementptr inbounds %struct.inode, %struct.inode* %380, i32 0, i32 10
  %382 = load i32, i32* %381, align 8
  %383 = call i32 (i32, i8*, ...) @ntfs_error(i32 %382, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %1377

384:                                              ; preds = %361
  br label %437

385:                                              ; preds = %316
  %386 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %387 = bitcast %struct.TYPE_47__* %386 to i32*
  %388 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i64 @le16_to_cpu(i32 %392)
  %394 = getelementptr inbounds i32, i32* %387, i64 %393
  %395 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = call i64 @le32_to_cpu(i32 %399)
  %401 = getelementptr inbounds i32, i32* %394, i64 %400
  %402 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = inttoptr i64 %404 to i32*
  %406 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %405, i64 %409
  %411 = icmp ugt i32* %401, %410
  br i1 %411, label %412, label %417

412:                                              ; preds = %385
  %413 = load %struct.inode*, %struct.inode** %3, align 8
  %414 = getelementptr inbounds %struct.inode, %struct.inode* %413, i32 0, i32 10
  %415 = load i32, i32* %414, align 8
  %416 = call i32 (i32, i8*, ...) @ntfs_error(i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %1377

417:                                              ; preds = %385
  %418 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %422 = bitcast %struct.TYPE_47__* %421 to i32*
  %423 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i64 @le16_to_cpu(i32 %427)
  %429 = getelementptr inbounds i32, i32* %422, i64 %428
  %430 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = call i64 @le32_to_cpu(i32 %434)
  %436 = call i32 @memcpy(i32 %420, i32* %429, i64 %435)
  br label %437

437:                                              ; preds = %417, %384
  br label %438

438:                                              ; preds = %437, %233
  br label %439

439:                                              ; preds = %438, %240
  %440 = load %struct.inode*, %struct.inode** %3, align 8
  %441 = getelementptr inbounds %struct.inode, %struct.inode* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 4
  %443 = call i64 @S_ISDIR(i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %1006

445:                                              ; preds = %439
  %446 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %447 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %446)
  %448 = load i8*, i8** @AT_INDEX_ROOT, align 8
  %449 = load i32*, i32** @I30, align 8
  %450 = load i32, i32* @CASE_SENSITIVE, align 4
  %451 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %452 = call i32 @ntfs_attr_lookup(i8* %448, i32* %449, i32 4, i32 %450, i32 0, i32* null, i32 0, %struct.TYPE_44__* %451)
  store i32 %452, i32* %11, align 4
  %453 = load i32, i32* %11, align 4
  %454 = call i64 @unlikely(i32 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %467

456:                                              ; preds = %445
  %457 = load i32, i32* %11, align 4
  %458 = load i32, i32* @ENOENT, align 4
  %459 = sub nsw i32 0, %458
  %460 = icmp eq i32 %457, %459
  br i1 %460, label %461, label %466

461:                                              ; preds = %456
  %462 = load %struct.inode*, %struct.inode** %3, align 8
  %463 = getelementptr inbounds %struct.inode, %struct.inode* %462, i32 0, i32 10
  %464 = load i32, i32* %463, align 8
  %465 = call i32 (i32, i8*, ...) @ntfs_error(i32 %464, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %466

466:                                              ; preds = %461, %456
  br label %1377

467:                                              ; preds = %445
  %468 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %469 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_47__*, %struct.TYPE_47__** %469, align 8
  store %struct.TYPE_47__* %470, %struct.TYPE_47__** %8, align 8
  %471 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i64 @unlikely(i32 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %467
  %477 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 4
  %480 = call i32 (i32, i8*, ...) @ntfs_error(i32 %479, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %1377

481:                                              ; preds = %467
  %482 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %482, i32 0, i32 5
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %498

486:                                              ; preds = %481
  %487 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %488 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 4
  %490 = call i64 @le16_to_cpu(i32 %489)
  %491 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %492 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = call i64 @le16_to_cpu(i32 %495)
  %497 = icmp sge i64 %490, %496
  br label %498

498:                                              ; preds = %486, %481
  %499 = phi i1 [ false, %481 ], [ %497, %486 ]
  %500 = zext i1 %499 to i32
  %501 = call i64 @unlikely(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %498
  %504 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %505 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 4
  %507 = call i32 (i32, i8*, ...) @ntfs_error(i32 %506, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0))
  br label %1377

508:                                              ; preds = %498
  %509 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %510 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %508
  %516 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %517 = call i32 @NInoSetCompressed(%struct.TYPE_43__* %516)
  br label %518

518:                                              ; preds = %515, %508
  %519 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %540

525:                                              ; preds = %518
  %526 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %537

532:                                              ; preds = %525
  %533 = load %struct.inode*, %struct.inode** %3, align 8
  %534 = getelementptr inbounds %struct.inode, %struct.inode* %533, i32 0, i32 10
  %535 = load i32, i32* %534, align 8
  %536 = call i32 (i32, i8*, ...) @ntfs_error(i32 %535, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %1377

537:                                              ; preds = %525
  %538 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %539 = call i32 @NInoSetEncrypted(%struct.TYPE_43__* %538)
  br label %540

540:                                              ; preds = %537, %518
  %541 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %542 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %545 = and i32 %543, %544
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %540
  %548 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %549 = call i32 @NInoSetSparse(%struct.TYPE_43__* %548)
  br label %550

550:                                              ; preds = %547, %540
  %551 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %552 = bitcast %struct.TYPE_47__* %551 to i32*
  %553 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %554 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %553, i32 0, i32 2
  %555 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = call i64 @le16_to_cpu(i32 %557)
  %559 = getelementptr inbounds i32, i32* %552, i64 %558
  %560 = bitcast i32* %559 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %560, %struct.TYPE_46__** %14, align 8
  %561 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %562 = bitcast %struct.TYPE_46__* %561 to i32*
  %563 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %564 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = call i64 @le32_to_cpu(i32 %567)
  %569 = getelementptr inbounds i32, i32* %562, i64 %568
  store i32* %569, i32** %15, align 8
  %570 = load i32*, i32** %15, align 8
  %571 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %572 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %571, i32 0, i32 1
  %573 = load i64, i64* %572, align 8
  %574 = inttoptr i64 %573 to i32*
  %575 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %574, i64 %578
  %580 = icmp ugt i32* %570, %579
  br i1 %580, label %581, label %586

581:                                              ; preds = %550
  %582 = load %struct.inode*, %struct.inode** %3, align 8
  %583 = getelementptr inbounds %struct.inode, %struct.inode* %582, i32 0, i32 10
  %584 = load i32, i32* %583, align 8
  %585 = call i32 (i32, i8*, ...) @ntfs_error(i32 %584, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %1377

586:                                              ; preds = %550
  %587 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %588 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %587, i32 0, i32 2
  %589 = bitcast %struct.TYPE_48__* %588 to i32*
  %590 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %591 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = call i64 @le32_to_cpu(i32 %593)
  %595 = getelementptr inbounds i32, i32* %589, i64 %594
  store i32* %595, i32** %16, align 8
  %596 = load i32*, i32** %16, align 8
  %597 = load i32*, i32** %15, align 8
  %598 = icmp ugt i32* %596, %597
  br i1 %598, label %599, label %604

599:                                              ; preds = %586
  %600 = load %struct.inode*, %struct.inode** %3, align 8
  %601 = getelementptr inbounds %struct.inode, %struct.inode* %600, i32 0, i32 10
  %602 = load i32, i32* %601, align 8
  %603 = call i32 (i32, i8*, ...) @ntfs_error(i32 %602, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %1377

604:                                              ; preds = %586
  %605 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %606 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %605, i32 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = load i64, i64* @AT_FILE_NAME, align 8
  %609 = icmp ne i64 %607, %608
  br i1 %609, label %610, label %615

610:                                              ; preds = %604
  %611 = load %struct.inode*, %struct.inode** %3, align 8
  %612 = getelementptr inbounds %struct.inode, %struct.inode* %611, i32 0, i32 10
  %613 = load i32, i32* %612, align 8
  %614 = call i32 (i32, i8*, ...) @ntfs_error(i32 %613, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  br label %1377

615:                                              ; preds = %604
  %616 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %617 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %616, i32 0, i32 1
  %618 = load i64, i64* %617, align 8
  %619 = load i64, i64* @COLLATION_FILE_NAME, align 8
  %620 = icmp ne i64 %618, %619
  br i1 %620, label %621, label %626

621:                                              ; preds = %615
  %622 = load %struct.inode*, %struct.inode** %3, align 8
  %623 = getelementptr inbounds %struct.inode, %struct.inode* %622, i32 0, i32 10
  %624 = load i32, i32* %623, align 8
  %625 = call i32 (i32, i8*, ...) @ntfs_error(i32 %624, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  br label %1377

626:                                              ; preds = %615
  %627 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %628 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %627, i32 0, i32 1
  %629 = load i64, i64* %628, align 8
  %630 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %631 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %630, i32 0, i32 3
  %632 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %632, i32 0, i32 0
  store i64 %629, i64* %633, align 8
  %634 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %635 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %634, i32 0, i32 3
  %636 = load i32, i32* %635, align 8
  %637 = call i64 @le32_to_cpu(i32 %636)
  %638 = trunc i64 %637 to i32
  %639 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %640 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %639, i32 0, i32 3
  %641 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %641, i32 0, i32 1
  store i32 %638, i32* %642, align 8
  %643 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %644 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %643, i32 0, i32 3
  %645 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %644, i32 0, i32 1
  %646 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %645, i32 0, i32 1
  %647 = load i32, i32* %646, align 8
  %648 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %648, i32 0, i32 3
  %650 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 8
  %653 = sub nsw i32 %652, 1
  %654 = and i32 %647, %653
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %666

656:                                              ; preds = %626
  %657 = load %struct.inode*, %struct.inode** %3, align 8
  %658 = getelementptr inbounds %struct.inode, %struct.inode* %657, i32 0, i32 10
  %659 = load i32, i32* %658, align 8
  %660 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %661 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 8
  %665 = call i32 (i32, i8*, ...) @ntfs_error(i32 %659, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %664)
  br label %1377

666:                                              ; preds = %626
  %667 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %668 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %667, i32 0, i32 3
  %669 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 8
  %672 = sext i32 %671 to i64
  %673 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %674 = icmp sgt i64 %672, %673
  br i1 %674, label %675, label %688

675:                                              ; preds = %666
  %676 = load %struct.inode*, %struct.inode** %3, align 8
  %677 = getelementptr inbounds %struct.inode, %struct.inode* %676, i32 0, i32 10
  %678 = load i32, i32* %677, align 8
  %679 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %679, i32 0, i32 3
  %681 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %680, i32 0, i32 1
  %682 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 8
  %684 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %685 = call i32 (i32, i8*, ...) @ntfs_error(i32 %678, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.23, i64 0, i64 0), i32 %683, i64 %684)
  %686 = load i32, i32* @EOPNOTSUPP, align 4
  %687 = sub nsw i32 0, %686
  store i32 %687, i32* %11, align 4
  br label %1377

688:                                              ; preds = %666
  %689 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %690 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %689, i32 0, i32 3
  %691 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 8
  %694 = sext i32 %693 to i64
  %695 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %696 = icmp slt i64 %694, %695
  br i1 %696, label %697, label %710

697:                                              ; preds = %688
  %698 = load %struct.inode*, %struct.inode** %3, align 8
  %699 = getelementptr inbounds %struct.inode, %struct.inode* %698, i32 0, i32 10
  %700 = load i32, i32* %699, align 8
  %701 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %701, i32 0, i32 3
  %703 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %703, i32 0, i32 1
  %705 = load i32, i32* %704, align 8
  %706 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %707 = call i32 (i32, i8*, ...) @ntfs_error(i32 %700, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 %705, i64 %706)
  %708 = load i32, i32* @EOPNOTSUPP, align 4
  %709 = sub nsw i32 0, %708
  store i32 %709, i32* %11, align 4
  br label %1377

710:                                              ; preds = %688
  %711 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %712 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 8
  %716 = call i8* @ffs(i32 %715)
  %717 = getelementptr i8, i8* %716, i64 -1
  %718 = ptrtoint i8* %717 to i32
  %719 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %720 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %719, i32 0, i32 3
  %721 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %721, i32 0, i32 2
  store i32 %718, i32* %722, align 4
  %723 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %724 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %727 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %726, i32 0, i32 3
  %728 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 8
  %731 = icmp sle i32 %725, %730
  br i1 %731, label %732, label %747

732:                                              ; preds = %710
  %733 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %734 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %733, i32 0, i32 1
  %735 = load i32, i32* %734, align 4
  %736 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %737 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %736, i32 0, i32 3
  %738 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %737, i32 0, i32 1
  %739 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %738, i32 0, i32 3
  store i32 %735, i32* %739, align 8
  %740 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %741 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %740, i32 0, i32 2
  %742 = load i32, i32* %741, align 4
  %743 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %744 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %743, i32 0, i32 3
  %745 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %745, i32 0, i32 4
  store i32 %742, i32* %746, align 4
  br label %762

747:                                              ; preds = %710
  %748 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %749 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %748, i32 0, i32 3
  %750 = load i32, i32* %749, align 4
  %751 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %752 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %751, i32 0, i32 3
  %753 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %753, i32 0, i32 3
  store i32 %750, i32* %754, align 8
  %755 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %756 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %755, i32 0, i32 4
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %759 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %758, i32 0, i32 3
  %760 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %759, i32 0, i32 1
  %761 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %760, i32 0, i32 4
  store i32 %757, i32* %761, align 4
  br label %762

762:                                              ; preds = %747, %732
  %763 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %764 = call i32 @NInoSetMstProtected(%struct.TYPE_43__* %763)
  %765 = load i8*, i8** @AT_INDEX_ALLOCATION, align 8
  %766 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %767 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %766, i32 0, i32 5
  store i8* %765, i8** %767, align 8
  %768 = load i32*, i32** @I30, align 8
  %769 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %770 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %769, i32 0, i32 4
  store i32* %768, i32** %770, align 8
  %771 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %772 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %771, i32 0, i32 0
  store i32 4, i32* %772, align 8
  %773 = load %struct.TYPE_46__*, %struct.TYPE_46__** %14, align 8
  %774 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %773, i32 0, i32 2
  %775 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %774, i32 0, i32 0
  %776 = load i32, i32* %775, align 8
  %777 = load i32, i32* @LARGE_INDEX, align 4
  %778 = and i32 %776, %777
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %791, label %780

780:                                              ; preds = %762
  %781 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %782 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %781, i32 0, i32 2
  store i32 0, i32* %782, align 8
  %783 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %784 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %783, i32 0, i32 1
  store i32 0, i32* %784, align 4
  %785 = load %struct.inode*, %struct.inode** %3, align 8
  %786 = getelementptr inbounds %struct.inode, %struct.inode* %785, i32 0, i32 4
  store i32 0, i32* %786, align 4
  %787 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %788 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %787)
  %789 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %790 = call i32 @unmap_mft_record(%struct.TYPE_43__* %789)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  br label %1001

791:                                              ; preds = %762
  %792 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %793 = call i32 @NInoSetIndexAllocPresent(%struct.TYPE_43__* %792)
  %794 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %795 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %794)
  %796 = load i8*, i8** @AT_INDEX_ALLOCATION, align 8
  %797 = load i32*, i32** @I30, align 8
  %798 = load i32, i32* @CASE_SENSITIVE, align 4
  %799 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %800 = call i32 @ntfs_attr_lookup(i8* %796, i32* %797, i32 4, i32 %798, i32 0, i32* null, i32 0, %struct.TYPE_44__* %799)
  store i32 %800, i32* %11, align 4
  %801 = load i32, i32* %11, align 4
  %802 = call i64 @unlikely(i32 %801)
  %803 = icmp ne i64 %802, 0
  br i1 %803, label %804, label %820

804:                                              ; preds = %791
  %805 = load i32, i32* %11, align 4
  %806 = load i32, i32* @ENOENT, align 4
  %807 = sub nsw i32 0, %806
  %808 = icmp eq i32 %805, %807
  br i1 %808, label %809, label %814

809:                                              ; preds = %804
  %810 = load %struct.inode*, %struct.inode** %3, align 8
  %811 = getelementptr inbounds %struct.inode, %struct.inode* %810, i32 0, i32 10
  %812 = load i32, i32* %811, align 8
  %813 = call i32 (i32, i8*, ...) @ntfs_error(i32 %812, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i64 0, i64 0))
  br label %819

814:                                              ; preds = %804
  %815 = load %struct.inode*, %struct.inode** %3, align 8
  %816 = getelementptr inbounds %struct.inode, %struct.inode* %815, i32 0, i32 10
  %817 = load i32, i32* %816, align 8
  %818 = call i32 (i32, i8*, ...) @ntfs_error(i32 %817, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0))
  br label %819

819:                                              ; preds = %814, %809
  br label %1377

820:                                              ; preds = %791
  %821 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %822 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %821, i32 0, i32 0
  %823 = load %struct.TYPE_47__*, %struct.TYPE_47__** %822, align 8
  store %struct.TYPE_47__* %823, %struct.TYPE_47__** %8, align 8
  %824 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %825 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %824, i32 0, i32 1
  %826 = load i32, i32* %825, align 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %833, label %828

828:                                              ; preds = %820
  %829 = load %struct.inode*, %struct.inode** %3, align 8
  %830 = getelementptr inbounds %struct.inode, %struct.inode* %829, i32 0, i32 10
  %831 = load i32, i32* %830, align 8
  %832 = call i32 (i32, i8*, ...) @ntfs_error(i32 %831, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  br label %1377

833:                                              ; preds = %820
  %834 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %835 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %834, i32 0, i32 5
  %836 = load i64, i64* %835, align 8
  %837 = icmp ne i64 %836, 0
  br i1 %837, label %838, label %850

838:                                              ; preds = %833
  %839 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %840 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %839, i32 0, i32 4
  %841 = load i32, i32* %840, align 4
  %842 = call i64 @le16_to_cpu(i32 %841)
  %843 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %844 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %843, i32 0, i32 2
  %845 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %845, i32 0, i32 6
  %847 = load i32, i32* %846, align 4
  %848 = call i64 @le16_to_cpu(i32 %847)
  %849 = icmp sge i64 %842, %848
  br label %850

850:                                              ; preds = %838, %833
  %851 = phi i1 [ false, %833 ], [ %849, %838 ]
  %852 = zext i1 %851 to i32
  %853 = call i64 @unlikely(i32 %852)
  %854 = icmp ne i64 %853, 0
  br i1 %854, label %855, label %860

855:                                              ; preds = %850
  %856 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %857 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %856, i32 0, i32 5
  %858 = load i32, i32* %857, align 4
  %859 = call i32 (i32, i8*, ...) @ntfs_error(i32 %858, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.28, i64 0, i64 0))
  br label %1377

860:                                              ; preds = %850
  %861 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %862 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 8
  %864 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %865 = and i32 %863, %864
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %872

867:                                              ; preds = %860
  %868 = load %struct.inode*, %struct.inode** %3, align 8
  %869 = getelementptr inbounds %struct.inode, %struct.inode* %868, i32 0, i32 10
  %870 = load i32, i32* %869, align 8
  %871 = call i32 (i32, i8*, ...) @ntfs_error(i32 %870, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  br label %1377

872:                                              ; preds = %860
  %873 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %874 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %873, i32 0, i32 0
  %875 = load i32, i32* %874, align 8
  %876 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %877 = and i32 %875, %876
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %884

879:                                              ; preds = %872
  %880 = load %struct.inode*, %struct.inode** %3, align 8
  %881 = getelementptr inbounds %struct.inode, %struct.inode* %880, i32 0, i32 10
  %882 = load i32, i32* %881, align 8
  %883 = call i32 (i32, i8*, ...) @ntfs_error(i32 %882, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  br label %1377

884:                                              ; preds = %872
  %885 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %886 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %889 = and i32 %887, %888
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %891, label %896

891:                                              ; preds = %884
  %892 = load %struct.inode*, %struct.inode** %3, align 8
  %893 = getelementptr inbounds %struct.inode, %struct.inode* %892, i32 0, i32 10
  %894 = load i32, i32* %893, align 8
  %895 = call i32 (i32, i8*, ...) @ntfs_error(i32 %894, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  br label %1377

896:                                              ; preds = %884
  %897 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %898 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %897, i32 0, i32 2
  %899 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %898, i32 0, i32 1
  %900 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %899, i32 0, i32 4
  %901 = load i64, i64* %900, align 8
  %902 = icmp ne i64 %901, 0
  br i1 %902, label %903, label %908

903:                                              ; preds = %896
  %904 = load %struct.inode*, %struct.inode** %3, align 8
  %905 = getelementptr inbounds %struct.inode, %struct.inode* %904, i32 0, i32 10
  %906 = load i32, i32* %905, align 8
  %907 = call i32 (i32, i8*, ...) @ntfs_error(i32 %906, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.32, i64 0, i64 0))
  br label %1377

908:                                              ; preds = %896
  %909 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %910 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %909, i32 0, i32 2
  %911 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %911, i32 0, i32 3
  %913 = load i32, i32* %912, align 4
  %914 = call i8* @sle64_to_cpu(i32 %913)
  %915 = ptrtoint i8* %914 to i32
  %916 = load %struct.inode*, %struct.inode** %3, align 8
  %917 = getelementptr inbounds %struct.inode, %struct.inode* %916, i32 0, i32 4
  store i32 %915, i32* %917, align 4
  %918 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %919 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %918, i32 0, i32 2
  %920 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %920, i32 0, i32 2
  %922 = load i32, i32* %921, align 8
  %923 = call i8* @sle64_to_cpu(i32 %922)
  %924 = ptrtoint i8* %923 to i32
  %925 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %926 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %925, i32 0, i32 1
  store i32 %924, i32* %926, align 4
  %927 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %928 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %927, i32 0, i32 2
  %929 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %929, i32 0, i32 1
  %931 = load i32, i32* %930, align 4
  %932 = call i8* @sle64_to_cpu(i32 %931)
  %933 = ptrtoint i8* %932 to i32
  %934 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %935 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %934, i32 0, i32 2
  store i32 %933, i32* %935, align 8
  %936 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %937 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %936)
  %938 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %939 = call i32 @unmap_mft_record(%struct.TYPE_43__* %938)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %940 = load %struct.inode*, %struct.inode** %3, align 8
  %941 = load i32, i32* @AT_BITMAP, align 4
  %942 = load i32*, i32** @I30, align 8
  %943 = call %struct.inode* @ntfs_attr_iget(%struct.inode* %940, i32 %941, i32* %942, i32 4)
  store %struct.inode* %943, %struct.inode** %6, align 8
  %944 = load %struct.inode*, %struct.inode** %6, align 8
  %945 = call i64 @IS_ERR(%struct.inode* %944)
  %946 = icmp ne i64 %945, 0
  br i1 %946, label %947, label %954

947:                                              ; preds = %908
  %948 = load %struct.inode*, %struct.inode** %3, align 8
  %949 = getelementptr inbounds %struct.inode, %struct.inode* %948, i32 0, i32 10
  %950 = load i32, i32* %949, align 8
  %951 = call i32 (i32, i8*, ...) @ntfs_error(i32 %950, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  %952 = load %struct.inode*, %struct.inode** %6, align 8
  %953 = call i32 @PTR_ERR(%struct.inode* %952)
  store i32 %953, i32* %11, align 4
  br label %1377

954:                                              ; preds = %908
  %955 = load %struct.inode*, %struct.inode** %6, align 8
  %956 = call %struct.TYPE_43__* @NTFS_I(%struct.inode* %955)
  store %struct.TYPE_43__* %956, %struct.TYPE_43__** %13, align 8
  %957 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %958 = call i64 @NInoCompressed(%struct.TYPE_43__* %957)
  %959 = icmp ne i64 %958, 0
  br i1 %959, label %968, label %960

960:                                              ; preds = %954
  %961 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %962 = call i64 @NInoEncrypted(%struct.TYPE_43__* %961)
  %963 = icmp ne i64 %962, 0
  br i1 %963, label %968, label %964

964:                                              ; preds = %960
  %965 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %966 = call i64 @NInoSparse(%struct.TYPE_43__* %965)
  %967 = icmp ne i64 %966, 0
  br i1 %967, label %968, label %973

968:                                              ; preds = %964, %960, %954
  %969 = load %struct.inode*, %struct.inode** %3, align 8
  %970 = getelementptr inbounds %struct.inode, %struct.inode* %969, i32 0, i32 10
  %971 = load i32, i32* %970, align 8
  %972 = call i32 (i32, i8*, ...) @ntfs_error(i32 %971, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0))
  br label %1374

973:                                              ; preds = %964
  %974 = load %struct.inode*, %struct.inode** %6, align 8
  %975 = call i32 @i_size_read(%struct.inode* %974)
  store i32 %975, i32* %12, align 4
  %976 = load i32, i32* %12, align 4
  %977 = shl i32 %976, 3
  %978 = load %struct.inode*, %struct.inode** %3, align 8
  %979 = getelementptr inbounds %struct.inode, %struct.inode* %978, i32 0, i32 4
  %980 = load i32, i32* %979, align 4
  %981 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %982 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %981, i32 0, i32 3
  %983 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %983, i32 0, i32 2
  %985 = load i32, i32* %984, align 4
  %986 = ashr i32 %980, %985
  %987 = icmp slt i32 %977, %986
  br i1 %987, label %988, label %998

988:                                              ; preds = %973
  %989 = load %struct.inode*, %struct.inode** %3, align 8
  %990 = getelementptr inbounds %struct.inode, %struct.inode* %989, i32 0, i32 10
  %991 = load i32, i32* %990, align 8
  %992 = load i32, i32* %12, align 4
  %993 = shl i32 %992, 3
  %994 = load %struct.inode*, %struct.inode** %3, align 8
  %995 = getelementptr inbounds %struct.inode, %struct.inode* %994, i32 0, i32 4
  %996 = load i32, i32* %995, align 4
  %997 = call i32 (i32, i8*, ...) @ntfs_error(i32 %991, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0), i32 %993, i32 %996)
  br label %1374

998:                                              ; preds = %973
  %999 = load %struct.inode*, %struct.inode** %6, align 8
  %1000 = call i32 @iput(%struct.inode* %999)
  br label %1001

1001:                                             ; preds = %998, %780
  %1002 = load %struct.inode*, %struct.inode** %3, align 8
  %1003 = getelementptr inbounds %struct.inode, %struct.inode* %1002, i32 0, i32 9
  store i32* @ntfs_dir_inode_ops, i32** %1003, align 8
  %1004 = load %struct.inode*, %struct.inode** %3, align 8
  %1005 = getelementptr inbounds %struct.inode, %struct.inode* %1004, i32 0, i32 8
  store i32* @ntfs_dir_ops, i32** %1005, align 8
  br label %1328

1006:                                             ; preds = %439
  %1007 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1008 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__* %1007)
  %1009 = load i8*, i8** @AT_DATA, align 8
  %1010 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1011 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1010, i32 0, i32 5
  store i8* %1009, i8** %1011, align 8
  %1012 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1013 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1012, i32 0, i32 4
  store i32* null, i32** %1013, align 8
  %1014 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1015 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1014, i32 0, i32 0
  store i32 0, i32* %1015, align 8
  %1016 = load i8*, i8** @AT_DATA, align 8
  %1017 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1018 = call i32 @ntfs_attr_lookup(i8* %1016, i32* null, i32 0, i32 0, i32 0, i32* null, i32 0, %struct.TYPE_44__* %1017)
  store i32 %1018, i32* %11, align 4
  %1019 = load i32, i32* %11, align 4
  %1020 = call i64 @unlikely(i32 %1019)
  %1021 = icmp ne i64 %1020, 0
  br i1 %1021, label %1022, label %1055

1022:                                             ; preds = %1006
  %1023 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1024 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1023, i32 0, i32 2
  store i32 0, i32* %1024, align 8
  %1025 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1026 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1025, i32 0, i32 1
  store i32 0, i32* %1026, align 4
  %1027 = load %struct.inode*, %struct.inode** %3, align 8
  %1028 = getelementptr inbounds %struct.inode, %struct.inode* %1027, i32 0, i32 4
  store i32 0, i32* %1028, align 4
  %1029 = load i32, i32* %11, align 4
  %1030 = load i32, i32* @ENOENT, align 4
  %1031 = sub nsw i32 0, %1030
  %1032 = icmp ne i32 %1029, %1031
  br i1 %1032, label %1033, label %1038

1033:                                             ; preds = %1022
  %1034 = load %struct.inode*, %struct.inode** %3, align 8
  %1035 = getelementptr inbounds %struct.inode, %struct.inode* %1034, i32 0, i32 10
  %1036 = load i32, i32* %1035, align 8
  %1037 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1036, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0))
  br label %1377

1038:                                             ; preds = %1022
  %1039 = load %struct.inode*, %struct.inode** %3, align 8
  %1040 = getelementptr inbounds %struct.inode, %struct.inode* %1039, i32 0, i32 0
  %1041 = load i64, i64* %1040, align 8
  %1042 = load i64, i64* @FILE_Secure, align 8
  %1043 = icmp eq i64 %1041, %1042
  br i1 %1043, label %1044, label %1045

1044:                                             ; preds = %1038
  br label %1319

1045:                                             ; preds = %1038
  %1046 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1047 = call i64 @ntfs_is_extended_system_file(%struct.TYPE_44__* %1046)
  %1048 = icmp sgt i64 %1047, 0
  br i1 %1048, label %1049, label %1050

1049:                                             ; preds = %1045
  br label %1319

1050:                                             ; preds = %1045
  %1051 = load %struct.inode*, %struct.inode** %3, align 8
  %1052 = getelementptr inbounds %struct.inode, %struct.inode* %1051, i32 0, i32 10
  %1053 = load i32, i32* %1052, align 8
  %1054 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1053, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0))
  br label %1377

1055:                                             ; preds = %1006
  %1056 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1057 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %1056, i32 0, i32 0
  %1058 = load %struct.TYPE_47__*, %struct.TYPE_47__** %1057, align 8
  store %struct.TYPE_47__* %1058, %struct.TYPE_47__** %8, align 8
  %1059 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1060 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1059, i32 0, i32 0
  %1061 = load i32, i32* %1060, align 8
  %1062 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1063 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %1064 = or i32 %1062, %1063
  %1065 = and i32 %1061, %1064
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1067, label %1114

1067:                                             ; preds = %1055
  %1068 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1069 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1068, i32 0, i32 0
  %1070 = load i32, i32* %1069, align 8
  %1071 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1072 = and i32 %1070, %1071
  %1073 = icmp ne i32 %1072, 0
  br i1 %1073, label %1074, label %1103

1074:                                             ; preds = %1067
  %1075 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1076 = call i32 @NInoSetCompressed(%struct.TYPE_43__* %1075)
  %1077 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1078 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1077, i32 0, i32 1
  %1079 = load i32, i32* %1078, align 4
  %1080 = icmp sgt i32 %1079, 4096
  br i1 %1080, label %1081, label %1089

1081:                                             ; preds = %1074
  %1082 = load %struct.inode*, %struct.inode** %3, align 8
  %1083 = getelementptr inbounds %struct.inode, %struct.inode* %1082, i32 0, i32 10
  %1084 = load i32, i32* %1083, align 8
  %1085 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1086 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1085, i32 0, i32 1
  %1087 = load i32, i32* %1086, align 4
  %1088 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1084, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.38, i64 0, i64 0), i32 %1087)
  br label %1377

1089:                                             ; preds = %1074
  %1090 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1091 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1090, i32 0, i32 0
  %1092 = load i32, i32* %1091, align 8
  %1093 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %1094 = and i32 %1092, %1093
  %1095 = load i32, i32* @ATTR_IS_COMPRESSED, align 4
  %1096 = icmp ne i32 %1094, %1095
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1089
  %1098 = load %struct.inode*, %struct.inode** %3, align 8
  %1099 = getelementptr inbounds %struct.inode, %struct.inode* %1098, i32 0, i32 10
  %1100 = load i32, i32* %1099, align 8
  %1101 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  br label %1377

1102:                                             ; preds = %1089
  br label %1103

1103:                                             ; preds = %1102, %1067
  %1104 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1105 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1104, i32 0, i32 0
  %1106 = load i32, i32* %1105, align 8
  %1107 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %1108 = and i32 %1106, %1107
  %1109 = icmp ne i32 %1108, 0
  br i1 %1109, label %1110, label %1113

1110:                                             ; preds = %1103
  %1111 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1112 = call i32 @NInoSetSparse(%struct.TYPE_43__* %1111)
  br label %1113

1113:                                             ; preds = %1110, %1103
  br label %1114

1114:                                             ; preds = %1113, %1055
  %1115 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1116 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1115, i32 0, i32 0
  %1117 = load i32, i32* %1116, align 8
  %1118 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %1119 = and i32 %1117, %1118
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1133

1121:                                             ; preds = %1114
  %1122 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1123 = call i64 @NInoCompressed(%struct.TYPE_43__* %1122)
  %1124 = icmp ne i64 %1123, 0
  br i1 %1124, label %1125, label %1130

1125:                                             ; preds = %1121
  %1126 = load %struct.inode*, %struct.inode** %3, align 8
  %1127 = getelementptr inbounds %struct.inode, %struct.inode* %1126, i32 0, i32 10
  %1128 = load i32, i32* %1127, align 8
  %1129 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1128, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0))
  br label %1377

1130:                                             ; preds = %1121
  %1131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1132 = call i32 @NInoSetEncrypted(%struct.TYPE_43__* %1131)
  br label %1133

1133:                                             ; preds = %1130, %1114
  %1134 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1135 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1134, i32 0, i32 1
  %1136 = load i32, i32* %1135, align 4
  %1137 = icmp ne i32 %1136, 0
  br i1 %1137, label %1138, label %1279

1138:                                             ; preds = %1133
  %1139 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1140 = call i32 @NInoSetNonResident(%struct.TYPE_43__* %1139)
  %1141 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1142 = call i64 @NInoCompressed(%struct.TYPE_43__* %1141)
  %1143 = icmp ne i64 %1142, 0
  br i1 %1143, label %1148, label %1144

1144:                                             ; preds = %1138
  %1145 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1146 = call i64 @NInoSparse(%struct.TYPE_43__* %1145)
  %1147 = icmp ne i64 %1146, 0
  br i1 %1147, label %1148, label %1239

1148:                                             ; preds = %1144, %1138
  %1149 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1150 = call i64 @NInoCompressed(%struct.TYPE_43__* %1149)
  %1151 = icmp ne i64 %1150, 0
  br i1 %1151, label %1152, label %1171

1152:                                             ; preds = %1148
  %1153 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1154 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1153, i32 0, i32 2
  %1155 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1155, i32 0, i32 0
  %1157 = load i32, i32* %1156, align 8
  %1158 = icmp ne i32 %1157, 4
  br i1 %1158, label %1159, label %1171

1159:                                             ; preds = %1152
  %1160 = load %struct.inode*, %struct.inode** %3, align 8
  %1161 = getelementptr inbounds %struct.inode, %struct.inode* %1160, i32 0, i32 10
  %1162 = load i32, i32* %1161, align 8
  %1163 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1164 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1163, i32 0, i32 2
  %1165 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1164, i32 0, i32 1
  %1166 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1165, i32 0, i32 0
  %1167 = load i32, i32* %1166, align 8
  %1168 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1162, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0), i32 %1167)
  %1169 = load i32, i32* @EOPNOTSUPP, align 4
  %1170 = sub nsw i32 0, %1169
  store i32 %1170, i32* %11, align 4
  br label %1377

1171:                                             ; preds = %1152, %1148
  %1172 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1173 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1172, i32 0, i32 2
  %1174 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1174, i32 0, i32 0
  %1176 = load i32, i32* %1175, align 8
  %1177 = icmp ne i32 %1176, 0
  br i1 %1177, label %1178, label %1214

1178:                                             ; preds = %1171
  %1179 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1180 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1179, i32 0, i32 2
  %1181 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1181, i32 0, i32 0
  %1183 = load i32, i32* %1182, align 8
  %1184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1185 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1184, i32 0, i32 2
  %1186 = load i32, i32* %1185, align 4
  %1187 = add i32 %1183, %1186
  %1188 = shl i32 1, %1187
  %1189 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1190 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1189, i32 0, i32 3
  %1191 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1191, i32 0, i32 0
  store i32 %1188, i32* %1192, align 8
  %1193 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1194 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1193, i32 0, i32 3
  %1195 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1194, i32 0, i32 0
  %1196 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1195, i32 0, i32 0
  %1197 = load i32, i32* %1196, align 8
  %1198 = call i8* @ffs(i32 %1197)
  %1199 = getelementptr i8, i8* %1198, i64 -1
  %1200 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1201 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1200, i32 0, i32 3
  %1202 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1201, i32 0, i32 0
  %1203 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1202, i32 0, i32 3
  store i8* %1199, i8** %1203, align 8
  %1204 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1205 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1204, i32 0, i32 2
  %1206 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1206, i32 0, i32 0
  %1208 = load i32, i32* %1207, align 8
  %1209 = shl i32 1, %1208
  %1210 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1211 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1210, i32 0, i32 3
  %1212 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1211, i32 0, i32 0
  %1213 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1212, i32 0, i32 1
  store i32 %1209, i32* %1213, align 4
  br label %1227

1214:                                             ; preds = %1171
  %1215 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1216 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1215, i32 0, i32 3
  %1217 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1216, i32 0, i32 0
  %1218 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1217, i32 0, i32 0
  store i32 0, i32* %1218, align 8
  %1219 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1220 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1219, i32 0, i32 3
  %1221 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1220, i32 0, i32 0
  %1222 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1221, i32 0, i32 3
  store i8* null, i8** %1222, align 8
  %1223 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1224 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1223, i32 0, i32 3
  %1225 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1224, i32 0, i32 0
  %1226 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1225, i32 0, i32 1
  store i32 0, i32* %1226, align 4
  br label %1227

1227:                                             ; preds = %1214, %1178
  %1228 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1229 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1228, i32 0, i32 2
  %1230 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1229, i32 0, i32 1
  %1231 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1230, i32 0, i32 5
  %1232 = load i32, i32* %1231, align 8
  %1233 = call i8* @sle64_to_cpu(i32 %1232)
  %1234 = ptrtoint i8* %1233 to i32
  %1235 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1236 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1235, i32 0, i32 3
  %1237 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1236, i32 0, i32 0
  %1238 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1237, i32 0, i32 2
  store i32 %1234, i32* %1238, align 8
  br label %1239

1239:                                             ; preds = %1227, %1144
  %1240 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1241 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1240, i32 0, i32 2
  %1242 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1241, i32 0, i32 1
  %1243 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1242, i32 0, i32 4
  %1244 = load i64, i64* %1243, align 8
  %1245 = icmp ne i64 %1244, 0
  br i1 %1245, label %1246, label %1251

1246:                                             ; preds = %1239
  %1247 = load %struct.inode*, %struct.inode** %3, align 8
  %1248 = getelementptr inbounds %struct.inode, %struct.inode* %1247, i32 0, i32 10
  %1249 = load i32, i32* %1248, align 8
  %1250 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1249, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0))
  br label %1377

1251:                                             ; preds = %1239
  %1252 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1253 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1252, i32 0, i32 2
  %1254 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1253, i32 0, i32 1
  %1255 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1254, i32 0, i32 3
  %1256 = load i32, i32* %1255, align 4
  %1257 = call i8* @sle64_to_cpu(i32 %1256)
  %1258 = ptrtoint i8* %1257 to i32
  %1259 = load %struct.inode*, %struct.inode** %3, align 8
  %1260 = getelementptr inbounds %struct.inode, %struct.inode* %1259, i32 0, i32 4
  store i32 %1258, i32* %1260, align 4
  %1261 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1262 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1261, i32 0, i32 2
  %1263 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1263, i32 0, i32 2
  %1265 = load i32, i32* %1264, align 8
  %1266 = call i8* @sle64_to_cpu(i32 %1265)
  %1267 = ptrtoint i8* %1266 to i32
  %1268 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1269 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1268, i32 0, i32 1
  store i32 %1267, i32* %1269, align 4
  %1270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1270, i32 0, i32 2
  %1272 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1271, i32 0, i32 1
  %1273 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1272, i32 0, i32 1
  %1274 = load i32, i32* %1273, align 4
  %1275 = call i8* @sle64_to_cpu(i32 %1274)
  %1276 = ptrtoint i8* %1275 to i32
  %1277 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1278 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1277, i32 0, i32 2
  store i32 %1276, i32* %1278, align 8
  br label %1318

1279:                                             ; preds = %1133
  %1280 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1281 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1280, i32 0, i32 2
  %1282 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1282, i32 0, i32 1
  %1284 = load i32, i32* %1283, align 4
  %1285 = call i64 @le32_to_cpu(i32 %1284)
  %1286 = trunc i64 %1285 to i32
  %1287 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1288 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1287, i32 0, i32 1
  store i32 %1286, i32* %1288, align 4
  %1289 = load %struct.inode*, %struct.inode** %3, align 8
  %1290 = getelementptr inbounds %struct.inode, %struct.inode* %1289, i32 0, i32 4
  store i32 %1286, i32* %1290, align 4
  %1291 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1292 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1291, i32 0, i32 3
  %1293 = load i32, i32* %1292, align 8
  %1294 = call i64 @le32_to_cpu(i32 %1293)
  %1295 = load %struct.TYPE_47__*, %struct.TYPE_47__** %8, align 8
  %1296 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %1295, i32 0, i32 2
  %1297 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1296, i32 0, i32 0
  %1298 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1297, i32 0, i32 0
  %1299 = load i32, i32* %1298, align 8
  %1300 = call i64 @le16_to_cpu(i32 %1299)
  %1301 = sub nsw i64 %1294, %1300
  %1302 = trunc i64 %1301 to i32
  %1303 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1304 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1303, i32 0, i32 2
  store i32 %1302, i32* %1304, align 8
  %1305 = load %struct.inode*, %struct.inode** %3, align 8
  %1306 = getelementptr inbounds %struct.inode, %struct.inode* %1305, i32 0, i32 4
  %1307 = load i32, i32* %1306, align 4
  %1308 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1309 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1308, i32 0, i32 2
  %1310 = load i32, i32* %1309, align 8
  %1311 = icmp sgt i32 %1307, %1310
  br i1 %1311, label %1312, label %1317

1312:                                             ; preds = %1279
  %1313 = load %struct.inode*, %struct.inode** %3, align 8
  %1314 = getelementptr inbounds %struct.inode, %struct.inode* %1313, i32 0, i32 10
  %1315 = load i32, i32* %1314, align 8
  %1316 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1315, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.43, i64 0, i64 0))
  br label %1377

1317:                                             ; preds = %1279
  br label %1318

1318:                                             ; preds = %1317, %1251
  br label %1319

1319:                                             ; preds = %1318, %1049, %1044
  %1320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1321 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %1320)
  %1322 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1323 = call i32 @unmap_mft_record(%struct.TYPE_43__* %1322)
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %10, align 8
  %1324 = load %struct.inode*, %struct.inode** %3, align 8
  %1325 = getelementptr inbounds %struct.inode, %struct.inode* %1324, i32 0, i32 9
  store i32* @ntfs_file_inode_ops, i32** %1325, align 8
  %1326 = load %struct.inode*, %struct.inode** %3, align 8
  %1327 = getelementptr inbounds %struct.inode, %struct.inode* %1326, i32 0, i32 8
  store i32* @ntfs_file_ops, i32** %1327, align 8
  br label %1328

1328:                                             ; preds = %1319, %1001
  %1329 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1330 = call i64 @NInoMstProtected(%struct.TYPE_43__* %1329)
  %1331 = icmp ne i64 %1330, 0
  br i1 %1331, label %1332, label %1337

1332:                                             ; preds = %1328
  %1333 = load %struct.inode*, %struct.inode** %3, align 8
  %1334 = getelementptr inbounds %struct.inode, %struct.inode* %1333, i32 0, i32 7
  %1335 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1334, align 8
  %1336 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1335, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %1336, align 8
  br label %1342

1337:                                             ; preds = %1328
  %1338 = load %struct.inode*, %struct.inode** %3, align 8
  %1339 = getelementptr inbounds %struct.inode, %struct.inode* %1338, i32 0, i32 7
  %1340 = load %struct.TYPE_54__*, %struct.TYPE_54__** %1339, align 8
  %1341 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1340, i32 0, i32 0
  store i32* @ntfs_aops, i32** %1341, align 8
  br label %1342

1342:                                             ; preds = %1337, %1332
  %1343 = load %struct.inode*, %struct.inode** %3, align 8
  %1344 = getelementptr inbounds %struct.inode, %struct.inode* %1343, i32 0, i32 6
  %1345 = load i32, i32* %1344, align 4
  %1346 = call i64 @S_ISREG(i32 %1345)
  %1347 = icmp ne i64 %1346, 0
  br i1 %1347, label %1348, label %1365

1348:                                             ; preds = %1342
  %1349 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1350 = call i64 @NInoCompressed(%struct.TYPE_43__* %1349)
  %1351 = icmp ne i64 %1350, 0
  br i1 %1351, label %1356, label %1352

1352:                                             ; preds = %1348
  %1353 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1354 = call i64 @NInoSparse(%struct.TYPE_43__* %1353)
  %1355 = icmp ne i64 %1354, 0
  br i1 %1355, label %1356, label %1365

1356:                                             ; preds = %1352, %1348
  %1357 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1358 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1357, i32 0, i32 3
  %1359 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %1358, i32 0, i32 0
  %1360 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1359, i32 0, i32 2
  %1361 = load i32, i32* %1360, align 8
  %1362 = ashr i32 %1361, 9
  %1363 = load %struct.inode*, %struct.inode** %3, align 8
  %1364 = getelementptr inbounds %struct.inode, %struct.inode* %1363, i32 0, i32 5
  store i32 %1362, i32* %1364, align 8
  br label %1372

1365:                                             ; preds = %1352, %1342
  %1366 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1367 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %1366, i32 0, i32 2
  %1368 = load i32, i32* %1367, align 8
  %1369 = ashr i32 %1368, 9
  %1370 = load %struct.inode*, %struct.inode** %3, align 8
  %1371 = getelementptr inbounds %struct.inode, %struct.inode* %1370, i32 0, i32 5
  store i32 %1369, i32* %1371, align 8
  br label %1372

1372:                                             ; preds = %1365, %1356
  %1373 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %1421

1374:                                             ; preds = %988, %968
  %1375 = load %struct.inode*, %struct.inode** %6, align 8
  %1376 = call i32 @iput(%struct.inode* %1375)
  br label %1377

1377:                                             ; preds = %1374, %1312, %1246, %1159, %1125, %1097, %1081, %1050, %1033, %947, %903, %891, %879, %867, %855, %828, %819, %697, %675, %656, %621, %610, %599, %581, %532, %503, %476, %466, %412, %379, %348, %330, %309, %281, %257, %228, %180, %84, %74, %64
  %1378 = load i32, i32* %11, align 4
  %1379 = icmp ne i32 %1378, 0
  br i1 %1379, label %1383, label %1380

1380:                                             ; preds = %1377
  %1381 = load i32, i32* @EIO, align 4
  %1382 = sub nsw i32 0, %1381
  store i32 %1382, i32* %11, align 4
  br label %1383

1383:                                             ; preds = %1380, %1377
  %1384 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1385 = icmp ne %struct.TYPE_44__* %1384, null
  br i1 %1385, label %1386, label %1389

1386:                                             ; preds = %1383
  %1387 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %1388 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__* %1387)
  br label %1389

1389:                                             ; preds = %1386, %1383
  %1390 = load %struct.inode*, %struct.inode** %7, align 8
  %1391 = icmp ne %struct.inode* %1390, null
  br i1 %1391, label %1392, label %1395

1392:                                             ; preds = %1389
  %1393 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %1394 = call i32 @unmap_mft_record(%struct.TYPE_43__* %1393)
  br label %1395

1395:                                             ; preds = %1392, %1389
  br label %1396

1396:                                             ; preds = %1395, %55
  %1397 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1398 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1397, i32 0, i32 5
  %1399 = load i32, i32* %1398, align 4
  %1400 = load i32, i32* %11, align 4
  %1401 = load %struct.inode*, %struct.inode** %3, align 8
  %1402 = getelementptr inbounds %struct.inode, %struct.inode* %1401, i32 0, i32 0
  %1403 = load i64, i64* %1402, align 8
  %1404 = call i32 (i32, i8*, ...) @ntfs_error(i32 %1399, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.45, i64 0, i64 0), i32 %1400, i64 %1403)
  %1405 = load %struct.inode*, %struct.inode** %3, align 8
  %1406 = call i32 @make_bad_inode(%struct.inode* %1405)
  %1407 = load i32, i32* %11, align 4
  %1408 = load i32, i32* @EOPNOTSUPP, align 4
  %1409 = sub nsw i32 0, %1408
  %1410 = icmp ne i32 %1407, %1409
  br i1 %1410, label %1411, label %1419

1411:                                             ; preds = %1396
  %1412 = load i32, i32* %11, align 4
  %1413 = load i32, i32* @ENOMEM, align 4
  %1414 = sub nsw i32 0, %1413
  %1415 = icmp ne i32 %1412, %1414
  br i1 %1415, label %1416, label %1419

1416:                                             ; preds = %1411
  %1417 = load %struct.TYPE_57__*, %struct.TYPE_57__** %4, align 8
  %1418 = call i32 @NVolSetErrors(%struct.TYPE_57__* %1417)
  br label %1419

1419:                                             ; preds = %1416, %1411, %1396
  %1420 = load i32, i32* %11, align 4
  store i32 %1420, i32* %2, align 4
  br label %1421

1421:                                             ; preds = %1419, %1372
  %1422 = load i32, i32* %2, align 4
  ret i32 %1422
}

declare dso_local %struct.TYPE_57__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_43__* @NTFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_43__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_44__* @ntfs_attr_get_search_ctx(%struct.TYPE_43__*, %struct.inode*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_RDONLY(%struct.inode*) #1

declare dso_local i32 @ntfs_attr_lookup(i8*, i32*, i32, i32, i32, i32*, i32, %struct.TYPE_44__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ntfs2utc(i32) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_44__*) #1

declare dso_local i32 @NInoSetAttrList(%struct.TYPE_43__*) #1

declare dso_local i32 @ntfs_warning(i32, i8*, i64) #1

declare dso_local i64 @ntfs_attr_size(%struct.TYPE_47__*) #1

declare dso_local i32 @ntfs_malloc_nofs(i64) #1

declare dso_local i32 @NInoSetAttrListNonResident(%struct.TYPE_43__*) #1

declare dso_local %struct.inode* @ntfs_mapping_pairs_decompress(%struct.TYPE_57__*, %struct.TYPE_47__*, i32*) #1

declare dso_local i32 @load_attribute_list(%struct.TYPE_57__*, %struct.TYPE_49__*, i32, i64, i8*) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @NInoSetCompressed(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetEncrypted(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetSparse(%struct.TYPE_43__*) #1

declare dso_local i8* @ffs(i32) #1

declare dso_local i32 @NInoSetMstProtected(%struct.TYPE_43__*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_44__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_43__*) #1

declare dso_local i32 @NInoSetIndexAllocPresent(%struct.TYPE_43__*) #1

declare dso_local %struct.inode* @ntfs_attr_iget(%struct.inode*, i32, i32*, i32) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_43__*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @ntfs_is_extended_system_file(%struct.TYPE_44__*) #1

declare dso_local i32 @NInoSetNonResident(%struct.TYPE_43__*) #1

declare dso_local i64 @NInoMstProtected(%struct.TYPE_43__*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_57__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
