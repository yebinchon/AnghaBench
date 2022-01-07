; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_rtmp_tkip.c_RTMPTkipMixKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/common/extr_rtmp_tkip.c_RTMPTkipMixKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RTMPTkipMixKey(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 16
  %27 = srem i32 %26, 65536
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = srem i32 %28, 65536
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %10, align 4
  %31 = srem i32 %30, 65536
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 256
  %45 = add nsw i32 %40, %44
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 256
  %55 = add nsw i32 %50, %54
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 256
  %65 = add nsw i32 %60, %64
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %23, align 4
  br label %68

68:                                               ; preds = %216, %6
  %69 = load i32, i32* %23, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %219

71:                                               ; preds = %68
  %72 = load i32, i32* %23, align 4
  %73 = and i32 %72, 1
  %74 = mul nsw i32 2, %73
  store i32 %74, i32* %24, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 1, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 256, %86
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %87, %92
  %94 = xor i32 %80, %93
  %95 = srem i32 %94, 65536
  %96 = call i32 @tkip_sbox(i32 %95)
  %97 = add nsw i32 %77, %96
  %98 = srem i32 %97, 65536
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %24, align 4
  %109 = add nsw i32 5, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 256, %112
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %24, align 4
  %116 = add nsw i32 4, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %113, %119
  %121 = xor i32 %106, %120
  %122 = srem i32 %121, 65536
  %123 = call i32 @tkip_sbox(i32 %122)
  %124 = add nsw i32 %103, %123
  %125 = srem i32 %124, 65536
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %24, align 4
  %136 = add nsw i32 9, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 256, %139
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %24, align 4
  %143 = add nsw i32 8, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %140, %146
  %148 = xor i32 %133, %147
  %149 = srem i32 %148, 65536
  %150 = call i32 @tkip_sbox(i32 %149)
  %151 = add nsw i32 %130, %150
  %152 = srem i32 %151, 65536
  %153 = load i32*, i32** %13, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 13, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 256, %166
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 12, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %167, %173
  %175 = xor i32 %160, %174
  %176 = srem i32 %175, 65536
  %177 = call i32 @tkip_sbox(i32 %176)
  %178 = add nsw i32 %157, %177
  %179 = srem i32 %178, 65536
  %180 = load i32*, i32** %13, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 1, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 256, %193
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %24, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %194, %199
  %201 = xor i32 %187, %200
  %202 = srem i32 %201, 65536
  %203 = call i32 @tkip_sbox(i32 %202)
  %204 = add nsw i32 %184, %203
  %205 = srem i32 %204, 65536
  %206 = load i32*, i32** %13, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  store i32 %205, i32* %207, align 4
  %208 = load i32*, i32** %13, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %23, align 4
  %212 = add nsw i32 %210, %211
  %213 = srem i32 %212, 65536
  %214 = load i32*, i32** %13, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %71
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %23, align 4
  br label %68

219:                                              ; preds = %68
  %220 = load i32*, i32** %13, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %17, align 4
  %223 = load i32*, i32** %13, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %18, align 4
  %226 = load i32*, i32** %13, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %19, align 4
  %229 = load i32*, i32** %13, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %20, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 4
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %21, align 4
  %235 = load i32*, i32** %13, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 4
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %16, align 4
  %239 = add nsw i32 %237, %238
  %240 = srem i32 %239, 65536
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %22, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 256, %245
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %246, %249
  %251 = xor i32 %242, %250
  %252 = srem i32 %251, 65536
  %253 = call i32 @tkip_sbox(i32 %252)
  %254 = add nsw i32 %241, %253
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i32*, i32** %8, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 3
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 256, %259
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %260, %263
  %265 = xor i32 %256, %264
  %266 = srem i32 %265, 65536
  %267 = call i32 @tkip_sbox(i32 %266)
  %268 = add nsw i32 %255, %267
  store i32 %268, i32* %18, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %18, align 4
  %271 = load i32*, i32** %8, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 5
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 256, %273
  %275 = load i32*, i32** %8, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 4
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %274, %277
  %279 = xor i32 %270, %278
  %280 = srem i32 %279, 65536
  %281 = call i32 @tkip_sbox(i32 %280)
  %282 = add nsw i32 %269, %281
  store i32 %282, i32* %19, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %19, align 4
  %285 = load i32*, i32** %8, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 7
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 256, %287
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 6
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %288, %291
  %293 = xor i32 %284, %292
  %294 = srem i32 %293, 65536
  %295 = call i32 @tkip_sbox(i32 %294)
  %296 = add nsw i32 %283, %295
  store i32 %296, i32* %20, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %20, align 4
  %299 = load i32*, i32** %8, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 9
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 256, %301
  %303 = load i32*, i32** %8, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 8
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %302, %305
  %307 = xor i32 %298, %306
  %308 = srem i32 %307, 65536
  %309 = call i32 @tkip_sbox(i32 %308)
  %310 = add nsw i32 %297, %309
  store i32 %310, i32* %21, align 4
  %311 = load i32, i32* %22, align 4
  %312 = load i32, i32* %21, align 4
  %313 = load i32*, i32** %8, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 11
  %315 = load i32, i32* %314, align 4
  %316 = mul nsw i32 256, %315
  %317 = load i32*, i32** %8, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 10
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %316, %319
  %321 = xor i32 %312, %320
  %322 = srem i32 %321, 65536
  %323 = call i32 @tkip_sbox(i32 %322)
  %324 = add nsw i32 %311, %323
  store i32 %324, i32* %22, align 4
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %22, align 4
  %327 = load i32*, i32** %8, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 13
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 256, %329
  %331 = load i32*, i32** %8, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 12
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %330, %333
  %335 = xor i32 %326, %334
  %336 = call i32 @rotr1(i32 %335)
  %337 = add nsw i32 %325, %336
  store i32 %337, i32* %17, align 4
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %17, align 4
  %340 = load i32*, i32** %8, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 15
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 256, %342
  %344 = load i32*, i32** %8, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 14
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %343, %346
  %348 = xor i32 %339, %347
  %349 = call i32 @rotr1(i32 %348)
  %350 = add nsw i32 %338, %349
  store i32 %350, i32* %18, align 4
  %351 = load i32, i32* %19, align 4
  %352 = load i32, i32* %18, align 4
  %353 = call i32 @rotr1(i32 %352)
  %354 = add nsw i32 %351, %353
  store i32 %354, i32* %19, align 4
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %19, align 4
  %357 = call i32 @rotr1(i32 %356)
  %358 = add nsw i32 %355, %357
  store i32 %358, i32* %20, align 4
  %359 = load i32, i32* %21, align 4
  %360 = load i32, i32* %20, align 4
  %361 = call i32 @rotr1(i32 %360)
  %362 = add nsw i32 %359, %361
  store i32 %362, i32* %21, align 4
  %363 = load i32, i32* %22, align 4
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @rotr1(i32 %364)
  %366 = add nsw i32 %363, %365
  store i32 %366, i32* %22, align 4
  %367 = load i32, i32* %11, align 4
  %368 = ashr i32 %367, 16
  %369 = srem i32 %368, 65536
  store i32 %369, i32* %14, align 4
  %370 = load i32, i32* %11, align 4
  %371 = srem i32 %370, 65536
  store i32 %371, i32* %15, align 4
  %372 = load i32, i32* %10, align 4
  %373 = srem i32 %372, 65536
  store i32 %373, i32* %16, align 4
  %374 = load i32, i32* %16, align 4
  %375 = ashr i32 %374, 8
  %376 = srem i32 %375, 256
  %377 = load i32*, i32** %12, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  store i32 %376, i32* %378, align 4
  %379 = load i32, i32* %16, align 4
  %380 = ashr i32 %379, 8
  %381 = srem i32 %380, 256
  %382 = or i32 %381, 32
  %383 = and i32 %382, 127
  %384 = load i32*, i32** %12, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* %16, align 4
  %387 = srem i32 %386, 256
  %388 = load i32*, i32** %12, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 2
  store i32 %387, i32* %389, align 4
  %390 = load i32, i32* %22, align 4
  %391 = load i32*, i32** %8, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  %393 = load i32, i32* %392, align 4
  %394 = mul nsw i32 256, %393
  %395 = load i32*, i32** %8, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %394, %397
  %399 = xor i32 %390, %398
  %400 = ashr i32 %399, 1
  %401 = srem i32 %400, 256
  %402 = load i32*, i32** %12, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 3
  store i32 %401, i32* %403, align 4
  %404 = load i32, i32* %17, align 4
  %405 = srem i32 %404, 256
  %406 = load i32*, i32** %12, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 4
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* %17, align 4
  %409 = ashr i32 %408, 8
  %410 = srem i32 %409, 256
  %411 = load i32*, i32** %12, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 5
  store i32 %410, i32* %412, align 4
  %413 = load i32, i32* %18, align 4
  %414 = srem i32 %413, 256
  %415 = load i32*, i32** %12, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 6
  store i32 %414, i32* %416, align 4
  %417 = load i32, i32* %18, align 4
  %418 = ashr i32 %417, 8
  %419 = srem i32 %418, 256
  %420 = load i32*, i32** %12, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 7
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %19, align 4
  %423 = srem i32 %422, 256
  %424 = load i32*, i32** %12, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 8
  store i32 %423, i32* %425, align 4
  %426 = load i32, i32* %19, align 4
  %427 = ashr i32 %426, 8
  %428 = srem i32 %427, 256
  %429 = load i32*, i32** %12, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 9
  store i32 %428, i32* %430, align 4
  %431 = load i32, i32* %20, align 4
  %432 = srem i32 %431, 256
  %433 = load i32*, i32** %12, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 10
  store i32 %432, i32* %434, align 4
  %435 = load i32, i32* %20, align 4
  %436 = ashr i32 %435, 8
  %437 = srem i32 %436, 256
  %438 = load i32*, i32** %12, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 11
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* %21, align 4
  %441 = srem i32 %440, 256
  %442 = load i32*, i32** %12, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 12
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %21, align 4
  %445 = ashr i32 %444, 8
  %446 = srem i32 %445, 256
  %447 = load i32*, i32** %12, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 13
  store i32 %446, i32* %448, align 4
  %449 = load i32, i32* %22, align 4
  %450 = srem i32 %449, 256
  %451 = load i32*, i32** %12, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 14
  store i32 %450, i32* %452, align 4
  %453 = load i32, i32* %22, align 4
  %454 = ashr i32 %453, 8
  %455 = srem i32 %454, 256
  %456 = load i32*, i32** %12, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 15
  store i32 %455, i32* %457, align 4
  %458 = load i32, i32* %7, align 4
  ret i32 %458
}

declare dso_local i32 @tkip_sbox(i32) #1

declare dso_local i32 @rotr1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
