; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_md5.c_br_md5_round.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_md5.c_br_md5_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K = common dso_local global i64* null, align 8
@MP = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_md5_round(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca [16 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 3
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 0
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @br_range_dec32le(i64* %23, i32 16, i8* %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %118, %2
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %121

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @F(i64 %32, i64 %33, i64 %34)
  %36 = add nsw i64 %31, %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %36, %41
  %43 = load i64*, i64** @K, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 0
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %42, %48
  %50 = call i64 @ROTL(i64 %49, i32 7)
  %51 = add nsw i64 %30, %50
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @F(i64 %54, i64 %55, i64 %56)
  %58 = add nsw i64 %53, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = load i64*, i64** @K, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %64, %70
  %72 = call i64 @ROTL(i64 %71, i32 12)
  %73 = add nsw i64 %52, %72
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @F(i64 %76, i64 %77, i64 %78)
  %80 = add nsw i64 %75, %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = load i64*, i64** @K, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %86, %92
  %94 = call i64 @ROTL(i64 %93, i32 17)
  %95 = add nsw i64 %74, %94
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @F(i64 %98, i64 %99, i64 %100)
  %102 = add nsw i64 %97, %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %102, %107
  %109 = load i64*, i64** @K, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %108, %114
  %116 = call i64 @ROTL(i64 %115, i32 22)
  %117 = add nsw i64 %96, %116
  store i64 %117, i64* %7, align 8
  br label %118

118:                                              ; preds = %29
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %10, align 4
  br label %26

121:                                              ; preds = %26
  store i32 16, i32* %10, align 4
  br label %122

122:                                              ; preds = %226, %121
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %229

125:                                              ; preds = %122
  %126 = load i64, i64* %7, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @G(i64 %128, i64 %129, i64 %130)
  %132 = add nsw i64 %127, %131
  %133 = load i64*, i64** @MP, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %134, 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %132, %140
  %142 = load i64*, i64** @K, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 0
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %141, %147
  %149 = call i64 @ROTL(i64 %148, i32 5)
  %150 = add nsw i64 %126, %149
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i64 @G(i64 %153, i64 %154, i64 %155)
  %157 = add nsw i64 %152, %156
  %158 = load i64*, i64** @MP, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 15
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %157, %165
  %167 = load i64*, i64** @K, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %167, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %166, %172
  %174 = call i64 @ROTL(i64 %173, i32 9)
  %175 = add nsw i64 %151, %174
  store i64 %175, i64* %9, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i64 @G(i64 %178, i64 %179, i64 %180)
  %182 = add nsw i64 %177, %181
  %183 = load i64*, i64** @MP, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %184, 14
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %182, %190
  %192 = load i64*, i64** @K, align 8
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %191, %197
  %199 = call i64 @ROTL(i64 %198, i32 14)
  %200 = add nsw i64 %176, %199
  store i64 %200, i64* %8, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* %8, align 8
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* %6, align 8
  %206 = call i64 @G(i64 %203, i64 %204, i64 %205)
  %207 = add nsw i64 %202, %206
  %208 = load i64*, i64** @MP, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sub nsw i32 %209, 13
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %207, %215
  %217 = load i64*, i64** @K, align 8
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %216, %222
  %224 = call i64 @ROTL(i64 %223, i32 20)
  %225 = add nsw i64 %201, %224
  store i64 %225, i64* %7, align 8
  br label %226

226:                                              ; preds = %125
  %227 = load i32, i32* %10, align 4
  %228 = add nsw i32 %227, 4
  store i32 %228, i32* %10, align 4
  br label %122

229:                                              ; preds = %122
  store i32 32, i32* %10, align 4
  br label %230

230:                                              ; preds = %334, %229
  %231 = load i32, i32* %10, align 4
  %232 = icmp slt i32 %231, 48
  br i1 %232, label %233, label %337

233:                                              ; preds = %230
  %234 = load i64, i64* %7, align 8
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %7, align 8
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %9, align 8
  %239 = call i64 @H(i64 %236, i64 %237, i64 %238)
  %240 = add nsw i64 %235, %239
  %241 = load i64*, i64** @MP, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sub nsw i32 %242, 16
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %241, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %240, %248
  %250 = load i64*, i64** @K, align 8
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 0
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %250, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %249, %255
  %257 = call i64 @ROTL(i64 %256, i32 4)
  %258 = add nsw i64 %234, %257
  store i64 %258, i64* %6, align 8
  %259 = load i64, i64* %6, align 8
  %260 = load i64, i64* %9, align 8
  %261 = load i64, i64* %6, align 8
  %262 = load i64, i64* %7, align 8
  %263 = load i64, i64* %8, align 8
  %264 = call i64 @H(i64 %261, i64 %262, i64 %263)
  %265 = add nsw i64 %260, %264
  %266 = load i64*, i64** @MP, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sub nsw i32 %267, 15
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %266, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %265, %273
  %275 = load i64*, i64** @K, align 8
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %275, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %274, %280
  %282 = call i64 @ROTL(i64 %281, i32 11)
  %283 = add nsw i64 %259, %282
  store i64 %283, i64* %9, align 8
  %284 = load i64, i64* %9, align 8
  %285 = load i64, i64* %8, align 8
  %286 = load i64, i64* %9, align 8
  %287 = load i64, i64* %6, align 8
  %288 = load i64, i64* %7, align 8
  %289 = call i64 @H(i64 %286, i64 %287, i64 %288)
  %290 = add nsw i64 %285, %289
  %291 = load i64*, i64** @MP, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sub nsw i32 %292, 14
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %291, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = add nsw i64 %290, %298
  %300 = load i64*, i64** @K, align 8
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 2
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %300, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %299, %305
  %307 = call i64 @ROTL(i64 %306, i32 16)
  %308 = add nsw i64 %284, %307
  store i64 %308, i64* %8, align 8
  %309 = load i64, i64* %8, align 8
  %310 = load i64, i64* %7, align 8
  %311 = load i64, i64* %8, align 8
  %312 = load i64, i64* %9, align 8
  %313 = load i64, i64* %6, align 8
  %314 = call i64 @H(i64 %311, i64 %312, i64 %313)
  %315 = add nsw i64 %310, %314
  %316 = load i64*, i64** @MP, align 8
  %317 = load i32, i32* %10, align 4
  %318 = sub nsw i32 %317, 13
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %316, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = add nsw i64 %315, %323
  %325 = load i64*, i64** @K, align 8
  %326 = load i32, i32* %10, align 4
  %327 = add nsw i32 %326, 3
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %325, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %324, %330
  %332 = call i64 @ROTL(i64 %331, i32 23)
  %333 = add nsw i64 %309, %332
  store i64 %333, i64* %7, align 8
  br label %334

334:                                              ; preds = %233
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 4
  store i32 %336, i32* %10, align 4
  br label %230

337:                                              ; preds = %230
  store i32 48, i32* %10, align 4
  br label %338

338:                                              ; preds = %442, %337
  %339 = load i32, i32* %10, align 4
  %340 = icmp slt i32 %339, 64
  br i1 %340, label %341, label %445

341:                                              ; preds = %338
  %342 = load i64, i64* %7, align 8
  %343 = load i64, i64* %6, align 8
  %344 = load i64, i64* %7, align 8
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* %9, align 8
  %347 = call i64 @I(i64 %344, i64 %345, i64 %346)
  %348 = add nsw i64 %343, %347
  %349 = load i64*, i64** @MP, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sub nsw i32 %350, 16
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %349, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = add nsw i64 %348, %356
  %358 = load i64*, i64** @K, align 8
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 %359, 0
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %358, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = add nsw i64 %357, %363
  %365 = call i64 @ROTL(i64 %364, i32 6)
  %366 = add nsw i64 %342, %365
  store i64 %366, i64* %6, align 8
  %367 = load i64, i64* %6, align 8
  %368 = load i64, i64* %9, align 8
  %369 = load i64, i64* %6, align 8
  %370 = load i64, i64* %7, align 8
  %371 = load i64, i64* %8, align 8
  %372 = call i64 @I(i64 %369, i64 %370, i64 %371)
  %373 = add nsw i64 %368, %372
  %374 = load i64*, i64** @MP, align 8
  %375 = load i32, i32* %10, align 4
  %376 = sub nsw i32 %375, 15
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %374, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %379
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %373, %381
  %383 = load i64*, i64** @K, align 8
  %384 = load i32, i32* %10, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %383, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %382, %388
  %390 = call i64 @ROTL(i64 %389, i32 10)
  %391 = add nsw i64 %367, %390
  store i64 %391, i64* %9, align 8
  %392 = load i64, i64* %9, align 8
  %393 = load i64, i64* %8, align 8
  %394 = load i64, i64* %9, align 8
  %395 = load i64, i64* %6, align 8
  %396 = load i64, i64* %7, align 8
  %397 = call i64 @I(i64 %394, i64 %395, i64 %396)
  %398 = add nsw i64 %393, %397
  %399 = load i64*, i64** @MP, align 8
  %400 = load i32, i32* %10, align 4
  %401 = sub nsw i32 %400, 14
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i64, i64* %399, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = add nsw i64 %398, %406
  %408 = load i64*, i64** @K, align 8
  %409 = load i32, i32* %10, align 4
  %410 = add nsw i32 %409, 2
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %408, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %407, %413
  %415 = call i64 @ROTL(i64 %414, i32 15)
  %416 = add nsw i64 %392, %415
  store i64 %416, i64* %8, align 8
  %417 = load i64, i64* %8, align 8
  %418 = load i64, i64* %7, align 8
  %419 = load i64, i64* %8, align 8
  %420 = load i64, i64* %9, align 8
  %421 = load i64, i64* %6, align 8
  %422 = call i64 @I(i64 %419, i64 %420, i64 %421)
  %423 = add nsw i64 %418, %422
  %424 = load i64*, i64** @MP, align 8
  %425 = load i32, i32* %10, align 4
  %426 = sub nsw i32 %425, 13
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i64, i64* %424, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = getelementptr inbounds [16 x i64], [16 x i64]* %5, i64 0, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = add nsw i64 %423, %431
  %433 = load i64*, i64** @K, align 8
  %434 = load i32, i32* %10, align 4
  %435 = add nsw i32 %434, 3
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %433, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %432, %438
  %440 = call i64 @ROTL(i64 %439, i32 21)
  %441 = add nsw i64 %417, %440
  store i64 %441, i64* %7, align 8
  br label %442

442:                                              ; preds = %341
  %443 = load i32, i32* %10, align 4
  %444 = add nsw i32 %443, 4
  store i32 %444, i32* %10, align 4
  br label %338

445:                                              ; preds = %338
  %446 = load i64, i64* %6, align 8
  %447 = load i64*, i64** %4, align 8
  %448 = getelementptr inbounds i64, i64* %447, i64 0
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %449, %446
  store i64 %450, i64* %448, align 8
  %451 = load i64, i64* %7, align 8
  %452 = load i64*, i64** %4, align 8
  %453 = getelementptr inbounds i64, i64* %452, i64 1
  %454 = load i64, i64* %453, align 8
  %455 = add nsw i64 %454, %451
  store i64 %455, i64* %453, align 8
  %456 = load i64, i64* %8, align 8
  %457 = load i64*, i64** %4, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 2
  %459 = load i64, i64* %458, align 8
  %460 = add nsw i64 %459, %456
  store i64 %460, i64* %458, align 8
  %461 = load i64, i64* %9, align 8
  %462 = load i64*, i64** %4, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 3
  %464 = load i64, i64* %463, align 8
  %465 = add nsw i64 %464, %461
  store i64 %465, i64* %463, align 8
  ret void
}

declare dso_local i32 @br_range_dec32le(i64*, i32, i8*) #1

declare dso_local i64 @ROTL(i64, i32) #1

declare dso_local i64 @F(i64, i64, i64) #1

declare dso_local i64 @G(i64, i64, i64) #1

declare dso_local i64 @H(i64, i64, i64) #1

declare dso_local i64 @I(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
