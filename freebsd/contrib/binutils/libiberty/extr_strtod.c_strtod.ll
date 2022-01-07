; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtod.c_strtod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_strtod.c_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @strtod(i8* %0, i8** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call double @atof(i8* %12)
  store double %13, double* %3, align 8
  br label %323

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %21, %14
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @ISSPACE(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  br label %16

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 105
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 73
  br i1 %48, label %49, label %145

49:                                               ; preds = %43, %37
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 110
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 78
  br i1 %60, label %61, label %145

61:                                               ; preds = %55, %49
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 102
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 70
  br i1 %72, label %73, label %145

73:                                               ; preds = %67, %61
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 105
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 73
  br i1 %84, label %85, label %139

85:                                               ; preds = %79, %73
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 110
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 4
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 78
  br i1 %96, label %97, label %139

97:                                               ; preds = %91, %85
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 5
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 105
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 73
  br i1 %108, label %109, label %139

109:                                              ; preds = %103, %97
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 116
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 84
  br i1 %120, label %121, label %139

121:                                              ; preds = %115, %109
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 121
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 7
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 89
  br i1 %132, label %133, label %139

133:                                              ; preds = %127, %121
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  %136 = load i8**, i8*** %5, align 8
  store i8* %135, i8** %136, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = call double @atof(i8* %137)
  store double %138, double* %3, align 8
  br label %323

139:                                              ; preds = %127, %115, %103, %91, %79
  %140 = load i8*, i8** %6, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 3
  %142 = load i8**, i8*** %5, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = call double @atof(i8* %143)
  store double %144, double* %3, align 8
  br label %323

145:                                              ; preds = %67, %55, %43
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 110
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load i8*, i8** %6, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 78
  br i1 %156, label %157, label %220

157:                                              ; preds = %151, %145
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 97
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 65
  br i1 %168, label %169, label %220

169:                                              ; preds = %163, %157
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 110
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 78
  br i1 %180, label %181, label %220

181:                                              ; preds = %175, %169
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  store i8* %183, i8** %6, align 8
  %184 = load i8*, i8** %6, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 40
  br i1 %187, label %188, label %215

188:                                              ; preds = %181
  %189 = load i8*, i8** %6, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %6, align 8
  br label %191

191:                                              ; preds = %203, %188
  %192 = load i8*, i8** %6, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load i8*, i8** %6, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 41
  br label %201

201:                                              ; preds = %196, %191
  %202 = phi i1 [ false, %191 ], [ %200, %196 ]
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %6, align 8
  br label %191

206:                                              ; preds = %201
  %207 = load i8*, i8** %6, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 41
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** %6, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %6, align 8
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %181
  %216 = load i8*, i8** %6, align 8
  %217 = load i8**, i8*** %5, align 8
  store i8* %216, i8** %217, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = call double @atof(i8* %218)
  store double %219, double* %3, align 8
  br label %323

220:                                              ; preds = %175, %163, %151
  %221 = load i8*, i8** %6, align 8
  %222 = load i8, i8* %221, align 1
  %223 = call i64 @ISDIGIT(i8 signext %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %6, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 46
  br i1 %229, label %230, label %320

230:                                              ; preds = %225, %220
  store i32 0, i32* %7, align 4
  br label %231

231:                                              ; preds = %254, %230
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %232, align 1
  %234 = call i64 @ISDIGIT(i8 signext %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %246, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %236
  %240 = load i8*, i8** %6, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 46
  br label %244

244:                                              ; preds = %239, %236
  %245 = phi i1 [ false, %236 ], [ %243, %239 ]
  br label %246

246:                                              ; preds = %244, %231
  %247 = phi i1 [ true, %231 ], [ %245, %244 ]
  br i1 %247, label %248, label %257

248:                                              ; preds = %246
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 46
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  store i32 1, i32* %7, align 4
  br label %254

254:                                              ; preds = %253, %248
  %255 = load i8*, i8** %6, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %6, align 8
  br label %231

257:                                              ; preds = %246
  %258 = load i8*, i8** %6, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 101
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load i8*, i8** %6, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 69
  br i1 %266, label %267, label %315

267:                                              ; preds = %262, %257
  store i32 1, i32* %8, align 4
  %268 = load i8*, i8** %6, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 43
  br i1 %274, label %283, label %275

275:                                              ; preds = %267
  %276 = load i8*, i8** %6, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 45
  br i1 %282, label %283, label %286

283:                                              ; preds = %275, %267
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %283, %275
  %287 = load i8*, i8** %6, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = call i64 @ISDIGIT(i8 signext %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %303, %294
  %296 = load i8*, i8** %6, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = call i64 @ISDIGIT(i8 signext %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %8, align 4
  br label %295

306:                                              ; preds = %295
  %307 = load i8*, i8** %6, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load i8**, i8*** %5, align 8
  store i8* %310, i8** %311, align 8
  %312 = load i8*, i8** %4, align 8
  %313 = call double @atof(i8* %312)
  store double %313, double* %3, align 8
  br label %323

314:                                              ; preds = %286
  br label %315

315:                                              ; preds = %314, %262
  %316 = load i8*, i8** %6, align 8
  %317 = load i8**, i8*** %5, align 8
  store i8* %316, i8** %317, align 8
  %318 = load i8*, i8** %4, align 8
  %319 = call double @atof(i8* %318)
  store double %319, double* %3, align 8
  br label %323

320:                                              ; preds = %225
  %321 = load i8*, i8** %4, align 8
  %322 = load i8**, i8*** %5, align 8
  store i8* %321, i8** %322, align 8
  store double 0.000000e+00, double* %3, align 8
  br label %323

323:                                              ; preds = %320, %315, %306, %215, %139, %133, %11
  %324 = load double, double* %3, align 8
  ret double %324
}

declare dso_local double @atof(i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i64 @ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
