; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_split_unwritten_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_split_unwritten_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i8*, i8* }
%struct.ext4_extent_header = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"ext4_split_unwritten_extents: inode %lu, logicalblock %llu, max_blocks %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"out here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, i32, i32, i32)* @ext4_split_unwritten_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_split_unwritten_extents(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent, align 8
  %16 = alloca %struct.ext4_extent, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca %struct.ext4_extent*, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca %struct.ext4_extent_header*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ext4_extent* null, %struct.ext4_extent** %17, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %18, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %19, align 8
  store i32 0, i32* %27, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %34, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %39, %44
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %46, %51
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %54, %55
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %6
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %59, %60
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %58, %6
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = call i32 @ext_depth(%struct.inode* %63)
  store i32 %64, i32* %25, align 4
  %65 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %66 = load i32, i32* %25, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %65, i64 %67
  %69 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %68, i32 0, i32 1
  %70 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %69, align 8
  store %struct.ext4_extent_header* %70, %struct.ext4_extent_header** %20, align 8
  %71 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %72 = load i32, i32* %25, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i64 %73
  %75 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %74, i32 0, i32 0
  %76 = load %struct.ext4_extent*, %struct.ext4_extent** %75, align 8
  store %struct.ext4_extent* %76, %struct.ext4_extent** %14, align 8
  %77 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %78 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @le32_to_cpu(i8* %79)
  store i32 %80, i32* %21, align 4
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %82 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %81)
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %21, align 4
  %86 = sub i32 %84, %85
  %87 = sub i32 %83, %86
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %21, align 4
  %90 = sub i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %93 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %92)
  %94 = add nsw i64 %91, %93
  store i64 %94, i64* %26, align 8
  %95 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %95, %struct.ext4_extent** %18, align 8
  %96 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %97 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %24, align 4
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %101, i8** %102, align 8
  %103 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %104 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %103)
  %105 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %16, i64 %104)
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %24, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* %22, align 4
  %110 = icmp ule i32 %108, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %28, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %62
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ule i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %23, align 4
  store i32 %120, i32* %7, align 4
  br label %442

121:                                              ; preds = %115, %62
  %122 = load i32*, i32** %8, align 8
  %123 = load %struct.inode*, %struct.inode** %9, align 8
  %124 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %125 = load i32, i32* %25, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %124, i64 %126
  %128 = call i32 @ext4_ext_get_access(i32* %122, %struct.inode* %123, %struct.ext4_ext_path* %127)
  store i32 %128, i32* %27, align 4
  %129 = load i32, i32* %27, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %408

132:                                              ; preds = %121
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp ugt i32 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %137, %struct.ext4_extent** %17, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %21, align 4
  %140 = sub i32 %138, %139
  %141 = call i8* @cpu_to_le16(i32 %140)
  %142 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %143 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %145 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = load %struct.inode*, %struct.inode** %9, align 8
  %148 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %149 = load i32, i32* %25, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %148, i64 %150
  %152 = call i32 @ext4_ext_dirty(i32* %146, %struct.inode* %147, %struct.ext4_ext_path* %151)
  store %struct.ext4_extent* %15, %struct.ext4_extent** %18, align 8
  br label %153

153:                                              ; preds = %136, %132
  %154 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %155 = icmp ne %struct.ext4_extent* %154, null
  br i1 %155, label %165, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp ugt i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %164 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %160, %156, %153
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp ugt i32 %166, %167
  br i1 %168, label %169, label %311

169:                                              ; preds = %165
  store %struct.ext4_extent* %15, %struct.ext4_extent** %19, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add i32 %170, %171
  %173 = call i8* @cpu_to_le32(i32 %172)
  %174 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %175 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %177 = load i64, i64* %26, align 8
  %178 = load i32, i32* %12, align 4
  %179 = zext i32 %178 to i64
  %180 = add nsw i64 %177, %179
  %181 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %176, i64 %180)
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* %12, align 4
  %184 = sub i32 %182, %183
  %185 = call i8* @cpu_to_le16(i32 %184)
  %186 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %187 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  %188 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %189 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %188)
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.inode*, %struct.inode** %9, align 8
  %192 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %193 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @ext4_ext_insert_extent(i32* %190, %struct.inode* %191, %struct.ext4_ext_path* %192, %struct.ext4_extent* %193, i32 %194)
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load i32, i32* @ENOSPC, align 4
  %198 = sub nsw i32 0, %197
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %247

200:                                              ; preds = %169
  %201 = load i32, i32* %28, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %247

203:                                              ; preds = %200
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @EXT4_EXT_DATA_VALID, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  %209 = load %struct.inode*, %struct.inode** %9, align 8
  %210 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %211 = call i32 @ext4_ext_zeroout(%struct.inode* %209, %struct.ext4_extent* %210)
  store i32 %211, i32* %27, align 4
  %212 = load i32, i32* %27, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %420

