; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_mkprime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i15_keygen.c_mkprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32*, i64)* @mkprime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkprime(i32** %0, i32* %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 15
  %26 = ashr i32 %25, 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %297, %262, %256, %231, %6
  %29 = load i32**, i32*** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mkrand(i32** %29, i32* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, 24576
  store i32 %41, i32* %39, align 4
  br label %69

42:                                               ; preds = %28
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 16384
  store i32 %57, i32* %55, align 4
  br label %68

58:                                               ; preds = %42
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 15
  %61 = sub nsw i32 %60, 2
  %62 = shl i32 3, %61
  %63 = load i32*, i32** %8, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %58, %46
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, 3
  store i32 %73, i32* %71, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %14, align 8
  br label %74

74:                                               ; preds = %131, %69
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %134

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %14, align 8
  %81 = add i64 1, %80
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i64, i64* %14, align 8
  %86 = and i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %84, %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 255
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 8
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i64, i64* %14, align 8
  %98 = sub i64 4, %97
  %99 = and i64 %98, 3
  %100 = trunc i64 %99 to i32
  %101 = shl i32 %96, %100
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = and i32 %104, 255
  %106 = load i32, i32* %16, align 4
  %107 = ashr i32 %106, 8
  %108 = add nsw i32 %105, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = and i32 %112, 511
  %114 = load i32, i32* %17, align 4
  %115 = ashr i32 %114, 9
  %116 = add nsw i32 %113, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load i64, i64* %14, align 8
  %119 = and i64 %118, 1
  %120 = sub i64 0, %119
  %121 = and i64 5, %120
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %117, %122
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = and i32 %126, 1023
  %128 = load i32, i32* %18, align 4
  %129 = ashr i32 %128, 10
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %78
  %132 = load i64, i64* %14, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %14, align 8
  br label %74

134:                                              ; preds = %74
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 15
  %137 = load i32, i32* %15, align 4
  %138 = ashr i32 %137, 4
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = and i32 %140, 15
  %142 = load i32, i32* %15, align 4
  %143 = ashr i32 %142, 4
  %144 = add nsw i32 %141, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  %146 = mul nsw i32 %145, 43
  %147 = ashr i32 %146, 5
  %148 = and i32 %147, 3
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = and i32 %149, 255
  %151 = load i32, i32* %16, align 4
  %152 = ashr i32 %151, 8
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = and i32 %154, 15
  %156 = load i32, i32* %16, align 4
  %157 = ashr i32 %156, 4
  %158 = add nsw i32 %155, %157
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, 15
  %161 = load i32, i32* %16, align 4
  %162 = ashr i32 %161, 4
  %163 = add nsw i32 %160, %162
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i32 @GT(i32 %164, i32 9)
  %166 = sub nsw i32 0, %165
  %167 = and i32 10, %166
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %16, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @GT(i32 %170, i32 4)
  %172 = sub nsw i32 0, %171
  %173 = and i32 5, %172
  %174 = load i32, i32* %16, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %17, align 4
  %177 = and i32 %176, 63
  %178 = load i32, i32* %17, align 4
  %179 = ashr i32 %178, 6
  %180 = add nsw i32 %177, %179
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %17, align 4
  %182 = and i32 %181, 7
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 3
  %185 = add nsw i32 %182, %184
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = mul nsw i32 %186, 147
  %188 = ashr i32 %187, 7
  %189 = and i32 %188, 7
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %18, align 4
  %191 = and i32 %190, 31
  %192 = add nsw i32 %191, 66
  %193 = load i32, i32* %18, align 4
  %194 = ashr i32 %193, 5
  %195 = sub nsw i32 %192, %194
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @GT(i32 %196, i32 87)
  %198 = sub nsw i32 0, %197
  %199 = and i32 88, %198
  %200 = load i32, i32* %18, align 4
  %201 = sub nsw i32 %200, %199
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @GT(i32 %202, i32 43)
  %204 = sub nsw i32 0, %203
  %205 = and i32 44, %204
  %206 = load i32, i32* %18, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* %18, align 4
  %209 = call i32 @GT(i32 %208, i32 21)
  %210 = sub nsw i32 0, %209
  %211 = and i32 22, %210
  %212 = load i32, i32* %18, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %18, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @GT(i32 %214, i32 10)
  %216 = sub nsw i32 0, %215
  %217 = and i32 11, %216
  %218 = load i32, i32* %18, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %231, label %222

222:                                              ; preds = %134
  %223 = load i32, i32* %16, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %17, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %18, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %228, %225, %222, %134
  br label %28

232:                                              ; preds = %228
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %15, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %256, label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* %10, align 4
  %240 = icmp eq i32 %239, 5
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* %16, align 4
  %243 = icmp eq i32 %242, 5
  br i1 %243, label %256, label %244

244:                                              ; preds = %241, %238
  %245 = load i32, i32* %10, align 4
  %246 = icmp eq i32 %245, 7
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i32, i32* %16, align 4
  %249 = icmp eq i32 %248, 7
  br i1 %249, label %256, label %250

250:                                              ; preds = %247, %244
  %251 = load i32, i32* %10, align 4
  %252 = icmp eq i32 %251, 11
  br i1 %252, label %253, label %257

253:                                              ; preds = %250
  %254 = load i32, i32* %16, align 4
  %255 = icmp eq i32 %254, 11
  br i1 %255, label %256, label %257

256:                                              ; preds = %253, %247, %241, %235
  br label %28

257:                                              ; preds = %253, %250
  %258 = load i32*, i32** %8, align 8
  %259 = load i32*, i32** %11, align 8
  %260 = call i32 @trial_divisions(i32* %258, i32* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  br label %28

263:                                              ; preds = %257
  %264 = load i32, i32* %9, align 4
  %265 = icmp slt i32 %264, 320
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store i32 12, i32* %19, align 4
  br label %288

267:                                              ; preds = %263
  %268 = load i32, i32* %9, align 4
  %269 = icmp slt i32 %268, 480
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i32 9, i32* %19, align 4
  br label %287

271:                                              ; preds = %267
  %272 = load i32, i32* %9, align 4
  %273 = icmp slt i32 %272, 693
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store i32 6, i32* %19, align 4
  br label %286

275:                                              ; preds = %271
  %276 = load i32, i32* %9, align 4
  %277 = icmp slt i32 %276, 906
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 4, i32* %19, align 4
  br label %285

279:                                              ; preds = %275
  %280 = load i32, i32* %9, align 4
  %281 = icmp slt i32 %280, 1386
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 3, i32* %19, align 4
  br label %284

283:                                              ; preds = %279
  store i32 2, i32* %19, align 4
  br label %284

284:                                              ; preds = %283, %282
  br label %285

285:                                              ; preds = %284, %278
  br label %286

286:                                              ; preds = %285, %274
  br label %287

287:                                              ; preds = %286, %270
  br label %288

288:                                              ; preds = %287, %266
  %289 = load i32**, i32*** %7, align 8
  %290 = load i32*, i32** %8, align 8
  %291 = load i32, i32* %19, align 4
  %292 = load i32*, i32** %11, align 8
  %293 = load i64, i64* %12, align 8
  %294 = call i64 @miller_rabin(i32** %289, i32* %290, i32 %291, i32* %292, i64 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  ret void

297:                                              ; preds = %288
  br label %28
}

declare dso_local i32 @mkrand(i32**, i32*, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @trial_divisions(i32*, i32*) #1

declare dso_local i64 @miller_rabin(i32**, i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
