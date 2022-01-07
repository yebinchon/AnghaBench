; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_bitslice_Sbox.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_bitslice_Sbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_bitslice_Sbox(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  %116 = alloca i32, align 4
  %117 = alloca i32, align 4
  %118 = alloca i32, align 4
  %119 = alloca i32, align 4
  %120 = alloca i32, align 4
  %121 = alloca i32, align 4
  %122 = alloca i32, align 4
  %123 = alloca i32, align 4
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %126 = load i32*, i32** %2, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 7
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %3, align 4
  %129 = load i32*, i32** %2, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 6
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  %132 = load i32*, i32** %2, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %5, align 4
  %135 = load i32*, i32** %2, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 4
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  %138 = load i32*, i32** %2, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %7, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %8, align 4
  %144 = load i32*, i32** %2, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %9, align 4
  %147 = load i32*, i32** %2, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %8, align 4
  %152 = xor i32 %150, %151
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %9, align 4
  %155 = xor i32 %153, %154
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* %6, align 4
  %158 = xor i32 %156, %157
  store i32 %158, i32* %19, align 4
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %8, align 4
  %161 = xor i32 %159, %160
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %5, align 4
  %164 = xor i32 %162, %163
  store i32 %164, i32* %50, align 4
  %165 = load i32, i32* %50, align 4
  %166 = load i32, i32* %10, align 4
  %167 = xor i32 %165, %166
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %6, align 4
  %170 = xor i32 %168, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %24, align 4
  %173 = xor i32 %171, %172
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %3, align 4
  %176 = xor i32 %174, %175
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %9, align 4
  %179 = xor i32 %177, %178
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %18, align 4
  %182 = xor i32 %180, %181
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %22, align 4
  %185 = xor i32 %183, %184
  store i32 %185, i32* %51, align 4
  %186 = load i32, i32* %51, align 4
  %187 = load i32, i32* %8, align 4
  %188 = xor i32 %186, %187
  store i32 %188, i32* %25, align 4
  %189 = load i32, i32* %51, align 4
  %190 = load i32, i32* %4, align 4
  %191 = xor i32 %189, %190
  store i32 %191, i32* %30, align 4
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %10, align 4
  %194 = xor i32 %192, %193
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %25, align 4
  %196 = load i32, i32* %50, align 4
  %197 = xor i32 %195, %196
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %30, align 4
  %199 = load i32, i32* %19, align 4
  %200 = xor i32 %198, %199
  store i32 %200, i32* %21, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %21, align 4
  %203 = xor i32 %201, %202
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %21, align 4
  %206 = xor i32 %204, %205
  store i32 %206, i32* %27, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %18, align 4
  %209 = xor i32 %207, %208
  store i32 %209, i32* %29, align 4
  %210 = load i32, i32* %50, align 4
  %211 = load i32, i32* %21, align 4
  %212 = xor i32 %210, %211
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* %26, align 4
  %215 = xor i32 %213, %214
  store i32 %215, i32* %31, align 4
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* %26, align 4
  %218 = xor i32 %216, %217
  store i32 %218, i32* %28, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %25, align 4
  %221 = and i32 %219, %220
  store i32 %221, i32* %52, align 4
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %16, align 4
  %224 = and i32 %222, %223
  store i32 %224, i32* %53, align 4
  %225 = load i32, i32* %53, align 4
  %226 = load i32, i32* %52, align 4
  %227 = xor i32 %225, %226
  store i32 %227, i32* %54, align 4
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %10, align 4
  %230 = and i32 %228, %229
  store i32 %230, i32* %55, align 4
  %231 = load i32, i32* %55, align 4
  %232 = load i32, i32* %52, align 4
  %233 = xor i32 %231, %232
  store i32 %233, i32* %56, align 4
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* %26, align 4
  %236 = and i32 %234, %235
  store i32 %236, i32* %57, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %11, align 4
  %239 = and i32 %237, %238
  store i32 %239, i32* %58, align 4
  %240 = load i32, i32* %58, align 4
  %241 = load i32, i32* %57, align 4
  %242 = xor i32 %240, %241
  store i32 %242, i32* %59, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %17, align 4
  %245 = and i32 %243, %244
  store i32 %245, i32* %60, align 4
  %246 = load i32, i32* %60, align 4
  %247 = load i32, i32* %57, align 4
  %248 = xor i32 %246, %247
  store i32 %248, i32* %61, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %21, align 4
  %251 = and i32 %249, %250
  store i32 %251, i32* %62, align 4
  %252 = load i32, i32* %24, align 4
  %253 = load i32, i32* %27, align 4
  %254 = and i32 %252, %253
  store i32 %254, i32* %63, align 4
  %255 = load i32, i32* %63, align 4
  %256 = load i32, i32* %62, align 4
  %257 = xor i32 %255, %256
  store i32 %257, i32* %64, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %20, align 4
  %260 = and i32 %258, %259
  store i32 %260, i32* %65, align 4
  %261 = load i32, i32* %65, align 4
  %262 = load i32, i32* %62, align 4
  %263 = xor i32 %261, %262
  store i32 %263, i32* %66, align 4
  %264 = load i32, i32* %54, align 4
  %265 = load i32, i32* %64, align 4
  %266 = xor i32 %264, %265
  store i32 %266, i32* %67, align 4
  %267 = load i32, i32* %56, align 4
  %268 = load i32, i32* %66, align 4
  %269 = xor i32 %267, %268
  store i32 %269, i32* %68, align 4
  %270 = load i32, i32* %59, align 4
  %271 = load i32, i32* %64, align 4
  %272 = xor i32 %270, %271
  store i32 %272, i32* %69, align 4
  %273 = load i32, i32* %61, align 4
  %274 = load i32, i32* %66, align 4
  %275 = xor i32 %273, %274
  store i32 %275, i32* %70, align 4
  %276 = load i32, i32* %67, align 4
  %277 = load i32, i32* %30, align 4
  %278 = xor i32 %276, %277
  store i32 %278, i32* %71, align 4
  %279 = load i32, i32* %68, align 4
  %280 = load i32, i32* %29, align 4
  %281 = xor i32 %279, %280
  store i32 %281, i32* %72, align 4
  %282 = load i32, i32* %69, align 4
  %283 = load i32, i32* %31, align 4
  %284 = xor i32 %282, %283
  store i32 %284, i32* %73, align 4
  %285 = load i32, i32* %70, align 4
  %286 = load i32, i32* %28, align 4
  %287 = xor i32 %285, %286
  store i32 %287, i32* %74, align 4
  %288 = load i32, i32* %71, align 4
  %289 = load i32, i32* %72, align 4
  %290 = xor i32 %288, %289
  store i32 %290, i32* %75, align 4
  %291 = load i32, i32* %71, align 4
  %292 = load i32, i32* %73, align 4
  %293 = and i32 %291, %292
  store i32 %293, i32* %76, align 4
  %294 = load i32, i32* %74, align 4
  %295 = load i32, i32* %76, align 4
  %296 = xor i32 %294, %295
  store i32 %296, i32* %77, align 4
  %297 = load i32, i32* %75, align 4
  %298 = load i32, i32* %77, align 4
  %299 = and i32 %297, %298
  store i32 %299, i32* %78, align 4
  %300 = load i32, i32* %78, align 4
  %301 = load i32, i32* %72, align 4
  %302 = xor i32 %300, %301
  store i32 %302, i32* %79, align 4
  %303 = load i32, i32* %73, align 4
  %304 = load i32, i32* %74, align 4
  %305 = xor i32 %303, %304
  store i32 %305, i32* %80, align 4
  %306 = load i32, i32* %72, align 4
  %307 = load i32, i32* %76, align 4
  %308 = xor i32 %306, %307
  store i32 %308, i32* %81, align 4
  %309 = load i32, i32* %81, align 4
  %310 = load i32, i32* %80, align 4
  %311 = and i32 %309, %310
  store i32 %311, i32* %82, align 4
  %312 = load i32, i32* %82, align 4
  %313 = load i32, i32* %74, align 4
  %314 = xor i32 %312, %313
  store i32 %314, i32* %83, align 4
  %315 = load i32, i32* %73, align 4
  %316 = load i32, i32* %83, align 4
  %317 = xor i32 %315, %316
  store i32 %317, i32* %84, align 4
  %318 = load i32, i32* %77, align 4
  %319 = load i32, i32* %83, align 4
  %320 = xor i32 %318, %319
  store i32 %320, i32* %85, align 4
  %321 = load i32, i32* %74, align 4
  %322 = load i32, i32* %85, align 4
  %323 = and i32 %321, %322
  store i32 %323, i32* %86, align 4
  %324 = load i32, i32* %86, align 4
  %325 = load i32, i32* %84, align 4
  %326 = xor i32 %324, %325
  store i32 %326, i32* %87, align 4
  %327 = load i32, i32* %77, align 4
  %328 = load i32, i32* %86, align 4
  %329 = xor i32 %327, %328
  store i32 %329, i32* %88, align 4
  %330 = load i32, i32* %79, align 4
  %331 = load i32, i32* %88, align 4
  %332 = and i32 %330, %331
  store i32 %332, i32* %89, align 4
  %333 = load i32, i32* %75, align 4
  %334 = load i32, i32* %89, align 4
  %335 = xor i32 %333, %334
  store i32 %335, i32* %90, align 4
  %336 = load i32, i32* %90, align 4
  %337 = load i32, i32* %87, align 4
  %338 = xor i32 %336, %337
  store i32 %338, i32* %91, align 4
  %339 = load i32, i32* %79, align 4
  %340 = load i32, i32* %83, align 4
  %341 = xor i32 %339, %340
  store i32 %341, i32* %92, align 4
  %342 = load i32, i32* %79, align 4
  %343 = load i32, i32* %90, align 4
  %344 = xor i32 %342, %343
  store i32 %344, i32* %93, align 4
  %345 = load i32, i32* %83, align 4
  %346 = load i32, i32* %87, align 4
  %347 = xor i32 %345, %346
  store i32 %347, i32* %94, align 4
  %348 = load i32, i32* %92, align 4
  %349 = load i32, i32* %91, align 4
  %350 = xor i32 %348, %349
  store i32 %350, i32* %95, align 4
  %351 = load i32, i32* %94, align 4
  %352 = load i32, i32* %25, align 4
  %353 = and i32 %351, %352
  store i32 %353, i32* %32, align 4
  %354 = load i32, i32* %87, align 4
  %355 = load i32, i32* %16, align 4
  %356 = and i32 %354, %355
  store i32 %356, i32* %33, align 4
  %357 = load i32, i32* %83, align 4
  %358 = load i32, i32* %10, align 4
  %359 = and i32 %357, %358
  store i32 %359, i32* %34, align 4
  %360 = load i32, i32* %93, align 4
  %361 = load i32, i32* %26, align 4
  %362 = and i32 %360, %361
  store i32 %362, i32* %35, align 4
  %363 = load i32, i32* %90, align 4
  %364 = load i32, i32* %11, align 4
  %365 = and i32 %363, %364
  store i32 %365, i32* %36, align 4
  %366 = load i32, i32* %79, align 4
  %367 = load i32, i32* %17, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %37, align 4
  %369 = load i32, i32* %92, align 4
  %370 = load i32, i32* %21, align 4
  %371 = and i32 %369, %370
  store i32 %371, i32* %38, align 4
  %372 = load i32, i32* %95, align 4
  %373 = load i32, i32* %27, align 4
  %374 = and i32 %372, %373
  store i32 %374, i32* %39, align 4
  %375 = load i32, i32* %91, align 4
  %376 = load i32, i32* %20, align 4
  %377 = and i32 %375, %376
  store i32 %377, i32* %40, align 4
  %378 = load i32, i32* %94, align 4
  %379 = load i32, i32* %22, align 4
  %380 = and i32 %378, %379
  store i32 %380, i32* %41, align 4
  %381 = load i32, i32* %87, align 4
  %382 = load i32, i32* %13, align 4
  %383 = and i32 %381, %382
  store i32 %383, i32* %42, align 4
  %384 = load i32, i32* %83, align 4
  %385 = load i32, i32* %14, align 4
  %386 = and i32 %384, %385
  store i32 %386, i32* %43, align 4
  %387 = load i32, i32* %93, align 4
  %388 = load i32, i32* %23, align 4
  %389 = and i32 %387, %388
  store i32 %389, i32* %44, align 4
  %390 = load i32, i32* %90, align 4
  %391 = load i32, i32* %15, align 4
  %392 = and i32 %390, %391
  store i32 %392, i32* %45, align 4
  %393 = load i32, i32* %79, align 4
  %394 = load i32, i32* %12, align 4
  %395 = and i32 %393, %394
  store i32 %395, i32* %46, align 4
  %396 = load i32, i32* %92, align 4
  %397 = load i32, i32* %19, align 4
  %398 = and i32 %396, %397
  store i32 %398, i32* %47, align 4
  %399 = load i32, i32* %95, align 4
  %400 = load i32, i32* %24, align 4
  %401 = and i32 %399, %400
  store i32 %401, i32* %48, align 4
  %402 = load i32, i32* %91, align 4
  %403 = load i32, i32* %18, align 4
  %404 = and i32 %402, %403
  store i32 %404, i32* %49, align 4
  %405 = load i32, i32* %47, align 4
  %406 = load i32, i32* %48, align 4
  %407 = xor i32 %405, %406
  store i32 %407, i32* %96, align 4
  %408 = load i32, i32* %42, align 4
  %409 = load i32, i32* %43, align 4
  %410 = xor i32 %408, %409
  store i32 %410, i32* %97, align 4
  %411 = load i32, i32* %37, align 4
  %412 = load i32, i32* %45, align 4
  %413 = xor i32 %411, %412
  store i32 %413, i32* %98, align 4
  %414 = load i32, i32* %41, align 4
  %415 = load i32, i32* %42, align 4
  %416 = xor i32 %414, %415
  store i32 %416, i32* %99, align 4
  %417 = load i32, i32* %34, align 4
  %418 = load i32, i32* %44, align 4
  %419 = xor i32 %417, %418
  store i32 %419, i32* %100, align 4
  %420 = load i32, i32* %34, align 4
  %421 = load i32, i32* %37, align 4
  %422 = xor i32 %420, %421
  store i32 %422, i32* %101, align 4
  %423 = load i32, i32* %39, align 4
  %424 = load i32, i32* %40, align 4
  %425 = xor i32 %423, %424
  store i32 %425, i32* %102, align 4
  %426 = load i32, i32* %32, align 4
  %427 = load i32, i32* %35, align 4
  %428 = xor i32 %426, %427
  store i32 %428, i32* %103, align 4
  %429 = load i32, i32* %38, align 4
  %430 = load i32, i32* %39, align 4
  %431 = xor i32 %429, %430
  store i32 %431, i32* %104, align 4
  %432 = load i32, i32* %48, align 4
  %433 = load i32, i32* %49, align 4
  %434 = xor i32 %432, %433
  store i32 %434, i32* %105, align 4
  %435 = load i32, i32* %44, align 4
  %436 = load i32, i32* %98, align 4
  %437 = xor i32 %435, %436
  store i32 %437, i32* %106, align 4
  %438 = load i32, i32* %100, align 4
  %439 = load i32, i32* %103, align 4
  %440 = xor i32 %438, %439
  store i32 %440, i32* %107, align 4
  %441 = load i32, i32* %36, align 4
  %442 = load i32, i32* %96, align 4
  %443 = xor i32 %441, %442
  store i32 %443, i32* %108, align 4
  %444 = load i32, i32* %35, align 4
  %445 = load i32, i32* %104, align 4
  %446 = xor i32 %444, %445
  store i32 %446, i32* %109, align 4
  %447 = load i32, i32* %96, align 4
  %448 = load i32, i32* %107, align 4
  %449 = xor i32 %447, %448
  store i32 %449, i32* %110, align 4
  %450 = load i32, i32* %46, align 4
  %451 = load i32, i32* %107, align 4
  %452 = xor i32 %450, %451
  store i32 %452, i32* %111, align 4
  %453 = load i32, i32* %102, align 4
  %454 = load i32, i32* %108, align 4
  %455 = xor i32 %453, %454
  store i32 %455, i32* %112, align 4
  %456 = load i32, i32* %99, align 4
  %457 = load i32, i32* %108, align 4
  %458 = xor i32 %456, %457
  store i32 %458, i32* %113, align 4
  %459 = load i32, i32* %36, align 4
  %460 = load i32, i32* %109, align 4
  %461 = xor i32 %459, %460
  store i32 %461, i32* %114, align 4
  %462 = load i32, i32* %111, align 4
  %463 = load i32, i32* %112, align 4
  %464 = xor i32 %462, %463
  store i32 %464, i32* %115, align 4
  %465 = load i32, i32* %33, align 4
  %466 = load i32, i32* %113, align 4
  %467 = xor i32 %465, %466
  store i32 %467, i32* %116, align 4
  %468 = load i32, i32* %109, align 4
  %469 = load i32, i32* %113, align 4
  %470 = xor i32 %468, %469
  store i32 %470, i32* %118, align 4
  %471 = load i32, i32* %106, align 4
  %472 = load i32, i32* %112, align 4
  %473 = xor i32 %472, -1
  %474 = xor i32 %471, %473
  store i32 %474, i32* %124, align 4
  %475 = load i32, i32* %98, align 4
  %476 = load i32, i32* %110, align 4
  %477 = xor i32 %476, -1
  %478 = xor i32 %475, %477
  store i32 %478, i32* %125, align 4
  %479 = load i32, i32* %114, align 4
  %480 = load i32, i32* %115, align 4
  %481 = xor i32 %479, %480
  store i32 %481, i32* %117, align 4
  %482 = load i32, i32* %103, align 4
  %483 = load i32, i32* %116, align 4
  %484 = xor i32 %482, %483
  store i32 %484, i32* %121, align 4
  %485 = load i32, i32* %101, align 4
  %486 = load i32, i32* %116, align 4
  %487 = xor i32 %485, %486
  store i32 %487, i32* %122, align 4
  %488 = load i32, i32* %97, align 4
  %489 = load i32, i32* %115, align 4
  %490 = xor i32 %488, %489
  store i32 %490, i32* %123, align 4
  %491 = load i32, i32* %114, align 4
  %492 = load i32, i32* %121, align 4
  %493 = xor i32 %492, -1
  %494 = xor i32 %491, %493
  store i32 %494, i32* %119, align 4
  %495 = load i32, i32* %105, align 4
  %496 = load i32, i32* %117, align 4
  %497 = xor i32 %496, -1
  %498 = xor i32 %495, %497
  store i32 %498, i32* %120, align 4
  %499 = load i32, i32* %118, align 4
  %500 = load i32*, i32** %2, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 7
  store i32 %499, i32* %501, align 4
  %502 = load i32, i32* %119, align 4
  %503 = load i32*, i32** %2, align 8
  %504 = getelementptr inbounds i32, i32* %503, i64 6
  store i32 %502, i32* %504, align 4
  %505 = load i32, i32* %120, align 4
  %506 = load i32*, i32** %2, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 5
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %121, align 4
  %509 = load i32*, i32** %2, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 4
  store i32 %508, i32* %510, align 4
  %511 = load i32, i32* %122, align 4
  %512 = load i32*, i32** %2, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 3
  store i32 %511, i32* %513, align 4
  %514 = load i32, i32* %123, align 4
  %515 = load i32*, i32** %2, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 2
  store i32 %514, i32* %516, align 4
  %517 = load i32, i32* %124, align 4
  %518 = load i32*, i32** %2, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 1
  store i32 %517, i32* %519, align 4
  %520 = load i32, i32* %125, align 4
  %521 = load i32*, i32** %2, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 0
  store i32 %520, i32* %522, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
