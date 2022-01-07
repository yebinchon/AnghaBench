; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_ext4_move_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_ext4_move_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i64, i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"ext4 move extent: The argument files should not be same file [ino:orig %lu, donor %lu]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ext4 move extent: The specified range of file may be the hole\0A\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"We replaced blocks too much! sum of replaced: %llu requested: %llu\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_move_extents(%struct.file* %0, %struct.file* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.ext4_ext_path*, align 8
  %17 = alloca %struct.ext4_ext_path*, align 8
  %18 = alloca %struct.ext4_extent*, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca %struct.ext4_extent*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %38 = load %struct.file*, %struct.file** %8, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.inode*, %struct.inode** %41, align 8
  store %struct.inode* %42, %struct.inode** %14, align 8
  %43 = load %struct.file*, %struct.file** %9, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.inode*, %struct.inode** %46, align 8
  store %struct.inode* %47, %struct.inode** %15, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %16, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %17, align 8
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %21, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %33, align 4
  %49 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %50 = load %struct.inode*, %struct.inode** %14, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %49, %52
  store i32 %53, i32* %34, align 4
  %54 = load %struct.inode*, %struct.inode** %14, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.inode*, %struct.inode** %15, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %6
  %62 = load %struct.inode*, %struct.inode** %14, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %15, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @ext4_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %445

71:                                               ; preds = %6
  %72 = load %struct.inode*, %struct.inode** %14, align 8
  %73 = load %struct.inode*, %struct.inode** %15, align 8
  %74 = call i32 @mext_inode_double_lock(%struct.inode* %72, %struct.inode* %73)
  store i32 %74, i32* %30, align 4
  %75 = load i32, i32* %30, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %30, align 4
  store i32 %78, i32* %7, align 4
  br label %445

79:                                               ; preds = %71
  %80 = load %struct.inode*, %struct.inode** %14, align 8
  %81 = load %struct.inode*, %struct.inode** %15, align 8
  %82 = call i32 @double_down_write_data_sem(%struct.inode* %80, %struct.inode* %81)
  %83 = load %struct.inode*, %struct.inode** %14, align 8
  %84 = load %struct.inode*, %struct.inode** %15, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mext_check_arguments(%struct.inode* %83, %struct.inode* %84, i32 %85, i32 %86, i32* %12)
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %402

91:                                               ; preds = %79
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = call i32 @i_size_read(%struct.inode* %92)
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.inode*, %struct.inode** %14, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = ashr i32 %94, %97
  store i32 %98, i32* %25, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %22, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %25, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %106, %91
  %113 = load %struct.inode*, %struct.inode** %14, align 8
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @get_ext_path(%struct.inode* %113, i32 %114, %struct.ext4_ext_path** %16)
  store i32 %115, i32* %30, align 4
  %116 = load i32, i32* %30, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %402

119:                                              ; preds = %112
  %120 = load %struct.inode*, %struct.inode** %14, align 8
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @get_ext_path(%struct.inode* %120, i32 %121, %struct.ext4_ext_path** %17)
  store i32 %122, i32* %30, align 4
  %123 = load i32, i32* %30, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %402

126:                                              ; preds = %119
  %127 = load %struct.inode*, %struct.inode** %14, align 8
  %128 = call i32 @ext_depth(%struct.inode* %127)
  store i32 %128, i32* %32, align 4
  %129 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %130 = load i32, i32* %32, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %129, i64 %131
  %133 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %132, i32 0, i32 1
  %134 = load %struct.ext4_extent*, %struct.ext4_extent** %133, align 8
  store %struct.ext4_extent* %134, %struct.ext4_extent** %19, align 8
  %135 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %136 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %140 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %139)
  %141 = add nsw i32 %138, %140
  %142 = sub nsw i32 %141, 1
  %143 = load i32, i32* %21, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %126
  %146 = load %struct.inode*, %struct.inode** %14, align 8
  %147 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %148 = call i32 @mext_next_extent(%struct.inode* %146, %struct.ext4_ext_path* %147, %struct.ext4_extent** %19)
  store i32 %148, i32* %33, align 4
  %149 = load i32, i32* %33, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %33, align 4
  store i32 %152, i32* %30, align 4
  br label %402

