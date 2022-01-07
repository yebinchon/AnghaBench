; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_index_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_index_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_38__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_40__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, %struct.TYPE_39__, %struct.TYPE_37__, i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_28__* }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_35__, i32, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_34__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__*, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_33__, i64, i64, i64 }
%struct.TYPE_33__ = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AT_INDEX_ROOT = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is missing.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"$INDEX_ROOT attribute is not resident.\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"$INDEX_ROOT attribute name is placed after the attribute value.\00", align 1
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Found compressed/encrypted/sparse index root attribute.\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"$INDEX_ROOT attribute is corrupt.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Index is corrupt.\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Index type is not 0 (type is 0x%x).\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Index collation rule is 0x%x.\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Index block size (%u) is not a power of two.\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [72 x i8] c"Index block size (%u) > PAGE_CACHE_SIZE (%ld) is not supported.  Sorry.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NTFS_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [71 x i8] c"Index block size (%u) < NTFS_BLOCK_SIZE (%i) is not supported.  Sorry.\00", align 1
@LARGE_INDEX = common dso_local global i32 0, align 4
@AT_INDEX_ALLOCATION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [76 x i8] c"$INDEX_ALLOCATION attribute is not present but $INDEX_ROOT indicated it is.\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Failed to lookup $INDEX_ALLOCATION attribute.\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"$INDEX_ALLOCATION attribute is resident.\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"$INDEX_ALLOCATION attribute name is placed after the mapping pairs array.\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"$INDEX_ALLOCATION attribute is encrypted.\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"$INDEX_ALLOCATION attribute is sparse.\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"$INDEX_ALLOCATION attribute is compressed.\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"First extent of $INDEX_ALLOCATION attribute has non zero lowest_vcn.\00", align 1
@AT_BITMAP = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [32 x i8] c"Failed to get bitmap attribute.\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"$BITMAP attribute is compressed and/or encrypted and/or sparse.\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"Index bitmap too small (0x%llx) for index allocation (0x%llx).\00", align 1
@ntfs_mst_aops = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [80 x i8] c"Failed with error code %i while reading index inode (mft_no 0x%lx, name_len %i.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*)* @ntfs_read_locked_index_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_index_inode(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.TYPE_31__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_40__* @NTFS_SB(i32 %21)
  store %struct.TYPE_40__* %22, %struct.TYPE_40__** %7, align 8
  store i32 0, i32* %18, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @ntfs_init_big_inode(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %29)
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %31)
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 8
  store i32 %70, i32* %74, align 8
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @S_IFMT, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %84 = call %struct.inode* @map_mft_record(%struct.TYPE_28__* %83)
  store %struct.inode* %84, %struct.inode** %12, align 8
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = call i64 @IS_ERR(%struct.inode* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %2
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = call i32 @PTR_ERR(%struct.inode* %89)
  store i32 %90, i32* %18, align 4
  br label %672

91:                                               ; preds = %2
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = call %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__* %92, %struct.inode* %93)
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %14, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %96 = icmp ne %struct.TYPE_29__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %18, align 4
  br label %653

