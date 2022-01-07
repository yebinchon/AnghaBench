; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_keygen_inner.c_mkprime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_keygen_inner.c_mkprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32*, i64, i32)* @mkprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkprime(i32** %0, i32* %1, i32 %2, i32 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
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
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 31
  %34 = ashr i32 %33, 5
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %15, align 8
  br label %36

36:                                               ; preds = %339, %303, %297, %272, %7
  %37 = load i32**, i32*** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mkrand(i32** %37, i32* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 1610612736
  store i32 %49, i32* %47, align 4
  br label %77

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 31
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %15, align 8
  %62 = sub i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 1073741824
  store i32 %65, i32* %63, align 4
  br label %76

66:                                               ; preds = %50
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 31
  %69 = sub nsw i32 %68, 2
  %70 = shl i32 3, %69
  %71 = load i32*, i32** %9, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %66, %54
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 3
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %16, align 8
  br label %82

82:                                               ; preds = %167, %77
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %170

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add i64 1, %88
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = and i32 %92, 65535
  %94 = load i32, i32* %24, align 4
  %95 = ashr i32 %94, 16
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %25, align 4
  %97 = load i32, i32* %24, align 4
  %98 = and i32 %97, 65535
  %99 = load i32, i32* %24, align 4
  %100 = ashr i32 %99, 16
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %24, align 4
  %103 = and i32 %102, 32767
  %104 = load i32, i32* %24, align 4
  %105 = ashr i32 %104, 15
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %24, align 4
  %108 = and i32 %107, 1048575
  %109 = load i32, i32* %24, align 4
  %110 = ashr i32 %109, 20
  %111 = add nsw i32 %108, %110
  store i32 %111, i32* %28, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i64, i64* %16, align 8
  %114 = and i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = shl i32 %112, %115
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = and i32 %119, 255
  %121 = load i32, i32* %17, align 4
  %122 = ashr i32 %121, 8
  %123 = add nsw i32 %120, %122
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i64, i64* %16, align 8
  %126 = sub i64 4, %125
  %127 = and i64 %126, 3
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %124, %128
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = and i32 %132, 4095
  %134 = load i32, i32* %18, align 4
  %135 = ashr i32 %134, 12
  %136 = add nsw i32 %133, %135
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32, i32* %22, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = and i32 %142, 511
  %144 = load i32, i32* %19, align 4
  %145 = ashr i32 %144, 9
  %146 = add nsw i32 %143, %145
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %22, align 4
  %149 = icmp eq i32 %148, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %86
  store i32 0, i32* %22, align 4
  br label %151

151:                                              ; preds = %150, %86
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %23, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* %23, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %23, align 4
  %159 = icmp eq i32 %158, 10
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 0, i32* %23, align 4
  br label %161

161:                                              ; preds = %160, %151
  %162 = load i32, i32* %20, align 4
  %163 = and i32 %162, 1023
  %164 = load i32, i32* %20, align 4
  %165 = ashr i32 %164, 10
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %161
  %168 = load i64, i64* %16, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %16, align 8
  br label %82

170:                                              ; preds = %82
  %171 = load i32, i32* %17, align 4
  %172 = and i32 %171, 63
  %173 = load i32, i32* %17, align 4
  %174 = ashr i32 %173, 6
  %175 = add nsw i32 %172, %174
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = and i32 %176, 15
  %178 = load i32, i32* %17, align 4
  %179 = ashr i32 %178, 4
  %180 = add nsw i32 %177, %179
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = mul nsw i32 %181, 43
  %183 = ashr i32 %182, 5
  %184 = and i32 %183, 3
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %18, align 4
  %186 = and i32 %185, 255
  %187 = load i32, i32* %18, align 4
  %188 = ashr i32 %187, 8
  %189 = add nsw i32 %186, %188
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = and i32 %190, 15
  %192 = load i32, i32* %18, align 4
  %193 = ashr i32 %192, 4
  %194 = add nsw i32 %191, %193
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @GT(i32 %195, i32 19)
  %197 = sub nsw i32 0, %196
  %198 = and i32 20, %197
  %199 = load i32, i32* %18, align 4
  %200 = sub nsw i32 %199, %198
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @GT(i32 %201, i32 9)
  %203 = sub nsw i32 0, %202
  %204 = and i32 10, %203
  %205 = load i32, i32* %18, align 4
  %206 = sub nsw i32 %205, %204
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = call i32 @GT(i32 %207, i32 4)
  %209 = sub nsw i32 0, %208
  %210 = and i32 5, %209
  %211 = load i32, i32* %18, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %19, align 4
  %214 = and i32 %213, 63
  %215 = load i32, i32* %19, align 4
  %216 = ashr i32 %215, 6
  %217 = add nsw i32 %214, %216
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %19, align 4
  %219 = and i32 %218, 7
  %220 = load i32, i32* %19, align 4
  %221 = ashr i32 %220, 3
  %222 = add nsw i32 %219, %221
  store i32 %222, i32* %19, align 4
  %223 = load i32, i32* %19, align 4
  %224 = mul nsw i32 %223, 147
  %225 = ashr i32 %224, 7
  %226 = and i32 %225, 7
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %20, align 4
  %228 = and i32 %227, 1023
  %229 = load i32, i32* %20, align 4
  %230 = ashr i32 %229, 10
  %231 = add nsw i32 %228, %230
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %20, align 4
  %233 = and i32 %232, 1023
  %234 = load i32, i32* %20, align 4
  %235 = ashr i32 %234, 10
  %236 = add nsw i32 %233, %235
  store i32 %236, i32* %20, align 4
  %237 = load i32, i32* %20, align 4
  %238 = and i32 %237, 31
  %239 = add nsw i32 %238, 33
  %240 = load i32, i32* %20, align 4
  %241 = ashr i32 %240, 5
  %242 = sub nsw i32 %239, %241
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %20, align 4
  %244 = call i32 @GT(i32 %243, i32 43)
  %245 = sub nsw i32 0, %244
  %246 = and i32 44, %245
  %247 = load i32, i32* %20, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %20, align 4
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @GT(i32 %249, i32 21)
  %251 = sub nsw i32 0, %250
  %252 = and i32 22, %251
  %253 = load i32, i32* %20, align 4
  %254 = sub nsw i32 %253, %252
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i32 @GT(i32 %255, i32 10)
  %257 = sub nsw i32 0, %256
  %258 = and i32 11, %257
  %259 = load i32, i32* %20, align 4
  %260 = sub nsw i32 %259, %258
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %17, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %170
  %264 = load i32, i32* %18, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %19, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %20, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %269, %266, %263, %170
  br label %36

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = icmp eq i32 %274, 3
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %17, align 4
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %297, label %279

279:                                              ; preds = %276, %273
  %280 = load i32, i32* %11, align 4
  %281 = icmp eq i32 %280, 5
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i32, i32* %18, align 4
  %284 = icmp eq i32 %283, 5
  br i1 %284, label %297, label %285

285:                                              ; preds = %282, %279
  %286 = load i32, i32* %11, align 4
  %287 = icmp eq i32 %286, 7
  br i1 %287, label %288, label %291

288:                                              ; preds = %285
  %289 = load i32, i32* %18, align 4
  %290 = icmp eq i32 %289, 7
  br i1 %290, label %297, label %291

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %11, align 4
  %293 = icmp eq i32 %292, 11
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32, i32* %18, align 4
  %296 = icmp eq i32 %295, 11
  br i1 %296, label %297, label %298

297:                                              ; preds = %294, %288, %282, %276
  br label %36

298:                                              ; preds = %294, %291
  %299 = load i32*, i32** %9, align 8
  %300 = load i32*, i32** %12, align 8
  %301 = call i32 @trial_divisions(i32* %299, i32* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %298
  br label %36

304:                                              ; preds = %298
  %305 = load i32, i32* %10, align 4
  %306 = icmp slt i32 %305, 309
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 12, i32* %21, align 4
  br label %329

308:                                              ; preds = %304
  %309 = load i32, i32* %10, align 4
  %310 = icmp slt i32 %309, 464
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 9, i32* %21, align 4
  br label %328

312:                                              ; preds = %308
  %313 = load i32, i32* %10, align 4
  %314 = icmp slt i32 %313, 670
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i32 6, i32* %21, align 4
  br label %327

316:                                              ; preds = %312
  %317 = load i32, i32* %10, align 4
  %318 = icmp slt i32 %317, 877
  br i1 %318, label %319, label %320

319:                                              ; preds = %316
  store i32 4, i32* %21, align 4
  br label %326

320:                                              ; preds = %316
  %321 = load i32, i32* %10, align 4
  %322 = icmp slt i32 %321, 1341
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  store i32 3, i32* %21, align 4
  br label %325

324:                                              ; preds = %320
  store i32 2, i32* %21, align 4
  br label %325

325:                                              ; preds = %324, %323
  br label %326

326:                                              ; preds = %325, %319
  br label %327

327:                                              ; preds = %326, %315
  br label %328

328:                                              ; preds = %327, %311
  br label %329

329:                                              ; preds = %328, %307
  %330 = load i32**, i32*** %8, align 8
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* %21, align 4
  %333 = load i32*, i32** %12, align 8
  %334 = load i64, i64* %13, align 8
  %335 = load i32, i32* %14, align 4
  %336 = call i64 @miller_rabin(i32** %330, i32* %331, i32 %332, i32* %333, i64 %334, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %329
  ret void

339:                                              ; preds = %329
  br label %36
}

declare dso_local i32 @mkrand(i32**, i32*, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @trial_divisions(i32*, i32*) #1

declare dso_local i64 @miller_rabin(i32**, i32*, i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
