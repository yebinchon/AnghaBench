; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_use_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_data.c_xfs_dir2_data_use_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }

@XFS_DIR2_DATA_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_BLOCK_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_use_free(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_20__* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %15, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = load i64, i64* @XFS_DIR2_DATA_MAGIC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %7
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = load i64, i64* @XFS_DIR2_BLOCK_MAGIC, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %33, %7
  %42 = phi i1 [ true, %7 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @be16_to_cpu(i64 %47)
  %49 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = bitcast %struct.TYPE_20__* %55 to i8*
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %58 = bitcast %struct.TYPE_21__* %57 to i8*
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = icmp sge i64 %54, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %70 = bitcast %struct.TYPE_20__* %69 to i8*
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @be16_to_cpu(i64 %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %78 = bitcast %struct.TYPE_21__* %77 to i8*
  %79 = ptrtoint i8* %76 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = icmp sle i64 %68, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %86 = bitcast %struct.TYPE_20__* %85 to i8*
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %88 = bitcast %struct.TYPE_21__* %87 to i8*
  %89 = ptrtoint i8* %86 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = call i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__* %92)
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @be16_to_cpu(i64 %94)
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %91, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %102 = call %struct.TYPE_22__* @xfs_dir2_data_freefind(%struct.TYPE_21__* %100, %struct.TYPE_20__* %101)
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %16, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @be16_to_cpu(i64 %105)
  store i32 %106, i32* %22, align 4
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %108 = icmp ne %struct.TYPE_22__* %107, null
  br i1 %108, label %120, label %109

109:                                              ; preds = %41
  %110 = load i32, i32* %22, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i64 2
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @be16_to_cpu(i64 %117)
  %119 = icmp sle i32 %110, %118
  br label %120

120:                                              ; preds = %109, %41
  %121 = phi i1 [ true, %41 ], [ %119, %109 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = bitcast %struct.TYPE_20__* %124 to i8*
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %127 = bitcast %struct.TYPE_21__* %126 to i8*
  %128 = ptrtoint i8* %125 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %130, %132
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %18, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = bitcast %struct.TYPE_20__* %135 to i8*
  %137 = load i32, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %141 = bitcast %struct.TYPE_21__* %140 to i8*
  %142 = ptrtoint i8* %139 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = icmp eq i64 %144, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @ASSERT(i32 %154)
  store i32 0, i32* %19, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %120
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %158
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %163 = icmp ne %struct.TYPE_22__* %162, null
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i64 2
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %19, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %164
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_21__* %177, %struct.TYPE_22__* %178, i32* %179)
  br label %181

181:                                              ; preds = %176, %164
  br label %182

182:                                              ; preds = %181, %161
  br label %462

183:                                              ; preds = %158, %120
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %272

186:                                              ; preds = %183
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %188 = bitcast %struct.TYPE_21__* %187 to i8*
  %189 = load i32, i32* %11, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = bitcast i8* %194 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %195, %struct.TYPE_20__** %20, align 8
  %196 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %197 = call i8* @cpu_to_be16(i32 %196)
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %12, align 4
  %203 = sub nsw i32 %201, %202
  %204 = call i8* @cpu_to_be16(i32 %203)
  %205 = ptrtoint i8* %204 to i64
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %209 = bitcast %struct.TYPE_20__* %208 to i8*
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %211 = bitcast %struct.TYPE_21__* %210 to i8*
  %212 = ptrtoint i8* %209 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = call i8* @cpu_to_be16(i32 %215)
  %217 = ptrtoint i8* %216 to i64
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %219 = call i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__* %218)
  store i64 %217, i64* %219, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %223 = call i32 @xfs_dir2_data_log_unused(i32* %220, %struct.TYPE_23__* %221, %struct.TYPE_20__* %222)
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %225 = icmp ne %struct.TYPE_22__* %224, null
  br i1 %225, label %226, label %271

226:                                              ; preds = %186
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %229 = load i32*, i32** %13, align 8
  %230 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_21__* %227, %struct.TYPE_22__* %228, i32* %229)
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %233 = load i32*, i32** %13, align 8
  %234 = call %struct.TYPE_22__* @xfs_dir2_data_freeinsert(%struct.TYPE_21__* %231, %struct.TYPE_20__* %232, i32* %233)
  store %struct.TYPE_22__* %234, %struct.TYPE_22__** %16, align 8
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %236 = icmp ne %struct.TYPE_22__* %235, null
  %237 = zext i1 %236 to i32
  %238 = call i32 @ASSERT(i32 %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %241, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @ASSERT(i32 %246)
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @be16_to_cpu(i64 %250)
  %252 = sext i32 %251 to i64
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %254 = bitcast %struct.TYPE_20__* %253 to i8*
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %256 = bitcast %struct.TYPE_21__* %255 to i8*
  %257 = ptrtoint i8* %254 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = icmp eq i64 %252, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 @ASSERT(i32 %261)
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i64 2
  %269 = icmp eq %struct.TYPE_22__* %263, %268
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %19, align 4
  br label %271

271:                                              ; preds = %226, %186
  br label %461

272:                                              ; preds = %183
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %356

275:                                              ; preds = %272
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %276, %struct.TYPE_20__** %20, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %278 = bitcast %struct.TYPE_21__* %277 to i8*
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %283 = bitcast %struct.TYPE_20__* %282 to i8*
  %284 = ptrtoint i8* %281 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = trunc i64 %286 to i32
  %288 = call i8* @cpu_to_be16(i32 %287)
  %289 = ptrtoint i8* %288 to i64
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %293 = bitcast %struct.TYPE_20__* %292 to i8*
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %295 = bitcast %struct.TYPE_21__* %294 to i8*
  %296 = ptrtoint i8* %293 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = call i8* @cpu_to_be16(i32 %299)
  %301 = ptrtoint i8* %300 to i64
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %303 = call i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__* %302)
  store i64 %301, i64* %303, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %307 = call i32 @xfs_dir2_data_log_unused(i32* %304, %struct.TYPE_23__* %305, %struct.TYPE_20__* %306)
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %309 = icmp ne %struct.TYPE_22__* %308, null
  br i1 %309, label %310, label %355

