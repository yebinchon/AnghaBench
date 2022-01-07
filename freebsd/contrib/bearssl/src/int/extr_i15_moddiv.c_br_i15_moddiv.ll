; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_moddiv.c_br_i15_moddiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_moddiv.c_br_i15_moddiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i15_moddiv(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 15
  %47 = ashr i32 %46, 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %14, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32* %54, i32** %15, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i64, i64* %11, align 8
  %62 = mul i64 %61, 4
  %63 = call i32 @memcpy(i32* %58, i32* %60, i64 %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i64, i64* %11, align 8
  %68 = mul i64 %67, 4
  %69 = call i32 @memcpy(i32* %64, i32* %66, i64 %68)
  %70 = load i32*, i32** %16, align 8
  %71 = load i64, i64* %11, align 8
  %72 = mul i64 %71, 4
  %73 = call i32 @memset(i32* %70, i32 0, i64 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = sub nsw i32 %76, %80
  %82 = shl i32 %81, 1
  %83 = add nsw i32 %82, 14
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %353, %5
  %85 = load i32, i32* %17, align 4
  %86 = icmp sge i32 %85, 14
  br i1 %86, label %87, label %356

87:                                               ; preds = %84
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %88 = load i64, i64* %11, align 8
  store i64 %88, i64* %19, align 8
  br label %89

89:                                               ; preds = %93, %87
  %90 = load i64, i64* %19, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %19, align 8
  %92 = icmp ugt i64 %90, 0
  br i1 %92, label %93, label %139

93:                                               ; preds = %89
  %94 = load i32*, i32** %13, align 8
  %95 = load i64, i64* %19, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %35, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i64, i64* %19, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %36, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %35, align 4
  %104 = xor i32 %102, %103
  %105 = load i32, i32* %20, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %22, align 4
  %108 = xor i32 %107, %106
  store i32 %108, i32* %22, align 4
  %109 = load i32, i32* %23, align 4
  %110 = load i32, i32* %35, align 4
  %111 = xor i32 %109, %110
  %112 = load i32, i32* %21, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* %23, align 4
  %115 = xor i32 %114, %113
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %36, align 4
  %118 = xor i32 %116, %117
  %119 = load i32, i32* %20, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* %24, align 4
  %122 = xor i32 %121, %120
  store i32 %122, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %36, align 4
  %125 = xor i32 %123, %124
  %126 = load i32, i32* %21, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* %25, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %25, align 4
  %130 = load i32, i32* %20, align 4
  store i32 %130, i32* %21, align 4
  %131 = load i32, i32* %35, align 4
  %132 = load i32, i32* %36, align 4
  %133 = or i32 %131, %132
  %134 = add nsw i32 %133, 65535
  %135 = ashr i32 %134, 16
  %136 = sub nsw i32 %135, 1
  %137 = load i32, i32* %20, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %20, align 4
  br label %89

139:                                              ; preds = %89
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %21, align 4
  %142 = and i32 %140, %141
  %143 = load i32, i32* %23, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %23, align 4
  %145 = load i32, i32* %21, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %22, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %22, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %21, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* %25, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %25, align 4
  %154 = load i32, i32* %21, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %24, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %24, align 4
  %158 = load i32, i32* %22, align 4
  %159 = shl i32 %158, 15
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %26, align 4
  %162 = load i32, i32* %24, align 4
  %163 = shl i32 %162, 15
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %27, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %28, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %172

172:                                              ; preds = %304, %139
  %173 = load i32, i32* %34, align 4
  %174 = icmp slt i32 %173, 15
  br i1 %174, label %175, label %307

175:                                              ; preds = %172
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = call i32 @GT(i32 %176, i32 %177)
  store i32 %178, i32* %37, align 4
  %179 = load i32, i32* %28, align 4
  %180 = load i32, i32* %34, align 4
  %181 = ashr i32 %179, %180
  %182 = and i32 %181, 1
  store i32 %182, i32* %38, align 4
  %183 = load i32, i32* %29, align 4
  %184 = load i32, i32* %34, align 4
  %185 = ashr i32 %183, %184
  %186 = and i32 %185, 1
  store i32 %186, i32* %39, align 4
  %187 = load i32, i32* %38, align 4
  %188 = load i32, i32* %39, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %37, align 4
  %191 = and i32 %189, %190
  store i32 %191, i32* %40, align 4
  %192 = load i32, i32* %38, align 4
  %193 = load i32, i32* %39, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* %37, align 4
  %196 = call i32 @NOT(i32 %195)
  %197 = and i32 %194, %196
  store i32 %197, i32* %41, align 4
  %198 = load i32, i32* %40, align 4
  %199 = load i32, i32* %38, align 4
  %200 = call i32 @NOT(i32 %199)
  %201 = or i32 %198, %200
  store i32 %201, i32* %42, align 4
  %202 = load i32, i32* %29, align 4
  %203 = load i32, i32* %40, align 4
  %204 = sub nsw i32 0, %203
  %205 = and i32 %202, %204
  %206 = load i32, i32* %28, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %28, align 4
  %208 = load i32, i32* %27, align 4
  %209 = load i32, i32* %40, align 4
  %210 = sub nsw i32 0, %209
  %211 = and i32 %208, %210
  %212 = load i32, i32* %26, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %26, align 4
  %214 = load i32, i32* %32, align 4
  %215 = load i32, i32* %40, align 4
  %216 = sub nsw i32 0, %215
  %217 = and i32 %214, %216
  %218 = load i32, i32* %30, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %30, align 4
  %220 = load i32, i32* %33, align 4
  %221 = load i32, i32* %40, align 4
  %222 = sub nsw i32 0, %221
  %223 = and i32 %220, %222
  %224 = load i32, i32* %31, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %31, align 4
  %226 = load i32, i32* %28, align 4
  %227 = load i32, i32* %41, align 4
  %228 = sub nsw i32 0, %227
  %229 = and i32 %226, %228
  %230 = load i32, i32* %29, align 4
  %231 = sub nsw i32 %230, %229
  store i32 %231, i32* %29, align 4
  %232 = load i32, i32* %26, align 4
  %233 = load i32, i32* %41, align 4
  %234 = sub nsw i32 0, %233
  %235 = and i32 %232, %234
  %236 = load i32, i32* %27, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %27, align 4
  %238 = load i32, i32* %30, align 4
  %239 = load i32, i32* %41, align 4
  %240 = sub nsw i32 0, %239
  %241 = and i32 %238, %240
  %242 = load i32, i32* %32, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %32, align 4
  %244 = load i32, i32* %31, align 4
  %245 = load i32, i32* %41, align 4
  %246 = sub nsw i32 0, %245
  %247 = and i32 %244, %246
  %248 = load i32, i32* %33, align 4
  %249 = sub nsw i32 %248, %247
  store i32 %249, i32* %33, align 4
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* %42, align 4
  %252 = sub nsw i32 %251, 1
  %253 = and i32 %250, %252
  %254 = load i32, i32* %28, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %28, align 4
  %256 = load i32, i32* %30, align 4
  %257 = load i32, i32* %42, align 4
  %258 = sub nsw i32 %257, 1
  %259 = and i32 %256, %258
  %260 = load i32, i32* %30, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %30, align 4
  %262 = load i32, i32* %31, align 4
  %263 = load i32, i32* %42, align 4
  %264 = sub nsw i32 %263, 1
  %265 = and i32 %262, %264
  %266 = load i32, i32* %31, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %31, align 4
  %268 = load i32, i32* %26, align 4
  %269 = load i32, i32* %26, align 4
  %270 = ashr i32 %269, 1
  %271 = xor i32 %268, %270
  %272 = load i32, i32* %42, align 4
  %273 = sub nsw i32 0, %272
  %274 = and i32 %271, %273
  %275 = load i32, i32* %26, align 4
  %276 = xor i32 %275, %274
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* %29, align 4
  %278 = load i32, i32* %42, align 4
  %279 = sub nsw i32 0, %278
  %280 = and i32 %277, %279
  %281 = load i32, i32* %29, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %29, align 4
  %283 = load i32, i32* %32, align 4
  %284 = load i32, i32* %42, align 4
  %285 = sub nsw i32 0, %284
  %286 = and i32 %283, %285
  %287 = load i32, i32* %32, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %32, align 4
  %289 = load i32, i32* %33, align 4
  %290 = load i32, i32* %42, align 4
  %291 = sub nsw i32 0, %290
  %292 = and i32 %289, %291
  %293 = load i32, i32* %33, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %33, align 4
  %295 = load i32, i32* %27, align 4
  %296 = load i32, i32* %27, align 4
  %297 = ashr i32 %296, 1
  %298 = xor i32 %295, %297
  %299 = load i32, i32* %42, align 4
  %300 = sub nsw i32 %299, 1
  %301 = and i32 %298, %300
  %302 = load i32, i32* %27, align 4
  %303 = xor i32 %302, %301
  store i32 %303, i32* %27, align 4
  br label %304

304:                                              ; preds = %175
  %305 = load i32, i32* %34, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %34, align 4
  br label %172

307:                                              ; preds = %172
  %308 = load i32*, i32** %13, align 8
  %309 = load i32*, i32** %14, align 8
  %310 = load i64, i64* %11, align 8
  %311 = load i32, i32* %30, align 4
  %312 = load i32, i32* %31, align 4
  %313 = load i32, i32* %32, align 4
  %314 = load i32, i32* %33, align 4
  %315 = call i32 @co_reduce(i32* %308, i32* %309, i64 %310, i32 %311, i32 %312, i32 %313, i32 %314)
  store i32 %315, i32* %18, align 4
  %316 = load i32, i32* %30, align 4
  %317 = load i32, i32* %18, align 4
  %318 = and i32 %317, 1
  %319 = shl i32 %318, 1
  %320 = mul nsw i32 %316, %319
  %321 = load i32, i32* %30, align 4
  %322 = sub nsw i32 %321, %320
  store i32 %322, i32* %30, align 4
  %323 = load i32, i32* %31, align 4
  %324 = load i32, i32* %18, align 4
  %325 = and i32 %324, 1
  %326 = shl i32 %325, 1
  %327 = mul nsw i32 %323, %326
  %328 = load i32, i32* %31, align 4
  %329 = sub nsw i32 %328, %327
  store i32 %329, i32* %31, align 4
  %330 = load i32, i32* %32, align 4
  %331 = load i32, i32* %18, align 4
  %332 = and i32 %331, 2
  %333 = mul nsw i32 %330, %332
  %334 = load i32, i32* %32, align 4
  %335 = sub nsw i32 %334, %333
  store i32 %335, i32* %32, align 4
  %336 = load i32, i32* %33, align 4
  %337 = load i32, i32* %18, align 4
  %338 = and i32 %337, 2
  %339 = mul nsw i32 %336, %338
  %340 = load i32, i32* %33, align 4
  %341 = sub nsw i32 %340, %339
  store i32 %341, i32* %33, align 4
  %342 = load i32*, i32** %15, align 8
  %343 = load i32*, i32** %16, align 8
  %344 = load i64, i64* %11, align 8
  %345 = load i32, i32* %30, align 4
  %346 = load i32, i32* %31, align 4
  %347 = load i32, i32* %32, align 4
  %348 = load i32, i32* %33, align 4
  %349 = load i32*, i32** %8, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @co_reduce_mod(i32* %342, i32* %343, i64 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32* %350, i32 %351)
  br label %353

353:                                              ; preds = %307
  %354 = load i32, i32* %17, align 4
  %355 = sub nsw i32 %354, 14
  store i32 %355, i32* %17, align 4
  br label %84

356:                                              ; preds = %84
  %357 = load i32*, i32** %13, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %14, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %359, %362
  %364 = xor i32 %363, 1
  store i32 %364, i32* %18, align 4
  %365 = load i32*, i32** %16, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %15, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = or i32 %370, %367
  store i32 %371, i32* %369, align 4
  store i64 1, i64* %12, align 8
  br label %372

372:                                              ; preds = %397, %356
  %373 = load i64, i64* %12, align 8
  %374 = load i64, i64* %11, align 8
  %375 = icmp ult i64 %373, %374
  br i1 %375, label %376, label %400

376:                                              ; preds = %372
  %377 = load i32*, i32** %13, align 8
  %378 = load i64, i64* %12, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32*, i32** %14, align 8
  %382 = load i64, i64* %12, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %380, %384
  %386 = load i32, i32* %18, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %18, align 4
  %388 = load i32*, i32** %16, align 8
  %389 = load i64, i64* %12, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %15, align 8
  %393 = load i64, i64* %12, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %395, %391
  store i32 %396, i32* %394, align 4
  br label %397

397:                                              ; preds = %376
  %398 = load i64, i64* %12, align 8
  %399 = add i64 %398, 1
  store i64 %399, i64* %12, align 8
  br label %372

400:                                              ; preds = %372
  %401 = load i32, i32* %18, align 4
  %402 = call i32 @EQ0(i32 %401)
  ret i32 %402
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @NOT(i32) #1

declare dso_local i32 @co_reduce(i32*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @co_reduce_mod(i32*, i32*, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @EQ0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