153:                                              ; preds = %145
  %154 = load %struct.inode*, %struct.inode** %14, align 8
  %155 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %156 = call i32 @mext_next_extent(%struct.inode* %154, %struct.ext4_ext_path* %155, %struct.ext4_extent** %20)
  store i32 %156, i32* %33, align 4
  %157 = load i32, i32* %33, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %33, align 4
  store i32 %160, i32* %30, align 4
  br label %402

161:                                              ; preds = %153
  %162 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %163 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  store i32 %165, i32* %23, align 4
  br label %181

166:                                              ; preds = %126
  %167 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %168 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load i32, i32* %21, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %175 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le32_to_cpu(i32 %176)
  store i32 %177, i32* %23, align 4
  br label %180

178:                                              ; preds = %166
  %179 = load i32, i32* %21, align 4
  store i32 %179, i32* %23, align 4
  br label %180

180:                                              ; preds = %178, %173
  br label %181

181:                                              ; preds = %180, %161
  %182 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %183 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le32_to_cpu(i32 %184)
  %186 = load i32, i32* %22, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = call i32 (i8*, ...) @ext4_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %30, align 4
  br label %402

192:                                              ; preds = %181
  %193 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %194 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %198 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %197)
  %199 = add nsw i32 %196, %198
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %200, 1
  %202 = call i32 @min(i32 %199, i32 %201)
  %203 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %204 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32_to_cpu(i32 %205)
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @max(i32 %206, i32 %207)
  %209 = sub nsw i32 %202, %208
  store i32 %209, i32* %24, align 4
  br label %210

210:                                              ; preds = %392, %264, %192
  %211 = load i32, i32* %33, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %210
  %214 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %215 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le32_to_cpu(i32 %216)
  %218 = load i32, i32* %22, align 4
  %219 = icmp sle i32 %217, %218
  br label %220

220:                                              ; preds = %213, %210
  %221 = phi i1 [ false, %210 ], [ %219, %213 ]
  br i1 %221, label %222, label %401

222:                                              ; preds = %220
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* %26, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %23, align 4
  %227 = load i32, i32* %26, align 4
  %228 = add nsw i32 %226, %227
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* %22, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %222
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %23, align 4
  %235 = sub nsw i32 %233, %234
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %26, align 4
  br label %237

237:                                              ; preds = %232, %222
  %238 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  store %struct.ext4_extent* %238, %struct.ext4_extent** %18, align 8
  %239 = load %struct.inode*, %struct.inode** %14, align 8
  %240 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %241 = call i32 @mext_next_extent(%struct.inode* %239, %struct.ext4_ext_path* %240, %struct.ext4_extent** %19)
  store i32 %241, i32* %33, align 4
  %242 = load i32, i32* %33, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = load i32, i32* %33, align 4
  store i32 %245, i32* %30, align 4
  br label %401