310:                                              ; preds = %275
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %313 = load i32*, i32** %13, align 8
  %314 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_21__* %311, %struct.TYPE_22__* %312, i32* %313)
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %317 = load i32*, i32** %13, align 8
  %318 = call %struct.TYPE_22__* @xfs_dir2_data_freeinsert(%struct.TYPE_21__* %315, %struct.TYPE_20__* %316, i32* %317)
  store %struct.TYPE_22__* %318, %struct.TYPE_22__** %16, align 8
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %320 = icmp ne %struct.TYPE_22__* %319, null
  %321 = zext i1 %320 to i32
  %322 = call i32 @ASSERT(i32 %321)
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %325, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @ASSERT(i32 %330)
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @be16_to_cpu(i64 %334)
  %336 = sext i32 %335 to i64
  %337 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %338 = bitcast %struct.TYPE_20__* %337 to i8*
  %339 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %340 = bitcast %struct.TYPE_21__* %339 to i8*
  %341 = ptrtoint i8* %338 to i64
  %342 = ptrtoint i8* %340 to i64
  %343 = sub i64 %341, %342
  %344 = icmp eq i64 %336, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @ASSERT(i32 %345)
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %348 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i64 2
  %353 = icmp eq %struct.TYPE_22__* %347, %352
  %354 = zext i1 %353 to i32
  store i32 %354, i32* %19, align 4
  br label %355

355:                                              ; preds = %310, %275
  br label %460