215:                                              ; preds = %208
  %216 = load i32, i32* %23, align 4
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* %12, align 4
  %218 = call i8* @cpu_to_le16(i32 %217)
  %219 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %220 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  br label %312

221:                                              ; preds = %203
  %222 = load %struct.inode*, %struct.inode** %9, align 8
  %223 = call i32 @ext4_ext_zeroout(%struct.inode* %222, %struct.ext4_extent* %16)
  store i32 %223, i32* %27, align 4
  %224 = load i32, i32* %27, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %420

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %231 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %235 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  %236 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %237 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %238 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %236, i64 %237)
  %239 = load i32*, i32** %8, align 8
  %240 = load %struct.inode*, %struct.inode** %9, align 8
  %241 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %242 = load i32, i32* %25, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %241, i64 %243
  %245 = call i32 @ext4_ext_dirty(i32* %239, %struct.inode* %240, %struct.ext4_ext_path* %244)
  %246 = load i32, i32* %23, align 4
  store i32 %246, i32* %7, align 4
  br label %442

247:                                              ; preds = %200, %169
  %248 = load i32, i32* %27, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %420

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.inode*, %struct.inode** %9, align 8
  %254 = call i32 @ext_depth(%struct.inode* %253)
  store i32 %254, i32* %29, align 4
  %255 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %256 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %255)
  %257 = load i32, i32* %24, align 4
  %258 = sub i32 %257, %256
  store i32 %258, i32* %24, align 4
  %259 = load i32, i32* %24, align 4
  %260 = call i8* @cpu_to_le16(i32 %259)
  %261 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  store i8* %260, i8** %261, align 8
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %24, align 4
  %264 = add i32 %262, %263
  %265 = load i32, i32* %22, align 4
  %266 = icmp ule i32 %264, %265
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %28, align 4
  %268 = load i32, i32* %29, align 4
  store i32 %268, i32* %25, align 4
  %269 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %270 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %269)
  %271 = load %struct.inode*, %struct.inode** %9, align 8
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %274 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %271, i32 %272, %struct.ext4_ext_path* %273)
  store %struct.ext4_ext_path* %274, %struct.ext4_ext_path** %10, align 8
  %275 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %276 = call i64 @IS_ERR(%struct.ext4_ext_path* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %252
  %279 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %280 = call i32 @PTR_ERR(%struct.ext4_ext_path* %279)
  store i32 %280, i32* %27, align 4
  br label %408

281:                                              ; preds = %252
  %282 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %283 = load i32, i32* %25, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %282, i64 %284
  %286 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %285, i32 0, i32 1
  %287 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %286, align 8
  store %struct.ext4_extent_header* %287, %struct.ext4_extent_header** %20, align 8
  %288 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %289 = load i32, i32* %25, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %288, i64 %290
  %292 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %291, i32 0, i32 0
  %293 = load %struct.ext4_extent*, %struct.ext4_extent** %292, align 8
  store %struct.ext4_extent* %293, %struct.ext4_extent** %14, align 8
  %294 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %295 = icmp ne %struct.ext4_extent* %294, %15
  br i1 %295, label %296, label %298

296:                                              ; preds = %281
  %297 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %297, %struct.ext4_extent** %18, align 8
  br label %298

298:                                              ; preds = %296, %281
  %299 = load i32*, i32** %8, align 8
  %300 = load %struct.inode*, %struct.inode** %9, align 8
  %301 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %302 = load i32, i32* %25, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %301, i64 %303
  %305 = call i32 @ext4_ext_get_access(i32* %299, %struct.inode* %300, %struct.ext4_ext_path* %304)
  store i32 %305, i32* %27, align 4
  %306 = load i32, i32* %27, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %298
  br label %408

309:                                              ; preds = %298
  %310 = load i32, i32* %12, align 4
  store i32 %310, i32* %23, align 4
  br label %311

311:                                              ; preds = %309, %165
  br label %312

312:                                              ; preds = %311, %215
  %313 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %314 = icmp ne %struct.ext4_extent* %313, null
  br i1 %314, label %315, label %336

315:                                              ; preds = %312
  %316 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %317 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %318 = icmp ne %struct.ext4_extent* %316, %317
  br i1 %318, label %319, label %336

319:                                              ; preds = %315
  %320 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %320, %struct.ext4_extent** %17, align 8
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* %21, align 4
  %323 = sub i32 %321, %322
  %324 = call i8* @cpu_to_le16(i32 %323)
  %325 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %326 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  %327 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %328 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %327)
  %329 = load i32*, i32** %8, align 8
  %330 = load %struct.inode*, %struct.inode** %9, align 8
  %331 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %332 = load i32, i32* %25, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %331, i64 %333
  %335 = call i32 @ext4_ext_dirty(i32* %329, %struct.inode* %330, %struct.ext4_ext_path* %334)
  store %struct.ext4_extent* %15, %struct.ext4_extent** %18, align 8
  br label %336

