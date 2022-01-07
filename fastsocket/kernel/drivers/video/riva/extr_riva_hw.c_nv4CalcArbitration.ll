; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv4CalcArbitration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv4CalcArbitration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %26, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %25, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %27, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 6
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %28, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %36, align 4
  store i32 128, i32* %22, align 4
  store i32 2, i32* %15, align 4
  store i32 2, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  store i32 5, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 3
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  store i32 3, i32* %20, align 4
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %2
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 4
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %2
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 0
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 0
  store i32 %115, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %350, %111
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %365

119:                                              ; preds = %116
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  store i32 1, i32* %19, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %21, align 4
  %125 = load i32, i32* %21, align 4
  %126 = mul nsw i32 %125, 1000
  %127 = mul nsw i32 %126, 1000
  %128 = load i32, i32* %25, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %29, align 4
  %130 = load i32, i32* %13, align 4
  %131 = mul nsw i32 %130, 1000
  %132 = mul nsw i32 %131, 1000
  %133 = load i32, i32* %27, align 4
  %134 = sdiv i32 %132, %133
  store i32 %134, i32* %30, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %135, 1000
  %137 = mul nsw i32 %136, 1000
  %138 = load i32, i32* %26, align 4
  %139 = sdiv i32 %137, %138
  store i32 %139, i32* %31, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %251

142:                                              ; preds = %119
  %143 = load i32, i32* %26, align 4
  %144 = mul nsw i32 %143, 2
  store i32 %144, i32* %32, align 4
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sdiv i32 %147, 8
  store i32 %148, i32* %33, align 4
  store i32 2, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  store i32 2, i32* %17, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 %151, %152
  %154 = mul nsw i32 %153, 1000
  %155 = mul nsw i32 %154, 1000
  %156 = load i32, i32* %25, align 4
  %157 = sdiv i32 %155, %156
  store i32 %157, i32* %34, align 4
  %158 = load i32, i32* %27, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load i32, i32* %25, align 4
  %161 = load i32, i32* %8, align 4
  %162 = mul nsw i32 %160, %161
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %142
  %165 = load i32, i32* %22, align 4
  %166 = mul nsw i32 %165, 1000
  %167 = mul nsw i32 %166, 1000
  %168 = sdiv i32 %167, 16
  %169 = load i32, i32* %27, align 4
  %170 = sdiv i32 %168, %169
  store i32 %170, i32* %37, align 4
  br label %180

171:                                              ; preds = %142
  %172 = load i32, i32* %22, align 4
  %173 = mul nsw i32 %172, 1000
  %174 = mul nsw i32 %173, 1000
  %175 = load i32, i32* %8, align 4
  %176 = mul nsw i32 8, %175
  %177 = sdiv i32 %174, %176
  %178 = load i32, i32* %25, align 4
  %179 = sdiv i32 %177, %178
  store i32 %179, i32* %37, align 4
  br label %180

180:                                              ; preds = %171, %164
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %29, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %30, align 4
  %185 = add nsw i32 %183, %184
  %186 = load i32, i32* %31, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %37, align 4
  %189 = add nsw i32 %187, %188
  store i32 %189, i32* %35, align 4
  %190 = load i32, i32* %35, align 4
  %191 = load i32, i32* %32, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sdiv i32 %192, 1000000
  store i32 %193, i32* %36, align 4
  %194 = load i32, i32* %36, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %36, align 4
  store i32 128, i32* %18, align 4
  %196 = load i32, i32* %36, align 4
  %197 = icmp sgt i32 %196, 128
  br i1 %197, label %198, label %199

198:                                              ; preds = %180
  store i32 64, i32* %18, align 4
  br label %199

199:                                              ; preds = %198, %180
  %200 = load i32, i32* %36, align 4
  %201 = icmp sgt i32 %200, 192
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store i32 32, i32* %18, align 4
  br label %203

203:                                              ; preds = %202, %199
  %204 = load i32, i32* %27, align 4
  %205 = mul nsw i32 %204, 2
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* %8, align 4
  %208 = mul nsw i32 %206, %207
  %209 = icmp sgt i32 %205, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load i32, i32* %18, align 4
  %212 = mul nsw i32 %211, 1000
  %213 = mul nsw i32 %212, 1000
  %214 = sdiv i32 %213, 16
  %215 = load i32, i32* %27, align 4
  %216 = sdiv i32 %214, %215
  store i32 %216, i32* %37, align 4
  br label %226

217:                                              ; preds = %203
  %218 = load i32, i32* %18, align 4
  %219 = mul nsw i32 %218, 1000
  %220 = mul nsw i32 %219, 1000
  %221 = load i32, i32* %8, align 4
  %222 = mul nsw i32 8, %221
  %223 = sdiv i32 %220, %222
  %224 = load i32, i32* %25, align 4
  %225 = sdiv i32 %223, %224
  store i32 %225, i32* %37, align 4
  br label %226