356:                                              ; preds = %272
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %357, %struct.TYPE_20__** %20, align 8
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %359 = bitcast %struct.TYPE_21__* %358 to i8*
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %364 = bitcast %struct.TYPE_20__* %363 to i8*
  %365 = ptrtoint i8* %362 to i64
  %366 = ptrtoint i8* %364 to i64
  %367 = sub i64 %365, %366
  %368 = trunc i64 %367 to i32
  %369 = call i8* @cpu_to_be16(i32 %368)
  %370 = ptrtoint i8* %369 to i64
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 1
  store i64 %370, i64* %372, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %374 = bitcast %struct.TYPE_20__* %373 to i8*
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %376 = bitcast %struct.TYPE_21__* %375 to i8*
  %377 = ptrtoint i8* %374 to i64
  %378 = ptrtoint i8* %376 to i64
  %379 = sub i64 %377, %378
  %380 = trunc i64 %379 to i32
  %381 = call i8* @cpu_to_be16(i32 %380)
  %382 = ptrtoint i8* %381 to i64
  %383 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %384 = call i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__* %383)
  store i64 %382, i64* %384, align 8
  %385 = load i32*, i32** %8, align 8
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %387 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %388 = call i32 @xfs_dir2_data_log_unused(i32* %385, %struct.TYPE_23__* %386, %struct.TYPE_20__* %387)
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %390 = bitcast %struct.TYPE_21__* %389 to i8*
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8, i8* %393, i64 %395
  %397 = bitcast i8* %396 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %397, %struct.TYPE_20__** %21, align 8
  %398 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %399 = call i8* @cpu_to_be16(i32 %398)
  %400 = ptrtoint i8* %399 to i64
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 0
  store i64 %400, i64* %402, align 8
  %403 = load i32, i32* %22, align 4
  %404 = load i32, i32* %12, align 4
  %405 = sub nsw i32 %403, %404
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @be16_to_cpu(i64 %408)
  %410 = sub nsw i32 %405, %409
  %411 = call i8* @cpu_to_be16(i32 %410)
  %412 = ptrtoint i8* %411 to i64
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 1
  store i64 %412, i64* %414, align 8
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %416 = bitcast %struct.TYPE_20__* %415 to i8*
  %417 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %418 = bitcast %struct.TYPE_21__* %417 to i8*
  %419 = ptrtoint i8* %416 to i64
  %420 = ptrtoint i8* %418 to i64
  %421 = sub i64 %419, %420
  %422 = trunc i64 %421 to i32
  %423 = call i8* @cpu_to_be16(i32 %422)
  %424 = ptrtoint i8* %423 to i64
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %426 = call i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__* %425)
  store i64 %424, i64* %426, align 8
  %427 = load i32*, i32** %8, align 8
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %430 = call i32 @xfs_dir2_data_log_unused(i32* %427, %struct.TYPE_23__* %428, %struct.TYPE_20__* %429)
  %431 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %432 = icmp ne %struct.TYPE_22__* %431, null
  br i1 %432, label %433, label %459

433:                                              ; preds = %356
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i64 2
  %439 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = icmp ne i64 %440, 0
  %442 = zext i1 %441 to i32
  store i32 %442, i32* %19, align 4
  %443 = load i32, i32* %19, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %458, label %445

445:                                              ; preds = %433
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %448 = load i32*, i32** %13, align 8
  %449 = call i32 @xfs_dir2_data_freeremove(%struct.TYPE_21__* %446, %struct.TYPE_22__* %447, i32* %448)
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %452 = load i32*, i32** %13, align 8
  %453 = call %struct.TYPE_22__* @xfs_dir2_data_freeinsert(%struct.TYPE_21__* %450, %struct.TYPE_20__* %451, i32* %452)
  %454 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %456 = load i32*, i32** %13, align 8
  %457 = call %struct.TYPE_22__* @xfs_dir2_data_freeinsert(%struct.TYPE_21__* %454, %struct.TYPE_20__* %455, i32* %456)
  br label %458

458:                                              ; preds = %445, %433
  br label %459

459:                                              ; preds = %458, %356
  br label %460

460:                                              ; preds = %459, %355
  br label %461

461:                                              ; preds = %460, %271
  br label %462

462:                                              ; preds = %461, %182
  %463 = load i32, i32* %19, align 4
  %464 = load i32*, i32** %14, align 8
  store i32 %463, i32* %464, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i64* @xfs_dir2_data_unused_tag_p(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @xfs_dir2_data_freefind(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @xfs_dir2_data_freeremove(%struct.TYPE_21__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_data_log_unused(i32*, %struct.TYPE_23__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @xfs_dir2_data_freeinsert(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
