; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_attr_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_inode.c_ntfs_read_locked_attr_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_33__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { i64, i32, i32, i32, i64, %struct.TYPE_36__, %struct.TYPE_35__, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_38__* }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_32__, i32, i64, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_30__ }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }

@.str = private unnamed_addr constant [26 x i8] c"Entering for i_ino 0x%lx.\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ATTR_COMPRESSION_MASK = common dso_local global i32 0, align 4
@ATTR_IS_SPARSE = common dso_local global i32 0, align 4
@AT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [127 x i8] c"Found compressed non-data or named data attribute.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"Found compressed attribute but compression is disabled due to cluster size (%i) > 4kiB.\00", align 1
@ATTR_IS_COMPRESSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Found unknown compression method.\00", align 1
@AT_INDEX_ROOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [131 x i8] c"Found mst protected attribute but the attribute is %s.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@ATTR_IS_ENCRYPTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Found encrypted and compressed data.\00", align 1
@.str.8 = private unnamed_addr constant [138 x i8] c"Found mst protected attribute but the attribute is encrypted.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Found encrypted non-data attribute.\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Attribute name is placed after the attribute value.\00", align 1
@.str.11 = private unnamed_addr constant [137 x i8] c"Found mst protected attribute but the attribute is resident.  Please report you saw this message to linux-ntfs-dev@lists.sourceforge.net\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"Resident attribute is corrupt (size exceeds allocation).\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"Attribute name is placed after the mapping pairs array.\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"Found non-standard compression unit (%u instead of 4).  Cannot handle this.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [51 x i8] c"First extent of attribute has non-zero lowest_vcn.\00", align 1
@ntfs_mst_aops = common dso_local global i32 0, align 4
@ntfs_aops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [161 x i8] c"Failed with error code %i while reading attribute inode (mft_no 0x%lx, type 0x%x, name_len %i).  Marking corrupt inode and base inode 0x%lx as bad.  Run chkdsk.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*)* @ntfs_read_locked_attr_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_read_locked_attr_inode(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_37__* @NTFS_SB(i32 %15)
  store %struct.TYPE_37__* %16, %struct.TYPE_37__** %6, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @ntfs_init_big_inode(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call %struct.TYPE_38__* @NTFS_I(%struct.inode* %23)
  store %struct.TYPE_38__* %24, %struct.TYPE_38__** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.TYPE_38__* @NTFS_I(%struct.inode* %25)
  store %struct.TYPE_38__* %26, %struct.TYPE_38__** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 8
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 6
  store i32 %64, i32* %68, align 4
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @S_IFMT, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %78 = call i32* @map_mft_record(%struct.TYPE_38__* %77)
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %2
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @PTR_ERR(i32* %83)
  store i32 %84, i32* %12, align 4
  br label %578

85:                                               ; preds = %2
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call %struct.TYPE_28__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__* %86, i32* %87)
  store %struct.TYPE_28__* %88, %struct.TYPE_28__** %11, align 8
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %90 = icmp ne %struct.TYPE_28__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %563

94:                                               ; preds = %85
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @CASE_SENSITIVE, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %106 = call i32 @ntfs_attr_lookup(i64 %97, i32 %100, i64 %103, i32 %104, i32 0, i32* null, i32 0, %struct.TYPE_28__* %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %563

111:                                              ; preds = %94
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %113, align 8
  store %struct.TYPE_29__* %114, %struct.TYPE_29__** %10, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %119 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %212

123:                                              ; preds = %111
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %181

130:                                              ; preds = %123
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %132 = call i32 @NInoSetCompressed(%struct.TYPE_38__* %131)
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @AT_DATA, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %130
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AT_DATA, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144, %130
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, i8*, ...) @ntfs_error(i32 %152, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0))
  br label %563