336:                                              ; preds = %319, %315, %312
  %337 = load i32, i32* %11, align 4
  %338 = call i8* @cpu_to_le32(i32 %337)
  %339 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %340 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %339, i32 0, i32 1
  store i8* %338, i8** %340, align 8
  %341 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %342 = load i64, i64* %26, align 8
  %343 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %341, i64 %342)
  %344 = load i32, i32* %23, align 4
  %345 = call i8* @cpu_to_le16(i32 %344)
  %346 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %347 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %346, i32 0, i32 0
  store i8* %345, i8** %347, align 8
  %348 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %349 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %348)
  %350 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %351 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %352 = icmp ne %struct.ext4_extent* %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %336
  br label %363

354:                                              ; preds = %336
  %355 = load i32*, i32** %8, align 8
  %356 = load %struct.inode*, %struct.inode** %9, align 8
  %357 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %358 = load i32, i32* %25, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %357, i64 %359
  %361 = call i32 @ext4_ext_dirty(i32* %355, %struct.inode* %356, %struct.ext4_ext_path* %360)
  store i32 %361, i32* %27, align 4
  %362 = call i32 (i8*, ...) @ext_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %408

363:                                              ; preds = %353
  %364 = load i32*, i32** %8, align 8
  %365 = load %struct.inode*, %struct.inode** %9, align 8
  %366 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @ext4_ext_insert_extent(i32* %364, %struct.inode* %365, %struct.ext4_ext_path* %366, %struct.ext4_extent* %15, i32 %367)
  store i32 %368, i32* %27, align 4
  %369 = load i32, i32* %27, align 4
  %370 = load i32, i32* @ENOSPC, align 4
  %371 = sub nsw i32 0, %370
  %372 = icmp eq i32 %369, %371
  br i1 %372, label %373, label %402

373:                                              ; preds = %363
  %374 = load i32, i32* %28, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %402

376:                                              ; preds = %373
  %377 = load %struct.inode*, %struct.inode** %9, align 8
  %378 = call i32 @ext4_ext_zeroout(%struct.inode* %377, %struct.ext4_extent* %16)
  store i32 %378, i32* %27, align 4
  %379 = load i32, i32* %27, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  br label %420

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %386 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %385, i32 0, i32 1
  store i8* %384, i8** %386, align 8
  %387 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %390 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %389, i32 0, i32 0
  store i8* %388, i8** %390, align 8
  %391 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %392 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %393 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %391, i64 %392)
  %394 = load i32*, i32** %8, align 8
  %395 = load %struct.inode*, %struct.inode** %9, align 8
  %396 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %397 = load i32, i32* %25, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %396, i64 %398
  %400 = call i32 @ext4_ext_dirty(i32* %394, %struct.inode* %395, %struct.ext4_ext_path* %399)
  %401 = load i32, i32* %23, align 4
  store i32 %401, i32* %7, align 4
  br label %442

402:                                              ; preds = %373, %363
  %403 = load i32, i32* %27, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %420

406:                                              ; preds = %402
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407, %354, %308, %278, %131
  %409 = load %struct.inode*, %struct.inode** %9, align 8
  %410 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %411 = call i32 @ext4_ext_show_leaf(%struct.inode* %409, %struct.ext4_ext_path* %410)
  %412 = load i32, i32* %27, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %408
  %415 = load i32, i32* %27, align 4
  br label %418

416:                                              ; preds = %408
  %417 = load i32, i32* %23, align 4
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i32 [ %415, %414 ], [ %417, %416 ]
  store i32 %419, i32* %7, align 4
  br label %442

420:                                              ; preds = %405, %381, %250, %226, %214
  %421 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 1
  %422 = load i8*, i8** %421, align 8
  %423 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %424 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %423, i32 0, i32 1
  store i8* %422, i8** %424, align 8
  %425 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %16, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %428 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %427, i32 0, i32 0
  store i8* %426, i8** %428, align 8
  %429 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %430 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %16)
  %431 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %429, i64 %430)
  %432 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %433 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %432)
  %434 = load i32*, i32** %8, align 8
  %435 = load %struct.inode*, %struct.inode** %9, align 8
  %436 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %437 = load i32, i32* %25, align 4
  %438 = zext i32 %437 to i64
  %439 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %436, i64 %438
  %440 = call i32 @ext4_ext_dirty(i32* %434, %struct.inode* %435, %struct.ext4_ext_path* %439)
  %441 = load i32, i32* %27, align 4
  store i32 %441, i32* %7, align 4
  br label %442

442:                                              ; preds = %420, %418, %382, %227, %119
  %443 = load i32, i32* %7, align 4
  ret i32 %443
}

declare dso_local i32 @ext_debug(i8*, ...) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_get_access(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_ext_path*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
