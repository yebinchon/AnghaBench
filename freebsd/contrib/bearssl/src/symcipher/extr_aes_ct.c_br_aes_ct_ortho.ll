; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct.c_br_aes_ct_ortho.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct.c_br_aes_ct_ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_ortho(i32* %0) #0 {
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
  store i32* %0, i32** %2, align 8
  br label %27

27:                                               ; preds = %1
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 1431655765
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 1431655765
  %38 = shl i32 %37, 1
  %39 = or i32 %35, %38
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, -1431655766
  %44 = ashr i32 %43, 1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, -1431655766
  %47 = or i32 %44, %46
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 1431655765
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 1431655765
  %62 = shl i32 %61, 1
  %63 = or i32 %59, %62
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, -1431655766
  %68 = ashr i32 %67, 1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, -1431655766
  %71 = or i32 %68, %70
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1431655765
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 1431655765
  %86 = shl i32 %85, 1
  %87 = or i32 %83, %86
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, -1431655766
  %92 = ashr i32 %91, 1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, -1431655766
  %95 = or i32 %92, %94
  %96 = load i32*, i32** %2, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %75
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 1431655765
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 1431655765
  %110 = shl i32 %109, 1
  %111 = or i32 %107, %110
  %112 = load i32*, i32** %2, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, -1431655766
  %116 = ashr i32 %115, 1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, -1431655766
  %119 = or i32 %116, %118
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 7
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122
  %124 = load i32*, i32** %2, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32*, i32** %2, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 858993459
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 858993459
  %134 = shl i32 %133, 2
  %135 = or i32 %131, %134
  %136 = load i32*, i32** %2, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, -858993460
  %140 = ashr i32 %139, 2
  %141 = load i32, i32* %12, align 4
  %142 = and i32 %141, -858993460
  %143 = or i32 %140, %142
  %144 = load i32*, i32** %2, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %123
  br label %147

147:                                              ; preds = %146
  %148 = load i32*, i32** %2, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %13, align 4
  %151 = load i32*, i32** %2, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %154, 858993459
  %156 = load i32, i32* %14, align 4
  %157 = and i32 %156, 858993459
  %158 = shl i32 %157, 2
  %159 = or i32 %155, %158
  %160 = load i32*, i32** %2, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = and i32 %162, -858993460
  %164 = ashr i32 %163, 2
  %165 = load i32, i32* %14, align 4
  %166 = and i32 %165, -858993460
  %167 = or i32 %164, %166
  %168 = load i32*, i32** %2, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %147
  br label %171

171:                                              ; preds = %170
  %172 = load i32*, i32** %2, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 4
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %15, align 4
  %175 = load i32*, i32** %2, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 6
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = and i32 %178, 858993459
  %180 = load i32, i32* %16, align 4
  %181 = and i32 %180, 858993459
  %182 = shl i32 %181, 2
  %183 = or i32 %179, %182
  %184 = load i32*, i32** %2, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %15, align 4
  %187 = and i32 %186, -858993460
  %188 = ashr i32 %187, 2
  %189 = load i32, i32* %16, align 4
  %190 = and i32 %189, -858993460
  %191 = or i32 %188, %190
  %192 = load i32*, i32** %2, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 6
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %171
  br label %195

195:                                              ; preds = %194
  %196 = load i32*, i32** %2, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 5
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %17, align 4
  %199 = load i32*, i32** %2, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 7
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %17, align 4
  %203 = and i32 %202, 858993459
  %204 = load i32, i32* %18, align 4
  %205 = and i32 %204, 858993459
  %206 = shl i32 %205, 2
  %207 = or i32 %203, %206
  %208 = load i32*, i32** %2, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 5
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %17, align 4
  %211 = and i32 %210, -858993460
  %212 = ashr i32 %211, 2
  %213 = load i32, i32* %18, align 4
  %214 = and i32 %213, -858993460
  %215 = or i32 %212, %214
  %216 = load i32*, i32** %2, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 7
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %195
  br label %219

219:                                              ; preds = %218
  %220 = load i32*, i32** %2, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %19, align 4
  %223 = load i32*, i32** %2, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %20, align 4
  %226 = load i32, i32* %19, align 4
  %227 = and i32 %226, 252645135
  %228 = load i32, i32* %20, align 4
  %229 = and i32 %228, 252645135
  %230 = shl i32 %229, 4
  %231 = or i32 %227, %230
  %232 = load i32*, i32** %2, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %19, align 4
  %235 = and i32 %234, -252645136
  %236 = ashr i32 %235, 4
  %237 = load i32, i32* %20, align 4
  %238 = and i32 %237, -252645136
  %239 = or i32 %236, %238
  %240 = load i32*, i32** %2, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %219
  br label %243

243:                                              ; preds = %242
  %244 = load i32*, i32** %2, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %21, align 4
  %247 = load i32*, i32** %2, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 5
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %22, align 4
  %250 = load i32, i32* %21, align 4
  %251 = and i32 %250, 252645135
  %252 = load i32, i32* %22, align 4
  %253 = and i32 %252, 252645135
  %254 = shl i32 %253, 4
  %255 = or i32 %251, %254
  %256 = load i32*, i32** %2, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %21, align 4
  %259 = and i32 %258, -252645136
  %260 = ashr i32 %259, 4
  %261 = load i32, i32* %22, align 4
  %262 = and i32 %261, -252645136
  %263 = or i32 %260, %262
  %264 = load i32*, i32** %2, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 5
  store i32 %263, i32* %265, align 4
  br label %266

266:                                              ; preds = %243
  br label %267

267:                                              ; preds = %266
  %268 = load i32*, i32** %2, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %23, align 4
  %271 = load i32*, i32** %2, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 6
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %24, align 4
  %274 = load i32, i32* %23, align 4
  %275 = and i32 %274, 252645135
  %276 = load i32, i32* %24, align 4
  %277 = and i32 %276, 252645135
  %278 = shl i32 %277, 4
  %279 = or i32 %275, %278
  %280 = load i32*, i32** %2, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %23, align 4
  %283 = and i32 %282, -252645136
  %284 = ashr i32 %283, 4
  %285 = load i32, i32* %24, align 4
  %286 = and i32 %285, -252645136
  %287 = or i32 %284, %286
  %288 = load i32*, i32** %2, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 6
  store i32 %287, i32* %289, align 4
  br label %290

290:                                              ; preds = %267
  br label %291

291:                                              ; preds = %290
  %292 = load i32*, i32** %2, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 3
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %25, align 4
  %295 = load i32*, i32** %2, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 7
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %25, align 4
  %299 = and i32 %298, 252645135
  %300 = load i32, i32* %26, align 4
  %301 = and i32 %300, 252645135
  %302 = shl i32 %301, 4
  %303 = or i32 %299, %302
  %304 = load i32*, i32** %2, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %25, align 4
  %307 = and i32 %306, -252645136
  %308 = ashr i32 %307, 4
  %309 = load i32, i32* %26, align 4
  %310 = and i32 %309, -252645136
  %311 = or i32 %308, %310
  %312 = load i32*, i32** %2, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 7
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %291
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