246:                                              ; preds = %237
  %247 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %248 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %247)
  store i32 %248, i32* %24, align 4
  %249 = load %struct.inode*, %struct.inode** %14, align 8
  %250 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %251 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %252 = call i64 @ext4_can_extents_be_merged(%struct.inode* %249, %struct.ext4_extent* %250, %struct.ext4_extent* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %246
  %255 = load i32, i32* %22, align 4
  %256 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %257 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le32_to_cpu(i32 %258)
  %260 = icmp sge i32 %255, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %254
  %262 = load i32, i32* %33, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  br label %210

265:                                              ; preds = %261, %254, %246
  %266 = load %struct.ext4_extent*, %struct.ext4_extent** %18, align 8
  %267 = call i32 @ext4_ext_is_uninitialized(%struct.ext4_extent* %266)
  store i32 %267, i32* %37, align 4
  %268 = load i32, i32* %23, align 4
  %269 = load i32, i32* %34, align 4
  %270 = srem i32 %268, %269
  store i32 %270, i32* %35, align 4
  %271 = load i32, i32* %35, align 4
  %272 = load i32, i32* %26, align 4
  %273 = add nsw i32 %271, %272
  %274 = load i32, i32* %34, align 4
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %265
  %277 = load i32, i32* %34, align 4
  %278 = load i32, i32* %35, align 4
  %279 = sub nsw i32 %277, %278
  store i32 %279, i32* %36, align 4
  br label %282

280:                                              ; preds = %265
  %281 = load i32, i32* %26, align 4
  store i32 %281, i32* %36, align 4
  br label %282

282:                                              ; preds = %280, %276
  %283 = load i32, i32* %23, align 4
  %284 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %285 = load %struct.inode*, %struct.inode** %14, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %284, %287
  %289 = ashr i32 %283, %288
  store i32 %289, i32* %28, align 4
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* %26, align 4
  %292 = add nsw i32 %290, %291
  %293 = sub nsw i32 %292, 1
  %294 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %295 = load %struct.inode*, %struct.inode** %14, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = sub nsw i32 %294, %297
  %299 = ashr i32 %293, %298
  store i32 %299, i32* %29, align 4
  %300 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %301 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @le32_to_cpu(i32 %302)
  store i32 %303, i32* %23, align 4
  %304 = load i32, i32* %26, align 4
  store i32 %304, i32* %27, align 4
  %305 = load %struct.inode*, %struct.inode** %14, align 8
  %306 = load %struct.inode*, %struct.inode** %15, align 8
  %307 = call i32 @double_up_write_data_sem(%struct.inode* %305, %struct.inode* %306)
  br label %308

308:                                              ; preds = %355, %282
  %309 = load i32, i32* %28, align 4
  %310 = load i32, i32* %29, align 4
  %311 = icmp sle i32 %309, %310
  br i1 %311, label %312, label %356

312:                                              ; preds = %308
  %313 = load %struct.file*, %struct.file** %8, align 8
  %314 = load %struct.inode*, %struct.inode** %15, align 8
  %315 = load i32, i32* %28, align 4
  %316 = load i32, i32* %35, align 4
  %317 = load i32, i32* %36, align 4
  %318 = load i32, i32* %37, align 4
  %319 = call i32 @move_extent_per_page(%struct.file* %313, %struct.inode* %314, i32 %315, i32 %316, i32 %317, i32 %318, i32* %30)
  store i32 %319, i32* %36, align 4
  %320 = load i32, i32* %36, align 4
  %321 = load i32*, i32** %13, align 8
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, %320
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* %30, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %312
  br label %356

327:                                              ; preds = %312
  %328 = load i32*, i32** %13, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %12, align 4
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %342

332:                                              ; preds = %327
  %333 = load %struct.inode*, %struct.inode** %14, align 8
  %334 = getelementptr inbounds %struct.inode, %struct.inode* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32*, i32** %13, align 8
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %12, align 4
  %339 = call i32 @ext4_error(i32 %335, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %337, i32 %338)
  %340 = load i32, i32* @EIO, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %30, align 4
  br label %356

342:                                              ; preds = %327
  %343 = load i32, i32* %28, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %28, align 4
  store i32 0, i32* %35, align 4
  %345 = load i32, i32* %36, align 4
  %346 = load i32, i32* %27, align 4
  %347 = sub nsw i32 %346, %345
  store i32 %347, i32* %27, align 4
  %348 = load i32, i32* %27, align 4
  %349 = load i32, i32* %34, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %342
  %352 = load i32, i32* %34, align 4
  store i32 %352, i32* %36, align 4
  br label %355

353:                                              ; preds = %342
  %354 = load i32, i32* %27, align 4
  store i32 %354, i32* %36, align 4
  br label %355

355:                                              ; preds = %353, %351
  br label %308

356:                                              ; preds = %332, %326, %308
  %357 = load %struct.inode*, %struct.inode** %14, align 8
  %358 = load %struct.inode*, %struct.inode** %15, align 8
  %359 = call i32 @double_down_write_data_sem(%struct.inode* %357, %struct.inode* %358)
  %360 = load i32, i32* %30, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  br label %401

363:                                              ; preds = %356
  %364 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %365 = icmp ne %struct.ext4_ext_path* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %368 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %367)
  br label %369