226:                                              ; preds = %217, %210
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %6, align 4
  %229 = mul nsw i32 %227, %228
  %230 = mul nsw i32 %229, 1000
  %231 = mul nsw i32 %230, 1000
  %232 = load i32, i32* %25, align 4
  %233 = sdiv i32 %231, %232
  store i32 %233, i32* %38, align 4
  %234 = load i32, i32* %35, align 4
  %235 = load i32, i32* %37, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %38, align 4
  %238 = add nsw i32 %236, %237
  %239 = load i32, i32* %29, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %30, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32, i32* %31, align 4
  %244 = add nsw i32 %242, %243
  store i32 %244, i32* %39, align 4
  %245 = load i32, i32* %39, align 4
  %246 = load i32, i32* %33, align 4
  %247 = mul nsw i32 %245, %246
  %248 = sdiv i32 %247, 1000000
  store i32 %248, i32* %40, align 4
  %249 = load i32, i32* %40, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %40, align 4
  br label %278

251:                                              ; preds = %119
  %252 = load i32, i32* %26, align 4
  %253 = load i32, i32* %11, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sdiv i32 %254, 8
  store i32 %255, i32* %33, align 4
  store i32 2, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* %6, align 4
  %260 = mul nsw i32 %258, %259
  %261 = mul nsw i32 %260, 1000
  %262 = mul nsw i32 %261, 1000
  %263 = load i32, i32* %25, align 4
  %264 = sdiv i32 %262, %263
  store i32 %264, i32* %38, align 4
  %265 = load i32, i32* %38, align 4
  %266 = load i32, i32* %29, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32, i32* %30, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %31, align 4
  %271 = add nsw i32 %269, %270
  store i32 %271, i32* %39, align 4
  %272 = load i32, i32* %39, align 4
  %273 = load i32, i32* %33, align 4
  %274 = mul nsw i32 %272, %273
  %275 = sdiv i32 %274, 1000000
  store i32 %275, i32* %40, align 4
  %276 = load i32, i32* %40, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %40, align 4
  br label %278

278:                                              ; preds = %251, %226
  %279 = load i32, i32* %40, align 4
  %280 = load i32, i32* %22, align 4
  %281 = add nsw i32 %279, %280
  %282 = sub nsw i32 %281, 512
  store i32 %282, i32* %23, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i32, i32* %26, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %25, align 4
  %287 = sdiv i32 %285, %286
  store i32 %287, i32* %24, align 4
  %288 = load i32, i32* %24, align 4
  %289 = load i32, i32* %11, align 4
  %290 = mul nsw i32 %288, %289
  %291 = sdiv i32 %290, 8
  store i32 %291, i32* %24, align 4
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %23, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %307

295:                                              ; preds = %278
  %296 = load i32, i32* %23, align 4
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %295
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  store i32 0, i32* %300, align 4
  store i32 0, i32* %19, align 4
  %301 = load i32, i32* %20, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  store i32 1, i32* %19, align 4
  br label %304

304:                                              ; preds = %303, %298
  %305 = load i32, i32* %20, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %20, align 4
  br label %340

307:                                              ; preds = %295, %278
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %307
  %311 = load i32, i32* %40, align 4
  %312 = icmp sgt i32 %311, 511
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %36, align 4
  %315 = icmp sgt i32 %314, 255
  br i1 %315, label %316, label %325

316:                                              ; preds = %313, %310
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  store i32 0, i32* %318, align 4
  store i32 0, i32* %19, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  store i32 1, i32* %19, align 4
  br label %322

322:                                              ; preds = %321, %316
  %323 = load i32, i32* %20, align 4
  %324 = add nsw i32 %323, -1
  store i32 %324, i32* %20, align 4
  br label %325

325:                                              ; preds = %322, %313
  br label %339

326:                                              ; preds = %307
  %327 = load i32, i32* %40, align 4
  %328 = icmp sgt i32 %327, 519
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 0
  store i32 0, i32* %331, align 4
  store i32 0, i32* %19, align 4
  %332 = load i32, i32* %20, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %329
  store i32 1, i32* %19, align 4
  br label %335

335:                                              ; preds = %334, %329
  %336 = load i32, i32* %20, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %20, align 4
  br label %338

338:                                              ; preds = %335, %326
  br label %339

339:                                              ; preds = %338, %325
  br label %340

340:                                              ; preds = %339, %304
  %341 = load i32, i32* %40, align 4
  store i32 %341, i32* %41, align 4
  %342 = load i32, i32* %36, align 4
  store i32 %342, i32* %42, align 4
  %343 = load i32, i32* %40, align 4
  %344 = icmp slt i32 %343, 384
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  store i32 384, i32* %40, align 4
  br label %346

346:                                              ; preds = %345, %340
  %347 = load i32, i32* %36, align 4
  %348 = icmp slt i32 %347, 128
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 128, i32* %36, align 4
  br label %350

350:                                              ; preds = %349, %346
  %351 = load i32, i32* %40, align 4
  store i32 %351, i32* %5, align 4
  %352 = load i32, i32* %5, align 4
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 2
  store i32 128, i32* %356, align 4
  %357 = load i32, i32* %36, align 4
  %358 = add nsw i32 %357, 15
  store i32 %358, i32* %5, align 4
  %359 = load i32, i32* %5, align 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 3
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* %18, align 4
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 4
  store i32 %362, i32* %364, align 4
  br label %116

365:                                              ; preds = %116
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
