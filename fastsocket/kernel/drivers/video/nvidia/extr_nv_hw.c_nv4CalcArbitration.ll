; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nv4CalcArbitration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nv4CalcArbitration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @nv4CalcArbitration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv4CalcArbitration(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %38 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %24, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %23, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %25, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 6
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %26, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %34, align 4
  store i32 128, i32* %20, align 4
  store i32 2, i32* %13, align 4
  store i32 2, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  store i32 5, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 3
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  store i32 3, i32* %18, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %26, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %2
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %2
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 0
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 0
  store i32 %105, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %338, %101
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %109, label %353

109:                                              ; preds = %106
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  store i32 1, i32* %17, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = mul nsw i32 %115, 1000
  %117 = mul nsw i32 %116, 1000
  %118 = load i32, i32* %23, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %27, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %120, 1000
  %122 = mul nsw i32 %121, 1000
  %123 = load i32, i32* %25, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %28, align 4
  %125 = load i32, i32* %11, align 4
  %126 = mul nsw i32 %125, 1000
  %127 = mul nsw i32 %126, 1000
  %128 = load i32, i32* %24, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %29, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %241

132:                                              ; preds = %109
  %133 = load i32, i32* %24, align 4
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %30, align 4
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sdiv i32 %137, 8
  store i32 %138, i32* %31, align 4
  store i32 2, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 %141, %142
  %144 = mul nsw i32 %143, 1000
  %145 = mul nsw i32 %144, 1000
  %146 = load i32, i32* %23, align 4
  %147 = sdiv i32 %145, %146
  store i32 %147, i32* %32, align 4
  %148 = load i32, i32* %25, align 4
  %149 = mul nsw i32 %148, 2
  %150 = load i32, i32* %23, align 4
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 %150, %151
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %132
  %155 = load i32, i32* %20, align 4
  %156 = mul nsw i32 %155, 1000
  %157 = mul nsw i32 %156, 1000
  %158 = sdiv i32 %157, 16
  %159 = load i32, i32* %25, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %35, align 4
  br label %170

161:                                              ; preds = %132
  %162 = load i32, i32* %20, align 4
  %163 = mul nsw i32 %162, 1000
  %164 = mul nsw i32 %163, 1000
  %165 = load i32, i32* %8, align 4
  %166 = mul nsw i32 8, %165
  %167 = sdiv i32 %164, %166
  %168 = load i32, i32* %23, align 4
  %169 = sdiv i32 %167, %168
  store i32 %169, i32* %35, align 4
  br label %170

170:                                              ; preds = %161, %154
  %171 = load i32, i32* %32, align 4
  %172 = load i32, i32* %27, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %28, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* %29, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* %35, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %33, align 4
  %180 = load i32, i32* %33, align 4
  %181 = load i32, i32* %30, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sdiv i32 %182, 1000000
  store i32 %183, i32* %34, align 4
  %184 = load i32, i32* %34, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %34, align 4
  store i32 128, i32* %16, align 4
  %186 = load i32, i32* %34, align 4
  %187 = icmp sgt i32 %186, 128
  br i1 %187, label %188, label %189

188:                                              ; preds = %170
  store i32 64, i32* %16, align 4
  br label %189

189:                                              ; preds = %188, %170
  %190 = load i32, i32* %34, align 4
  %191 = icmp sgt i32 %190, 192
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 32, i32* %16, align 4
  br label %193

193:                                              ; preds = %192, %189
  %194 = load i32, i32* %25, align 4
  %195 = mul nsw i32 %194, 2
  %196 = load i32, i32* %23, align 4
  %197 = load i32, i32* %8, align 4
  %198 = mul nsw i32 %196, %197
  %199 = icmp sgt i32 %195, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load i32, i32* %16, align 4
  %202 = mul nsw i32 %201, 1000
  %203 = mul nsw i32 %202, 1000
  %204 = sdiv i32 %203, 16
  %205 = load i32, i32* %25, align 4
  %206 = sdiv i32 %204, %205
  store i32 %206, i32* %35, align 4
  br label %216

207:                                              ; preds = %193
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 %208, 1000
  %210 = mul nsw i32 %209, 1000
  %211 = load i32, i32* %8, align 4
  %212 = mul nsw i32 8, %211
  %213 = sdiv i32 %210, %212
  %214 = load i32, i32* %23, align 4
  %215 = sdiv i32 %213, %214
  store i32 %215, i32* %35, align 4
  br label %216

216:                                              ; preds = %207, %200
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %6, align 4
  %219 = mul nsw i32 %217, %218
  %220 = mul nsw i32 %219, 1000
  %221 = mul nsw i32 %220, 1000
  %222 = load i32, i32* %23, align 4
  %223 = sdiv i32 %221, %222
  store i32 %223, i32* %36, align 4
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %35, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %36, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32, i32* %27, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %28, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %29, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %37, align 4
  %235 = load i32, i32* %37, align 4
  %236 = load i32, i32* %31, align 4
  %237 = mul nsw i32 %235, %236
  %238 = sdiv i32 %237, 1000000
  store i32 %238, i32* %38, align 4
  %239 = load i32, i32* %38, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %38, align 4
  br label %268

241:                                              ; preds = %109
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %10, align 4
  %244 = mul nsw i32 %242, %243
  %245 = sdiv i32 %244, 8
  store i32 %245, i32* %31, align 4
  store i32 2, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %6, align 4
  %250 = mul nsw i32 %248, %249
  %251 = mul nsw i32 %250, 1000
  %252 = mul nsw i32 %251, 1000
  %253 = load i32, i32* %23, align 4
  %254 = sdiv i32 %252, %253
  store i32 %254, i32* %36, align 4
  %255 = load i32, i32* %36, align 4
  %256 = load i32, i32* %27, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32, i32* %28, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %29, align 4
  %261 = add nsw i32 %259, %260
  store i32 %261, i32* %37, align 4
  %262 = load i32, i32* %37, align 4
  %263 = load i32, i32* %31, align 4
  %264 = mul nsw i32 %262, %263
  %265 = sdiv i32 %264, 1000000
  store i32 %265, i32* %38, align 4
  %266 = load i32, i32* %38, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %38, align 4
  br label %268

268:                                              ; preds = %241, %216
  %269 = load i32, i32* %38, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %269, %270
  %272 = sub nsw i32 %271, 512
  store i32 %272, i32* %21, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %24, align 4
  %275 = mul nsw i32 %273, %274
  %276 = load i32, i32* %23, align 4
  %277 = sdiv i32 %275, %276
  store i32 %277, i32* %22, align 4
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %10, align 4
  %280 = mul nsw i32 %278, %279
  %281 = sdiv i32 %280, 8
  store i32 %281, i32* %22, align 4
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %21, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %268
  %286 = load i32, i32* %21, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  store i32 0, i32* %290, align 4
  store i32 0, i32* %17, align 4
  %291 = load i32, i32* %18, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i32 1, i32* %17, align 4
  br label %294

294:                                              ; preds = %293, %288
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %18, align 4
  br label %330

297:                                              ; preds = %285, %268
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %297
  %301 = load i32, i32* %38, align 4
  %302 = icmp sgt i32 %301, 511
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %34, align 4
  %305 = icmp sgt i32 %304, 255
  br i1 %305, label %306, label %315

306:                                              ; preds = %303, %300
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 4
  store i32 0, i32* %17, align 4
  %309 = load i32, i32* %18, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %306
  store i32 1, i32* %17, align 4
  br label %312

312:                                              ; preds = %311, %306
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %18, align 4
  br label %315

315:                                              ; preds = %312, %303
  br label %329

316:                                              ; preds = %297
  %317 = load i32, i32* %38, align 4
  %318 = icmp sgt i32 %317, 519
  br i1 %318, label %319, label %328

319:                                              ; preds = %316
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  store i32 0, i32* %321, align 4
  store i32 0, i32* %17, align 4
  %322 = load i32, i32* %18, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store i32 1, i32* %17, align 4
  br label %325

325:                                              ; preds = %324, %319
  %326 = load i32, i32* %18, align 4
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %18, align 4
  br label %328

328:                                              ; preds = %325, %316
  br label %329

329:                                              ; preds = %328, %315
  br label %330

330:                                              ; preds = %329, %294
  %331 = load i32, i32* %38, align 4
  %332 = icmp slt i32 %331, 384
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  store i32 384, i32* %38, align 4
  br label %334

334:                                              ; preds = %333, %330
  %335 = load i32, i32* %34, align 4
  %336 = icmp slt i32 %335, 128
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  store i32 128, i32* %34, align 4
  br label %338

338:                                              ; preds = %337, %334
  %339 = load i32, i32* %38, align 4
  store i32 %339, i32* %5, align 4
  %340 = load i32, i32* %5, align 4
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  store i32 128, i32* %344, align 4
  %345 = load i32, i32* %34, align 4
  %346 = add nsw i32 %345, 15
  store i32 %346, i32* %5, align 4
  %347 = load i32, i32* %5, align 4
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %16, align 4
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 4
  br label %106

353:                                              ; preds = %106
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