369:                                              ; preds = %366, %363
  %370 = load %struct.inode*, %struct.inode** %14, align 8
  %371 = load i32, i32* %23, align 4
  %372 = call i32 @get_ext_path(%struct.inode* %370, i32 %371, %struct.ext4_ext_path** %17)
  store i32 %372, i32* %30, align 4
  %373 = load i32, i32* %30, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %369
  br label %401

376:                                              ; preds = %369
  %377 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %378 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  store i32 %379, i32* %32, align 4
  %380 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %381 = icmp ne %struct.ext4_ext_path* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %376
  %383 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %384 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %383)
  br label %385

385:                                              ; preds = %382, %376
  %386 = load %struct.inode*, %struct.inode** %14, align 8
  %387 = load i32, i32* %23, align 4
  %388 = call i32 @get_ext_path(%struct.inode* %386, i32 %387, %struct.ext4_ext_path** %16)
  store i32 %388, i32* %30, align 4
  %389 = load i32, i32* %30, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  br label %401

392:                                              ; preds = %385
  %393 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %394 = load i32, i32* %32, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %393, i64 %395
  %397 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %396, i32 0, i32 1
  %398 = load %struct.ext4_extent*, %struct.ext4_extent** %397, align 8
  store %struct.ext4_extent* %398, %struct.ext4_extent** %19, align 8
  %399 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %400 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %399)
  store i32 %400, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %210

401:                                              ; preds = %391, %375, %362, %244, %220
  br label %402

402:                                              ; preds = %401, %188, %159, %151, %125, %118, %90
  %403 = load i32*, i32** %13, align 8
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %402
  %407 = load %struct.inode*, %struct.inode** %14, align 8
  %408 = call i32 @ext4_discard_preallocations(%struct.inode* %407)
  %409 = load %struct.inode*, %struct.inode** %15, align 8
  %410 = call i32 @ext4_discard_preallocations(%struct.inode* %409)
  br label %411

411:                                              ; preds = %406, %402
  %412 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %413 = icmp ne %struct.ext4_ext_path* %412, null
  br i1 %413, label %414, label %419

414:                                              ; preds = %411
  %415 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %416 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %415)
  %417 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %418 = call i32 @kfree(%struct.ext4_ext_path* %417)
  br label %419

419:                                              ; preds = %414, %411
  %420 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %421 = icmp ne %struct.ext4_ext_path* %420, null
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  %423 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %424 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %423)
  %425 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %17, align 8
  %426 = call i32 @kfree(%struct.ext4_ext_path* %425)
  br label %427

427:                                              ; preds = %422, %419
  %428 = load %struct.inode*, %struct.inode** %14, align 8
  %429 = load %struct.inode*, %struct.inode** %15, align 8
  %430 = call i32 @double_up_write_data_sem(%struct.inode* %428, %struct.inode* %429)
  %431 = load %struct.inode*, %struct.inode** %14, align 8
  %432 = load %struct.inode*, %struct.inode** %15, align 8
  %433 = call i32 @mext_inode_double_unlock(%struct.inode* %431, %struct.inode* %432)
  store i32 %433, i32* %31, align 4
  %434 = load i32, i32* %30, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %427
  %437 = load i32, i32* %30, align 4
  store i32 %437, i32* %7, align 4
  br label %445

438:                                              ; preds = %427
  %439 = load i32, i32* %31, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %438
  %442 = load i32, i32* %31, align 4
  store i32 %442, i32* %7, align 4
  br label %445

443:                                              ; preds = %438
  br label %444

444:                                              ; preds = %443
  store i32 0, i32* %7, align 4
  br label %445

445:                                              ; preds = %444, %441, %436, %77, %61
  %446 = load i32, i32* %7, align 4
  ret i32 %446
}

declare dso_local i32 @ext4_debug(i8*, ...) #1

declare dso_local i32 @mext_inode_double_lock(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @double_down_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @mext_check_arguments(%struct.inode*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @get_ext_path(%struct.inode*, i32, %struct.ext4_ext_path**) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @mext_next_extent(%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent**) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @ext4_can_extents_be_merged(%struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @double_up_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @move_extent_per_page(%struct.file*, %struct.inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ext4_error(i32, i8*, i32, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local i32 @mext_inode_double_unlock(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