154:                                              ; preds = %144, %138
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 4096
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @ntfs_error(i32 %162, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  br label %563

167:                                              ; preds = %154
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ATTR_COMPRESSION_MASK, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @ATTR_IS_COMPRESSED, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = getelementptr inbounds %struct.inode, %struct.inode* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = call i32 (i32, i8*, ...) @ntfs_error(i32 %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %563

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %123
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %183 = call i64 @NInoMstProtected(%struct.TYPE_38__* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @AT_INDEX_ROOT, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %196 = call i64 @NInoCompressed(%struct.TYPE_38__* %195)
  %197 = icmp ne i64 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %200 = call i32 (i32, i8*, ...) @ntfs_error(i32 %194, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.4, i64 0, i64 0), i8* %199)
  br label %563

201:                                              ; preds = %185, %181
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ATTR_IS_SPARSE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %210 = call i32 @NInoSetSparse(%struct.TYPE_38__* %209)
  br label %211

211:                                              ; preds = %208, %201
  br label %212

212:                                              ; preds = %211, %111
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ATTR_IS_ENCRYPTED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %257

219:                                              ; preds = %212
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %221 = call i64 @NInoCompressed(%struct.TYPE_38__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = load %struct.inode*, %struct.inode** %5, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i32 (i32, i8*, ...) @ntfs_error(i32 %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %563

228:                                              ; preds = %219
  %229 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %230 = call i64 @NInoMstProtected(%struct.TYPE_38__* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @AT_INDEX_ROOT, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %232
  %239 = load %struct.inode*, %struct.inode** %5, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (i32, i8*, ...) @ntfs_error(i32 %241, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.8, i64 0, i64 0))
  br label %563

243:                                              ; preds = %232, %228
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @AT_DATA, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load %struct.inode*, %struct.inode** %5, align 8
  %251 = getelementptr inbounds %struct.inode, %struct.inode* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 (i32, i8*, ...) @ntfs_error(i32 %252, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %563

254:                                              ; preds = %243
  %255 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %256 = call i32 @NInoSetEncrypted(%struct.TYPE_38__* %255)
  br label %257

257:                                              ; preds = %254, %212
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %337, label %262

262:                                              ; preds = %257
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %262
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i64 @le16_to_cpu(i32 %270)
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @le16_to_cpu(i32 %276)
  %278 = icmp sge i64 %271, %277
  br label %279

279:                                              ; preds = %267, %262
  %280 = phi i1 [ false, %262 ], [ %278, %267 ]
  %281 = zext i1 %280 to i32
  %282 = call i64 @unlikely(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %279
  %285 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i32, i8*, ...) @ntfs_error(i32 %287, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %563

289:                                              ; preds = %279
  %290 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %291 = call i64 @NInoMstProtected(%struct.TYPE_38__* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load %struct.inode*, %struct.inode** %5, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i32, i8*, ...) @ntfs_error(i32 %296, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.11, i64 0, i64 0))
  br label %563

298:                                              ; preds = %289
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i64 @le32_to_cpu(i32 %303)
  %305 = trunc i64 %304 to i32
  %306 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 8
  %308 = load %struct.inode*, %struct.inode** %5, align 8
  %309 = getelementptr inbounds %struct.inode, %struct.inode* %308, i32 0, i32 1
  store i32 %305, i32* %309, align 4
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = call i64 @le32_to_cpu(i32 %312)
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i64 @le16_to_cpu(i32 %318)
  %320 = sub nsw i64 %313, %319
  %321 = trunc i64 %320 to i32
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 4
  %324 = load %struct.inode*, %struct.inode** %5, align 8
  %325 = getelementptr inbounds %struct.inode, %struct.inode* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp sgt i32 %326, %329
  br i1 %330, label %331, label %336

331:                                              ; preds = %298
  %332 = load %struct.inode*, %struct.inode** %5, align 8
  %333 = getelementptr inbounds %struct.inode, %struct.inode* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i32, i8*, ...) @ntfs_error(i32 %334, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  br label %563

336:                                              ; preds = %298
  br label %505

337:                                              ; preds = %257
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %339 = call i32 @NInoSetNonResident(%struct.TYPE_38__* %338)
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %337
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i64 @le16_to_cpu(i32 %347)
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 4
  %354 = call i64 @le16_to_cpu(i32 %353)
  %355 = icmp sge i64 %348, %354
  br label %356

356:                                              ; preds = %344, %337
  %357 = phi i1 [ false, %337 ], [ %355, %344 ]
  %358 = zext i1 %357 to i32
  %359 = call i64 @unlikely(i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = call i32 (i32, i8*, ...) @ntfs_error(i32 %364, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %563

366:                                              ; preds = %356
  %367 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %368 = call i64 @NInoCompressed(%struct.TYPE_38__* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %372 = call i64 @NInoSparse(%struct.TYPE_38__* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %465

374:                                              ; preds = %370, %366
  %375 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %376 = call i64 @NInoCompressed(%struct.TYPE_38__* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %397

378:                                              ; preds = %374
  %379 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp ne i32 %383, 4
  br i1 %384, label %385, label %397

385:                                              ; preds = %378
  %386 = load %struct.inode*, %struct.inode** %5, align 8
  %387 = getelementptr inbounds %struct.inode, %struct.inode* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 (i32, i8*, ...) @ntfs_error(i32 %388, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0), i32 %393)
  %395 = load i32, i32* @EOPNOTSUPP, align 4
  %396 = sub nsw i32 0, %395
  store i32 %396, i32* %12, align 4
  br label %563

397:                                              ; preds = %378, %374
  %398 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %399 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %440

404:                                              ; preds = %397
  %405 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = add i32 %409, %412
  %414 = shl i32 1, %413
  %415 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %417, i32 0, i32 0
  store i32 %414, i32* %418, align 8
  %419 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %419, i32 0, i32 6
  %421 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i64 @ffs(i32 %423)
  %425 = sub nsw i64 %424, 1
  %426 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %426, i32 0, i32 6
  %428 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %428, i32 0, i32 3
  store i64 %425, i64* %429, align 8
  %430 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = shl i32 1, %434
  %436 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %437 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %436, i32 0, i32 6
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %438, i32 0, i32 1
  store i32 %435, i32* %439, align 4
  br label %453

440:                                              ; preds = %397
  %441 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %441, i32 0, i32 6
  %443 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %443, i32 0, i32 0
  store i32 0, i32* %444, align 8
  %445 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %445, i32 0, i32 6
  %447 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %447, i32 0, i32 3
  store i64 0, i64* %448, align 8
  %449 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %449, i32 0, i32 6
  %451 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %451, i32 0, i32 1
  store i32 0, i32* %452, align 4
  br label %453

453:                                              ; preds = %440, %404
  %454 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = call i8* @sle64_to_cpu(i32 %458)
  %460 = ptrtoint i8* %459 to i32
  %461 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %461, i32 0, i32 6
  %463 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %463, i32 0, i32 2
  store i32 %460, i32* %464, align 8
  br label %465

465:                                              ; preds = %453, %370
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %467 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %468, i32 0, i32 4
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %465
  %473 = load %struct.inode*, %struct.inode** %5, align 8
  %474 = getelementptr inbounds %struct.inode, %struct.inode* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 8
  %476 = call i32 (i32, i8*, ...) @ntfs_error(i32 %475, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  br label %563

477:                                              ; preds = %465
  %478 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = call i8* @sle64_to_cpu(i32 %482)
  %484 = ptrtoint i8* %483 to i32
  %485 = load %struct.inode*, %struct.inode** %5, align 8
  %486 = getelementptr inbounds %struct.inode, %struct.inode* %485, i32 0, i32 1
  store i32 %484, i32* %486, align 4
  %487 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = call i8* @sle64_to_cpu(i32 %491)
  %493 = ptrtoint i8* %492 to i32
  %494 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %494, i32 0, i32 1
  store i32 %493, i32* %495, align 8
  %496 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %497 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = call i8* @sle64_to_cpu(i32 %500)
  %502 = ptrtoint i8* %501 to i32
  %503 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %503, i32 0, i32 2
  store i32 %502, i32* %504, align 4
  br label %505

505:                                              ; preds = %477, %336
  %506 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %507 = call i64 @NInoMstProtected(%struct.TYPE_38__* %506)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %505
  %510 = load %struct.inode*, %struct.inode** %5, align 8
  %511 = getelementptr inbounds %struct.inode, %struct.inode* %510, i32 0, i32 4
  %512 = load %struct.TYPE_33__*, %struct.TYPE_33__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %512, i32 0, i32 0
  store i32* @ntfs_mst_aops, i32** %513, align 8
  br label %519

514:                                              ; preds = %505
  %515 = load %struct.inode*, %struct.inode** %5, align 8
  %516 = getelementptr inbounds %struct.inode, %struct.inode* %515, i32 0, i32 4
  %517 = load %struct.TYPE_33__*, %struct.TYPE_33__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %517, i32 0, i32 0
  store i32* @ntfs_aops, i32** %518, align 8
  br label %519

519:                                              ; preds = %514, %509
  %520 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %521 = call i64 @NInoCompressed(%struct.TYPE_38__* %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %527, label %523

523:                                              ; preds = %519
  %524 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %525 = call i64 @NInoSparse(%struct.TYPE_38__* %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %542

527:                                              ; preds = %523, %519
  %528 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @AT_INDEX_ROOT, align 8
  %532 = icmp ne i64 %530, %531
  br i1 %532, label %533, label %542

533:                                              ; preds = %527
  %534 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %534, i32 0, i32 6
  %536 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = ashr i32 %538, 9
  %540 = load %struct.inode*, %struct.inode** %5, align 8
  %541 = getelementptr inbounds %struct.inode, %struct.inode* %540, i32 0, i32 2
  store i32 %539, i32* %541, align 8
  br label %549

542:                                              ; preds = %527, %523
  %543 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = ashr i32 %545, 9
  %547 = load %struct.inode*, %struct.inode** %5, align 8
  %548 = getelementptr inbounds %struct.inode, %struct.inode* %547, i32 0, i32 2
  store i32 %546, i32* %548, align 8
  br label %549

549:                                              ; preds = %542, %533
  %550 = load %struct.inode*, %struct.inode** %4, align 8
  %551 = call i32 @igrab(%struct.inode* %550)
  %552 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %553 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %554 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %553, i32 0, i32 5
  %555 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %554, i32 0, i32 0
  store %struct.TYPE_38__* %552, %struct.TYPE_38__** %555, align 8
  %556 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %556, i32 0, i32 3
  store i32 -1, i32* %557, align 8
  %558 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %559 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__* %558)
  %560 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %561 = call i32 @unmap_mft_record(%struct.TYPE_38__* %560)
  %562 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %607

563:                                              ; preds = %472, %385, %361, %331, %293, %284, %249, %238, %223, %191, %175, %159, %149, %110, %91
  %564 = load i32, i32* %12, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load i32, i32* @EIO, align 4
  %568 = sub nsw i32 0, %567
  store i32 %568, i32* %12, align 4
  br label %569

569:                                              ; preds = %566, %563
  %570 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %571 = icmp ne %struct.TYPE_28__* %570, null
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %574 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__* %573)
  br label %575

575:                                              ; preds = %572, %569
  %576 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %577 = call i32 @unmap_mft_record(%struct.TYPE_38__* %576)
  br label %578

578:                                              ; preds = %575, %82
  %579 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %580 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %579, i32 0, i32 2
  %581 = load i32, i32* %580, align 4
  %582 = load i32, i32* %12, align 4
  %583 = load %struct.inode*, %struct.inode** %5, align 8
  %584 = getelementptr inbounds %struct.inode, %struct.inode* %583, i32 0, i32 3
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %587 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %589, i32 0, i32 4
  %591 = load i64, i64* %590, align 8
  %592 = load %struct.inode*, %struct.inode** %4, align 8
  %593 = getelementptr inbounds %struct.inode, %struct.inode* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 4
  %595 = call i32 (i32, i8*, ...) @ntfs_error(i32 %581, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.17, i64 0, i64 0), i32 %582, i32 %585, i64 %588, i64 %591, i32 %594)
  %596 = load %struct.inode*, %struct.inode** %5, align 8
  %597 = call i32 @make_bad_inode(%struct.inode* %596)
  %598 = load i32, i32* %12, align 4
  %599 = load i32, i32* @ENOMEM, align 4
  %600 = sub nsw i32 0, %599
  %601 = icmp ne i32 %598, %600
  br i1 %601, label %602, label %605

602:                                              ; preds = %578
  %603 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %604 = call i32 @NVolSetErrors(%struct.TYPE_37__* %603)
  br label %605

605:                                              ; preds = %602, %578
  %606 = load i32, i32* %12, align 4
  store i32 %606, i32* %3, align 4
  br label %607

607:                                              ; preds = %605, %549
  %608 = load i32, i32* %3, align 4
  ret i32 %608
}

declare dso_local %struct.TYPE_37__* @NTFS_SB(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @ntfs_init_big_inode(%struct.inode*) #1

declare dso_local %struct.TYPE_38__* @NTFS_I(%struct.inode*) #1

declare dso_local i32* @map_mft_record(%struct.TYPE_38__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.TYPE_28__* @ntfs_attr_get_search_ctx(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @ntfs_attr_lookup(i64, i32, i64, i32, i32, i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NInoSetCompressed(%struct.TYPE_38__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local i64 @NInoMstProtected(%struct.TYPE_38__*) #1

declare dso_local i64 @NInoCompressed(%struct.TYPE_38__*) #1

declare dso_local i32 @NInoSetSparse(%struct.TYPE_38__*) #1

declare dso_local i32 @NInoSetEncrypted(%struct.TYPE_38__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @NInoSetNonResident(%struct.TYPE_38__*) #1

declare dso_local i64 @NInoSparse(%struct.TYPE_38__*) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i8* @sle64_to_cpu(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_28__*) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_38__*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
