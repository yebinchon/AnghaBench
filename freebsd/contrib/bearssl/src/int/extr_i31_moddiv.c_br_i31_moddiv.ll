; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_br_i31_moddiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_br_i31_moddiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i31_moddiv(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %43 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 31
  %48 = ashr i32 %47, 5
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %10, align 8
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %14, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %16, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i64, i64* %11, align 8
  %63 = mul i64 %62, 4
  %64 = call i32 @memcpy(i32* %59, i32* %61, i64 %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i64, i64* %11, align 8
  %69 = mul i64 %68, 4
  %70 = call i32 @memcpy(i32* %65, i32* %67, i64 %69)
  %71 = load i32*, i32** %16, align 8
  %72 = load i64, i64* %11, align 8
  %73 = mul i64 %72, 4
  %74 = call i32 @memset(i32* %71, i32 0, i64 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 5
  %82 = sub nsw i32 %77, %81
  %83 = shl i32 %82, 1
  %84 = add nsw i32 %83, 30
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %364, %5
  %86 = load i32, i32* %17, align 4
  %87 = icmp sge i32 %86, 30
  br i1 %87, label %88, label %367

88:                                               ; preds = %85
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %89 = load i64, i64* %11, align 8
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %94, %88
  %91 = load i64, i64* %19, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %19, align 8
  %93 = icmp ugt i64 %91, 0
  br i1 %93, label %94, label %140

94:                                               ; preds = %90
  %95 = load i32*, i32** %13, align 8
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %35, align 4
  %99 = load i32*, i32** %14, align 8
  %100 = load i64, i64* %19, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %36, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %35, align 4
  %105 = xor i32 %103, %104
  %106 = load i32, i32* %20, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %22, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %35, align 4
  %112 = xor i32 %110, %111
  %113 = load i32, i32* %21, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %23, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %36, align 4
  %119 = xor i32 %117, %118
  %120 = load i32, i32* %20, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %24, align 4
  %123 = xor i32 %122, %121
  store i32 %123, i32* %24, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %36, align 4
  %126 = xor i32 %124, %125
  %127 = load i32, i32* %21, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* %25, align 4
  %130 = xor i32 %129, %128
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %20, align 4
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %35, align 4
  %133 = load i32, i32* %36, align 4
  %134 = or i32 %132, %133
  %135 = add nsw i32 %134, 2147483647
  %136 = ashr i32 %135, 31
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %20, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %20, align 4
  br label %90

140:                                              ; preds = %90
  %141 = load i32, i32* %22, align 4
  %142 = load i32, i32* %21, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* %23, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %21, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %22, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %21, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %25, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %25, align 4
  %155 = load i32, i32* %21, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %24, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %24, align 4
  %159 = load i32, i32* %22, align 4
  %160 = shl i32 %159, 31
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %24, align 4
  %164 = shl i32 %163, 31
  %165 = load i32, i32* %25, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %27, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %28, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %29, align 4
  store i32 1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %173

173:                                              ; preds = %315, %140
  %174 = load i32, i32* %34, align 4
  %175 = icmp slt i32 %174, 31
  br i1 %175, label %176, label %318

176:                                              ; preds = %173
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %26, align 4
  %179 = sub nsw i32 %177, %178
  store i32 %179, i32* %43, align 4
  %180 = load i32, i32* %43, align 4
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* %27, align 4
  %183 = xor i32 %181, %182
  %184 = load i32, i32* %26, align 4
  %185 = load i32, i32* %43, align 4
  %186 = xor i32 %184, %185
  %187 = and i32 %183, %186
  %188 = xor i32 %180, %187
  %189 = ashr i32 %188, 63
  store i32 %189, i32* %37, align 4
  %190 = load i32, i32* %28, align 4
  %191 = load i32, i32* %34, align 4
  %192 = ashr i32 %190, %191
  %193 = and i32 %192, 1
  store i32 %193, i32* %38, align 4
  %194 = load i32, i32* %29, align 4
  %195 = load i32, i32* %34, align 4
  %196 = ashr i32 %194, %195
  %197 = and i32 %196, 1
  store i32 %197, i32* %39, align 4
  %198 = load i32, i32* %38, align 4
  %199 = load i32, i32* %39, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* %37, align 4
  %202 = and i32 %200, %201
  store i32 %202, i32* %40, align 4
  %203 = load i32, i32* %38, align 4
  %204 = load i32, i32* %39, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* %37, align 4
  %207 = call i32 @NOT(i32 %206)
  %208 = and i32 %205, %207
  store i32 %208, i32* %41, align 4
  %209 = load i32, i32* %40, align 4
  %210 = load i32, i32* %38, align 4
  %211 = call i32 @NOT(i32 %210)
  %212 = or i32 %209, %211
  store i32 %212, i32* %42, align 4
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %40, align 4
  %215 = sub nsw i32 0, %214
  %216 = and i32 %213, %215
  %217 = load i32, i32* %28, align 4
  %218 = sub nsw i32 %217, %216
  store i32 %218, i32* %28, align 4
  %219 = load i32, i32* %27, align 4
  %220 = load i32, i32* %40, align 4
  %221 = sub nsw i32 0, %220
  %222 = and i32 %219, %221
  %223 = load i32, i32* %26, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %26, align 4
  %225 = load i32, i32* %32, align 4
  %226 = load i32, i32* %40, align 4
  %227 = sub nsw i32 0, %226
  %228 = and i32 %225, %227
  %229 = load i32, i32* %30, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %30, align 4
  %231 = load i32, i32* %33, align 4
  %232 = load i32, i32* %40, align 4
  %233 = sub nsw i32 0, %232
  %234 = and i32 %231, %233
  %235 = load i32, i32* %31, align 4
  %236 = sub nsw i32 %235, %234
  store i32 %236, i32* %31, align 4
  %237 = load i32, i32* %28, align 4
  %238 = load i32, i32* %41, align 4
  %239 = sub nsw i32 0, %238
  %240 = and i32 %237, %239
  %241 = load i32, i32* %29, align 4
  %242 = sub nsw i32 %241, %240
  store i32 %242, i32* %29, align 4
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %41, align 4
  %245 = sub nsw i32 0, %244
  %246 = and i32 %243, %245
  %247 = load i32, i32* %27, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %27, align 4
  %249 = load i32, i32* %30, align 4
  %250 = load i32, i32* %41, align 4
  %251 = sub nsw i32 0, %250
  %252 = and i32 %249, %251
  %253 = load i32, i32* %32, align 4
  %254 = sub nsw i32 %253, %252
  store i32 %254, i32* %32, align 4
  %255 = load i32, i32* %31, align 4
  %256 = load i32, i32* %41, align 4
  %257 = sub nsw i32 0, %256
  %258 = and i32 %255, %257
  %259 = load i32, i32* %33, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %33, align 4
  %261 = load i32, i32* %28, align 4
  %262 = load i32, i32* %42, align 4
  %263 = sub nsw i32 %262, 1
  %264 = and i32 %261, %263
  %265 = load i32, i32* %28, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %28, align 4
  %267 = load i32, i32* %30, align 4
  %268 = load i32, i32* %42, align 4
  %269 = sub nsw i32 %268, 1
  %270 = and i32 %267, %269
  %271 = load i32, i32* %30, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %30, align 4
  %273 = load i32, i32* %31, align 4
  %274 = load i32, i32* %42, align 4
  %275 = sub nsw i32 %274, 1
  %276 = and i32 %273, %275
  %277 = load i32, i32* %31, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %31, align 4
  %279 = load i32, i32* %26, align 4
  %280 = load i32, i32* %26, align 4
  %281 = ashr i32 %280, 1
  %282 = xor i32 %279, %281
  %283 = load i32, i32* %42, align 4
  %284 = sub nsw i32 0, %283
  %285 = and i32 %282, %284
  %286 = load i32, i32* %26, align 4
  %287 = xor i32 %286, %285
  store i32 %287, i32* %26, align 4
  %288 = load i32, i32* %29, align 4
  %289 = load i32, i32* %42, align 4
  %290 = sub nsw i32 0, %289
  %291 = and i32 %288, %290
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* %32, align 4
  %295 = load i32, i32* %42, align 4
  %296 = sub nsw i32 0, %295
  %297 = and i32 %294, %296
  %298 = load i32, i32* %32, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %32, align 4
  %300 = load i32, i32* %33, align 4
  %301 = load i32, i32* %42, align 4
  %302 = sub nsw i32 0, %301
  %303 = and i32 %300, %302
  %304 = load i32, i32* %33, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %33, align 4
  %306 = load i32, i32* %27, align 4
  %307 = load i32, i32* %27, align 4
  %308 = ashr i32 %307, 1
  %309 = xor i32 %306, %308
  %310 = load i32, i32* %42, align 4
  %311 = sub nsw i32 %310, 1
  %312 = and i32 %309, %311
  %313 = load i32, i32* %27, align 4
  %314 = xor i32 %313, %312
  store i32 %314, i32* %27, align 4
  br label %315

315:                                              ; preds = %176
  %316 = load i32, i32* %34, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %34, align 4
  br label %173

318:                                              ; preds = %173
  %319 = load i32*, i32** %13, align 8
  %320 = load i32*, i32** %14, align 8
  %321 = load i64, i64* %11, align 8
  %322 = load i32, i32* %30, align 4
  %323 = load i32, i32* %31, align 4
  %324 = load i32, i32* %32, align 4
  %325 = load i32, i32* %33, align 4
  %326 = call i32 @co_reduce(i32* %319, i32* %320, i64 %321, i32 %322, i32 %323, i32 %324, i32 %325)
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %30, align 4
  %328 = load i32, i32* %18, align 4
  %329 = and i32 %328, 1
  %330 = shl i32 %329, 1
  %331 = mul nsw i32 %327, %330
  %332 = load i32, i32* %30, align 4
  %333 = sub nsw i32 %332, %331
  store i32 %333, i32* %30, align 4
  %334 = load i32, i32* %31, align 4
  %335 = load i32, i32* %18, align 4
  %336 = and i32 %335, 1
  %337 = shl i32 %336, 1
  %338 = mul nsw i32 %334, %337
  %339 = load i32, i32* %31, align 4
  %340 = sub nsw i32 %339, %338
  store i32 %340, i32* %31, align 4
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %18, align 4
  %343 = and i32 %342, 2
  %344 = mul nsw i32 %341, %343
  %345 = load i32, i32* %32, align 4
  %346 = sub nsw i32 %345, %344
  store i32 %346, i32* %32, align 4
  %347 = load i32, i32* %33, align 4
  %348 = load i32, i32* %18, align 4
  %349 = and i32 %348, 2
  %350 = mul nsw i32 %347, %349
  %351 = load i32, i32* %33, align 4
  %352 = sub nsw i32 %351, %350
  store i32 %352, i32* %33, align 4
  %353 = load i32*, i32** %15, align 8
  %354 = load i32*, i32** %16, align 8
  %355 = load i64, i64* %11, align 8
  %356 = load i32, i32* %30, align 4
  %357 = load i32, i32* %31, align 4
  %358 = load i32, i32* %32, align 4
  %359 = load i32, i32* %33, align 4
  %360 = load i32*, i32** %8, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @co_reduce_mod(i32* %353, i32* %354, i64 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32* %361, i32 %362)
  br label %364

364:                                              ; preds = %318
  %365 = load i32, i32* %17, align 4
  %366 = sub nsw i32 %365, 30
  store i32 %366, i32* %17, align 4
  br label %85

367:                                              ; preds = %85
  %368 = load i32*, i32** %13, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32*, i32** %14, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = or i32 %370, %373
  %375 = xor i32 %374, 1
  store i32 %375, i32* %18, align 4
  %376 = load i32*, i32** %16, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %15, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %381, %378
  store i32 %382, i32* %380, align 4
  store i64 1, i64* %12, align 8
  br label %383

383:                                              ; preds = %408, %367
  %384 = load i64, i64* %12, align 8
  %385 = load i64, i64* %11, align 8
  %386 = icmp ult i64 %384, %385
  br i1 %386, label %387, label %411

387:                                              ; preds = %383
  %388 = load i32*, i32** %13, align 8
  %389 = load i64, i64* %12, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %14, align 8
  %393 = load i64, i64* %12, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = or i32 %391, %395
  %397 = load i32, i32* %18, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %18, align 4
  %399 = load i32*, i32** %16, align 8
  %400 = load i64, i64* %12, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** %15, align 8
  %404 = load i64, i64* %12, align 8
  %405 = getelementptr inbounds i32, i32* %403, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = or i32 %406, %402
  store i32 %407, i32* %405, align 4
  br label %408

408:                                              ; preds = %387
  %409 = load i64, i64* %12, align 8
  %410 = add i64 %409, 1
  store i64 %410, i64* %12, align 8
  br label %383

411:                                              ; preds = %383
  %412 = load i32, i32* %18, align 4
  %413 = call i32 @EQ0(i32 %412)
  ret i32 %413
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

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