100:                                              ; preds = %91
  %101 = load i32, i32* @AT_INDEX_ROOT, align 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CASE_SENSITIVE, align 4
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %110 = call i32 @ntfs_attr_lookup(i32 %101, i32 %104, i32 %107, i32 %108, i32 0, i32* null, i32 0, %struct.TYPE_29__* %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %100
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @ENOENT, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i32, i8*, ...) @ntfs_error(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %119, %114
  br label %653

125:                                              ; preds = %100
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %127, align 8
  store %struct.TYPE_31__* %128, %struct.TYPE_31__** %13, align 8
  %129 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %125
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @ntfs_error(i32 %137, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %653

139:                                              ; preds = %125
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @le16_to_cpu(i32 %147)
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @le16_to_cpu(i32 %153)
  %155 = icmp sge i64 %148, %154
  br label %156

156:                                              ; preds = %144, %139
  %157 = phi i1 [ false, %139 ], [ %155, %144 ]
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @ntfs_error(i32 %164, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %653

166:                                              ; preds = %156
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %171 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %169, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %166
  %178 = load %struct.inode*, %struct.inode** %5, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @ntfs_error(i32 %180, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %653

182:                                              ; preds = %166
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %184 = bitcast %struct.TYPE_31__* %183 to i32*
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @le16_to_cpu(i32 %189)
  %191 = getelementptr inbounds i32, i32* %184, i64 %190
  %192 = bitcast i32* %191 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %192, %struct.TYPE_30__** %15, align 8
  %193 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %194 = bitcast %struct.TYPE_30__* %193 to i32*
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @le32_to_cpu(i64 %199)
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  store i32* %202, i32** %16, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  %208 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %207, i64 %211
  %213 = icmp ugt i32* %203, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %182
  %215 = load %struct.inode*, %struct.inode** %5, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @ntfs_error(i32 %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %653

219:                                              ; preds = %182
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 0
  %222 = bitcast %struct.TYPE_33__* %221 to i32*
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @le32_to_cpu(i64 %226)
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %222, i64 %228
  store i32* %229, i32** %17, align 8
  %230 = load i32*, i32** %17, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = icmp ugt i32* %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %219
  %234 = load %struct.inode*, %struct.inode** %5, align 8
  %235 = getelementptr inbounds %struct.inode, %struct.inode* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, ...) @ntfs_error(i32 %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %653

238:                                              ; preds = %219
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load %struct.inode*, %struct.inode** %5, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @le32_to_cpu(i64 %249)
  %251 = call i32 (i32, i8*, ...) @ntfs_error(i32 %246, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %250)
  br label %653

252:                                              ; preds = %238
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 4
  store i64 %255, i64* %259, align 8
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @le32_to_cpu(i64 %262)
  %264 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %263)
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @le32_to_cpu(i64 %267)
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 8
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @is_power_of_2(i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %290, label %280

280:                                              ; preds = %252
  %281 = load %struct.inode*, %struct.inode** %5, align 8
  %282 = getelementptr inbounds %struct.inode, %struct.inode* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 (i32, i8*, ...) @ntfs_error(i32 %283, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %288)
  br label %653

290:                                              ; preds = %252
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 5
  %293 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %298 = icmp sgt i64 %296, %297
  br i1 %298, label %299, label %312

299:                                              ; preds = %290
  %300 = load %struct.inode*, %struct.inode** %5, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %309 = call i32 (i32, i8*, ...) @ntfs_error(i32 %302, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 %307, i64 %308)
  %310 = load i32, i32* @EOPNOTSUPP, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %18, align 4
  br label %653

312:                                              ; preds = %290
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %320 = icmp slt i64 %318, %319
  br i1 %320, label %321, label %334

321:                                              ; preds = %312
  %322 = load %struct.inode*, %struct.inode** %5, align 8
  %323 = getelementptr inbounds %struct.inode, %struct.inode* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 5
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i64, i64* @NTFS_BLOCK_SIZE, align 8
  %331 = call i32 (i32, i8*, ...) @ntfs_error(i32 %324, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.11, i64 0, i64 0), i32 %329, i64 %330)
  %332 = load i32, i32* @EOPNOTSUPP, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %18, align 4
  br label %653

334:                                              ; preds = %312
  %335 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %335, i32 0, i32 5
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = call i32 @ffs(i64 %340)
  %342 = sub nsw i32 %341, 1
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %345, i32 0, i32 1
  store i32 %342, i32* %346, align 4
  %347 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = icmp sle i64 %349, %355
  br i1 %356, label %357, label %372

357:                                              ; preds = %334
  %358 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 2
  store i64 %360, i64* %364, align 8
  %365 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %370, i32 0, i32 3
  store i32 %367, i32* %371, align 8
  br label %387

372:                                              ; preds = %334
  %373 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %378, i32 0, i32 2
  store i64 %375, i64* %379, align 8
  %380 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %385, i32 0, i32 3
  store i32 %382, i32* %386, align 8
  br label %387

387:                                              ; preds = %372, %357
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @LARGE_INDEX, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %406, label %395

395:                                              ; preds = %387
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i32 0, i32 1
  store i32 0, i32* %397, align 4
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 0
  store i32 0, i32* %399, align 8
  %400 = load %struct.inode*, %struct.inode** %5, align 8
  %401 = getelementptr inbounds %struct.inode, %struct.inode* %400, i32 0, i32 1
  store i32 0, i32* %401, align 4
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %403 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %402)
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %405 = call i32 @unmap_mft_record(%struct.TYPE_28__* %404)
  store %struct.inode* null, %struct.inode** %12, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %14, align 8
  br label %626

406:                                              ; preds = %387
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %408 = call i32 @NInoSetIndexAllocPresent(%struct.TYPE_28__* %407)
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %410 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__* %409)
  %411 = load i32, i32* @AT_INDEX_ALLOCATION, align 4
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @CASE_SENSITIVE, align 4
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %420 = call i32 @ntfs_attr_lookup(i32 %411, i32 %414, i32 %417, i32 %418, i32 0, i32* null, i32 0, %struct.TYPE_29__* %419)
  store i32 %420, i32* %18, align 4
  %421 = load i32, i32* %18, align 4
  %422 = call i64 @unlikely(i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %440

424:                                              ; preds = %406
  %425 = load i32, i32* %18, align 4
  %426 = load i32, i32* @ENOENT, align 4
  %427 = sub nsw i32 0, %426
  %428 = icmp eq i32 %425, %427
  br i1 %428, label %429, label %434

429:                                              ; preds = %424
  %430 = load %struct.inode*, %struct.inode** %5, align 8
  %431 = getelementptr inbounds %struct.inode, %struct.inode* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = call i32 (i32, i8*, ...) @ntfs_error(i32 %432, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i64 0, i64 0))
  br label %439

434:                                              ; preds = %424
  %435 = load %struct.inode*, %struct.inode** %5, align 8
  %436 = getelementptr inbounds %struct.inode, %struct.inode* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 8
  %438 = call i32 (i32, i8*, ...) @ntfs_error(i32 %437, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0))
  br label %439

439:                                              ; preds = %434, %429
  br label %653

440:                                              ; preds = %406
  %441 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %442 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_31__*, %struct.TYPE_31__** %442, align 8
  store %struct.TYPE_31__* %443, %struct.TYPE_31__** %13, align 8
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %453, label %448

448:                                              ; preds = %440
  %449 = load %struct.inode*, %struct.inode** %5, align 8
  %450 = getelementptr inbounds %struct.inode, %struct.inode* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = call i32 (i32, i8*, ...) @ntfs_error(i32 %451, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  br label %653

453:                                              ; preds = %440
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %470

458:                                              ; preds = %453
  %459 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %460 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = call i64 @le16_to_cpu(i32 %461)
  %463 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %464 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 8
  %468 = call i64 @le16_to_cpu(i32 %467)
  %469 = icmp sge i64 %462, %468
  br label %470

470:                                              ; preds = %458, %453
  %471 = phi i1 [ false, %453 ], [ %469, %458 ]
  %472 = zext i1 %471 to i32
  %473 = call i64 @unlikely(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %470
  %476 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = call i32 (i32, i8*, ...) @ntfs_error(i32 %478, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0))
  br label %653

480:                                              ; preds = %470
  %481 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %482 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %492

487:                                              ; preds = %480
  %488 = load %struct.inode*, %struct.inode** %5, align 8
  %489 = getelementptr inbounds %struct.inode, %struct.inode* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  %491 = call i32 (i32, i8*, ...) @ntfs_error(i32 %490, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0))
  br label %653

492:                                              ; preds = %480
  %493 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %494 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %492
  %500 = load %struct.inode*, %struct.inode** %5, align 8
  %501 = getelementptr inbounds %struct.inode, %struct.inode* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = call i32 (i32, i8*, ...) @ntfs_error(i32 %502, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %653

504:                                              ; preds = %492
  %505 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %506 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %509 = and i32 %507, %508
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %504
  %512 = load %struct.inode*, %struct.inode** %5, align 8
  %513 = getelementptr inbounds %struct.inode, %struct.inode* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = call i32 (i32, i8*, ...) @ntfs_error(i32 %514, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  br label %653

516:                                              ; preds = %504
  %517 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %519, i32 0, i32 3
  %521 = load i64, i64* %520, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %528

523:                                              ; preds = %516
  %524 = load %struct.inode*, %struct.inode** %5, align 8
  %525 = getelementptr inbounds %struct.inode, %struct.inode* %524, i32 0, i32 4
  %526 = load i32, i32* %525, align 8
  %527 = call i32 (i32, i8*, ...) @ntfs_error(i32 %526, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.19, i64 0, i64 0))
  br label %653

528:                                              ; preds = %516
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %530 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %530, i32 0, i32 0
  %532 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = call i8* @sle64_to_cpu(i32 %533)
  %535 = ptrtoint i8* %534 to i32
  %536 = load %struct.inode*, %struct.inode** %5, align 8
  %537 = getelementptr inbounds %struct.inode, %struct.inode* %536, i32 0, i32 1
  store i32 %535, i32* %537, align 4
  %538 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %539 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = call i8* @sle64_to_cpu(i32 %542)
  %544 = ptrtoint i8* %543 to i32
  %545 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %545, i32 0, i32 0
  store i32 %544, i32* %546, align 8
  %547 = load %struct.TYPE_31__*, %struct.TYPE_31__** %13, align 8
  %548 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %547, i32 0, i32 2
  %549 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %549, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = call i8* @sle64_to_cpu(i32 %551)
  %553 = ptrtoint i8* %552 to i32
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %555 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %554, i32 0, i32 1
  store i32 %553, i32* %555, align 4
  %556 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %557 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %556)
  %558 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %559 = call i32 @unmap_mft_record(%struct.TYPE_28__* %558)
  store %struct.inode* null, %struct.inode** %12, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %14, align 8
  %560 = load %struct.inode*, %struct.inode** %4, align 8
  %561 = load i32, i32* @AT_BITMAP, align 4
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %563 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i32 0, i32 6
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %566 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %565, i32 0, i32 3
  %567 = load i32, i32* %566, align 4
  %568 = call %struct.inode* @ntfs_attr_iget(%struct.inode* %560, i32 %561, i32 %564, i32 %567)
  store %struct.inode* %568, %struct.inode** %11, align 8
  %569 = load %struct.inode*, %struct.inode** %11, align 8
  %570 = call i64 @IS_ERR(%struct.inode* %569)
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %528
  %573 = load %struct.inode*, %struct.inode** %5, align 8
  %574 = getelementptr inbounds %struct.inode, %struct.inode* %573, i32 0, i32 4
  %575 = load i32, i32* %574, align 8
  %576 = call i32 (i32, i8*, ...) @ntfs_error(i32 %575, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %577 = load %struct.inode*, %struct.inode** %11, align 8
  %578 = call i32 @PTR_ERR(%struct.inode* %577)
  store i32 %578, i32* %18, align 4
  br label %653

579:                                              ; preds = %528
  %580 = load %struct.inode*, %struct.inode** %11, align 8
  %581 = call %struct.TYPE_28__* @NTFS_I(%struct.inode* %580)
  store %struct.TYPE_28__* %581, %struct.TYPE_28__** %10, align 8
  %582 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %583 = call i64 @NInoCompressed(%struct.TYPE_28__* %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %593, label %585

585:                                              ; preds = %579
  %586 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %587 = call i64 @NInoEncrypted(%struct.TYPE_28__* %586)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %593, label %589

589:                                              ; preds = %585
  %590 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %591 = call i64 @NInoSparse(%struct.TYPE_28__* %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %598

593:                                              ; preds = %589, %585, %579
  %594 = load %struct.inode*, %struct.inode** %5, align 8
  %595 = getelementptr inbounds %struct.inode, %struct.inode* %594, i32 0, i32 4
  %596 = load i32, i32* %595, align 8
  %597 = call i32 (i32, i8*, ...) @ntfs_error(i32 %596, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i64 0, i64 0))
  br label %650

598:                                              ; preds = %589
  %599 = load %struct.inode*, %struct.inode** %11, align 8
  %600 = call i32 @i_size_read(%struct.inode* %599)
  store i32 %600, i32* %6, align 4
  %601 = load i32, i32* %6, align 4
  %602 = shl i32 %601, 3
  %603 = load %struct.inode*, %struct.inode** %5, align 8
  %604 = getelementptr inbounds %struct.inode, %struct.inode* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %607 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %606, i32 0, i32 5
  %608 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = ashr i32 %605, %610
  %612 = icmp slt i32 %602, %611
  br i1 %612, label %613, label %623

613:                                              ; preds = %598
  %614 = load %struct.inode*, %struct.inode** %5, align 8
  %615 = getelementptr inbounds %struct.inode, %struct.inode* %614, i32 0, i32 4
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* %6, align 4
  %618 = shl i32 %617, 3
  %619 = load %struct.inode*, %struct.inode** %5, align 8
  %620 = getelementptr inbounds %struct.inode, %struct.inode* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = call i32 (i32, i8*, ...) @ntfs_error(i32 %616, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i64 0, i64 0), i32 %618, i32 %621)
  br label %650

623:                                              ; preds = %598
  %624 = load %struct.inode*, %struct.inode** %11, align 8
  %625 = call i32 @iput(%struct.inode* %624)
  br label %626

626:                                              ; preds = %623, %395
  %627 = load %struct.inode*, %struct.inode** %5, align 8
  %628 = getelementptr inbounds %struct.inode, %struct.inode* %627, i32 0, i32 7
  store i32* null, i32** %628, align 8
  %629 = load %struct.inode*, %struct.inode** %5, align 8
  %630 = getelementptr inbounds %struct.inode, %struct.inode* %629, i32 0, i32 6
  store i32* null, i32** %630, align 8
  %631 = load %struct.inode*, %struct.inode** %5, align 8
  %632 = getelementptr inbounds %struct.inode, %struct.inode* %631, i32 0, i32 5
  %633 = load %struct.TYPE_38__*, %struct.TYPE_38__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %633, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %634, align 8
  %635 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %636 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = ashr i32 %637, 9
  %639 = load %struct.inode*, %struct.inode** %5, align 8
  %640 = getelementptr inbounds %struct.inode, %struct.inode* %639, i32 0, i32 2
  store i32 %638, i32* %640, align 8
  %641 = load %struct.inode*, %struct.inode** %4, align 8
  %642 = call i32 @igrab(%struct.inode* %641)
  %643 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %644 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %645 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %644, i32 0, i32 4
  %646 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %645, i32 0, i32 0
  store %struct.TYPE_28__* %643, %struct.TYPE_28__** %646, align 8
  %647 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %648 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %647, i32 0, i32 2
  store i32 -1, i32* %648, align 8
  %649 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %700

650:                                              ; preds = %613, %593
  %651 = load %struct.inode*, %struct.inode** %11, align 8
  %652 = call i32 @iput(%struct.inode* %651)
  br label %653

653:                                              ; preds = %650, %572, %523, %511, %499, %487, %475, %448, %439, %321, %299, %280, %243, %233, %214, %177, %161, %134, %124, %97
  %654 = load i32, i32* %18, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %659, label %656

656:                                              ; preds = %653
  %657 = load i32, i32* @EIO, align 4
  %658 = sub nsw i32 0, %657
  store i32 %658, i32* %18, align 4
  br label %659

659:                                              ; preds = %656, %653
  %660 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %661 = icmp ne %struct.TYPE_29__* %660, null
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %664 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %663)
  br label %665

665:                                              ; preds = %662, %659
  %666 = load %struct.inode*, %struct.inode** %12, align 8
  %667 = icmp ne %struct.inode* %666, null
  br i1 %667, label %668, label %671

668:                                              ; preds = %665
  %669 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %670 = call i32 @unmap_mft_record(%struct.TYPE_28__* %669)
  br label %671

671:                                              ; preds = %668, %665
  br label %672

672:                                              ; preds = %671, %88
  %673 = load %struct.inode*, %struct.inode** %5, align 8
  %674 = getelementptr inbounds %struct.inode, %struct.inode* %673, i32 0, i32 4
  %675 = load i32, i32* %674, align 8
  %676 = load i32, i32* %18, align 4
  %677 = load %struct.inode*, %struct.inode** %5, align 8
  %678 = getelementptr inbounds %struct.inode, %struct.inode* %677, i32 0, i32 3
  %679 = load i32, i32* %678, align 4
  %680 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %681 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 4
  %683 = call i32 (i32, i8*, ...) @ntfs_error(i32 %675, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.24, i64 0, i64 0), i32 %676, i32 %679, i32 %682)
  %684 = load %struct.inode*, %struct.inode** %5, align 8
  %685 = call i32 @make_bad_inode(%struct.inode* %684)
  %686 = load i32, i32* %18, align 4
  %687 = load i32, i32* @EOPNOTSUPP, align 4
  %688 = sub nsw i32 0, %687
  %689 = icmp ne i32 %686, %688
  br i1 %689, label %690, label %698

690:                                              ; preds = %672
  %691 = load i32, i32* %18, align 4
  %692 = load i32, i32* @ENOMEM, align 4
  %693 = sub nsw i32 0, %692
  %694 = icmp ne i32 %691, %693
  br i1 %694, label %695, label %698

695:                                              ; preds = %690
  %696 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %697 = call i32 @NVolSetErrors(%struct.TYPE_40__* %696)
  br label %698

698:                                              ; preds = %695, %690, %672
  %699 = load i32, i32* %18, align 4
  store i32 %699, i32* %3, align 4
  br label %700

700:                                              ; preds = %698, %626
  %701 = load i32, i32* %3, align 4
  ret i32 %701
}

declare dso_local %struct.TYPE_40__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_28__* @NTFS_I(%struct.inode*) #1

declare dso_local %struct.inode* @map_mft_record(%struct.TYPE_28__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__*, %struct.inode*) #1

declare dso_local i32 @ntfs_attr_lookup(i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_29__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_28__*) #1

declare dso_local i32 @NInoSetIndexAllocPresent(%struct.TYPE_28__*) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__*) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local %struct.inode* @ntfs_attr_iget(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_28__*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_28__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_28__*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
