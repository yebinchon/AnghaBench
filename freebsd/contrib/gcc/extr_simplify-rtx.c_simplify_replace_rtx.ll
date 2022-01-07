; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_replace_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_replace_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @simplify_replace_rtx(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @GET_CODE(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @GET_MODE(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %4, align 8
  br label %285

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @GET_RTX_CLASS(i32 %24)
  switch i32 %25, label %282 [
    i32 128, label %26
    i32 136, label %47
    i32 134, label %47
    i32 132, label %75
    i32 133, label %75
    i32 129, label %118
    i32 135, label %118
    i32 131, label %168
    i32 130, label %203
  ]

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @GET_MODE(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @simplify_replace_rtx(i64 %31, i64 %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @XEXP(i64 %36, i32 0)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %4, align 8
  br label %285

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @simplify_gen_unary(i32 %42, i32 %43, i64 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  br label %285

47:                                               ; preds = %23, %23
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @simplify_replace_rtx(i64 %49, i64 %50, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @XEXP(i64 %53, i32 1)
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i64 @simplify_replace_rtx(i64 %54, i64 %55, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @XEXP(i64 %59, i32 0)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %47
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @XEXP(i64 %64, i32 1)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  store i64 %68, i64* %4, align 8
  br label %285

69:                                               ; preds = %62, %47
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @simplify_gen_binary(i32 %70, i32 %71, i64 %72, i64 %73)
  store i64 %74, i64* %4, align 8
  br label %285

75:                                               ; preds = %23, %23
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @XEXP(i64 %76, i32 0)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @XEXP(i64 %78, i32 1)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @GET_MODE(i64 %80)
  %82 = load i32, i32* @VOIDmode, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @GET_MODE(i64 %85)
  br label %90

87:                                               ; preds = %75
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @GET_MODE(i64 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %86, %84 ], [ %89, %87 ]
  store i32 %91, i32* %10, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @simplify_replace_rtx(i64 %92, i64 %93, i64 %94)
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i64 @simplify_replace_rtx(i64 %96, i64 %97, i64 %98)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @XEXP(i64 %101, i32 0)
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %90
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @XEXP(i64 %106, i32 1)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* %5, align 8
  store i64 %110, i64* %4, align 8
  br label %285

111:                                              ; preds = %104, %90
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @simplify_gen_relational(i32 %112, i32 %113, i32 %114, i64 %115, i64 %116)
  store i64 %117, i64* %4, align 8
  br label %285

118:                                              ; preds = %23, %23
  %119 = load i64, i64* %5, align 8
  %120 = call i64 @XEXP(i64 %119, i32 0)
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @GET_MODE(i64 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %7, align 8
  %126 = call i64 @simplify_replace_rtx(i64 %123, i64 %124, i64 %125)
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @XEXP(i64 %127, i32 1)
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @simplify_replace_rtx(i64 %128, i64 %129, i64 %130)
  store i64 %131, i64* %12, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i64 @XEXP(i64 %132, i32 2)
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = call i64 @simplify_replace_rtx(i64 %133, i64 %134, i64 %135)
  store i64 %136, i64* %13, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @XEXP(i64 %138, i32 0)
  %140 = icmp eq i64 %137, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %118
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %5, align 8
  %144 = call i64 @XEXP(i64 %143, i32 1)
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @XEXP(i64 %148, i32 2)
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i64, i64* %5, align 8
  store i64 %152, i64* %4, align 8
  br label %285

153:                                              ; preds = %146, %141, %118
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @VOIDmode, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @GET_MODE(i64 %158)
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i64 @simplify_gen_ternary(i32 %161, i32 %162, i32 %163, i64 %164, i64 %165, i64 %166)
  store i64 %167, i64* %4, align 8
  br label %285

168:                                              ; preds = %23
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @SUBREG, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %168
  %173 = load i64, i64* %5, align 8
  %174 = call i64 @SUBREG_REG(i64 %173)
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* %7, align 8
  %177 = call i64 @simplify_replace_rtx(i64 %174, i64 %175, i64 %176)
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %5, align 8
  %180 = call i64 @SUBREG_REG(i64 %179)
  %181 = icmp eq i64 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i64, i64* %5, align 8
  store i64 %183, i64* %4, align 8
  br label %285

184:                                              ; preds = %172
  %185 = load i64, i64* %5, align 8
  %186 = call i32 @GET_MODE(i64 %185)
  %187 = load i64, i64* %11, align 8
  %188 = load i64, i64* %5, align 8
  %189 = call i64 @SUBREG_REG(i64 %188)
  %190 = call i32 @GET_MODE(i64 %189)
  %191 = load i64, i64* %5, align 8
  %192 = call i32 @SUBREG_BYTE(i64 %191)
  %193 = call i64 @simplify_gen_subreg(i32 %186, i64 %187, i32 %190, i32 %192)
  store i64 %193, i64* %11, align 8
  %194 = load i64, i64* %11, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load i64, i64* %11, align 8
  br label %200

198:                                              ; preds = %184
  %199 = load i64, i64* %5, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i64 [ %197, %196 ], [ %199, %198 ]
  store i64 %201, i64* %4, align 8
  br label %285

202:                                              ; preds = %168
  br label %283

203:                                              ; preds = %23
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @MEM, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %203
  %208 = load i64, i64* %5, align 8
  %209 = call i64 @XEXP(i64 %208, i32 0)
  %210 = load i64, i64* %6, align 8
  %211 = load i64, i64* %7, align 8
  %212 = call i64 @simplify_replace_rtx(i64 %209, i64 %210, i64 %211)
  store i64 %212, i64* %11, align 8
  %213 = load i64, i64* %11, align 8
  %214 = load i64, i64* %5, align 8
  %215 = call i64 @XEXP(i64 %214, i32 0)
  %216 = icmp eq i64 %213, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %207
  %218 = load i64, i64* %5, align 8
  store i64 %218, i64* %4, align 8
  br label %285

219:                                              ; preds = %207
  %220 = load i64, i64* %5, align 8
  %221 = load i64, i64* %11, align 8
  %222 = call i64 @replace_equiv_address_nv(i64 %220, i64 %221)
  store i64 %222, i64* %4, align 8
  br label %285

223:                                              ; preds = %203
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @LO_SUM, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %267

227:                                              ; preds = %223
  %228 = load i64, i64* %5, align 8
  %229 = call i64 @XEXP(i64 %228, i32 0)
  %230 = load i64, i64* %6, align 8
  %231 = load i64, i64* %7, align 8
  %232 = call i64 @simplify_replace_rtx(i64 %229, i64 %230, i64 %231)
  store i64 %232, i64* %11, align 8
  %233 = load i64, i64* %5, align 8
  %234 = call i64 @XEXP(i64 %233, i32 1)
  %235 = load i64, i64* %6, align 8
  %236 = load i64, i64* %7, align 8
  %237 = call i64 @simplify_replace_rtx(i64 %234, i64 %235, i64 %236)
  store i64 %237, i64* %12, align 8
  %238 = load i64, i64* %11, align 8
  %239 = call i32 @GET_CODE(i64 %238)
  %240 = load i32, i32* @HIGH, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %227
  %243 = load i64, i64* %11, align 8
  %244 = call i64 @XEXP(i64 %243, i32 0)
  %245 = load i64, i64* %12, align 8
  %246 = call i32 @rtx_equal_p(i64 %244, i64 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = load i64, i64* %12, align 8
  store i64 %249, i64* %4, align 8
  br label %285

250:                                              ; preds = %242, %227
  %251 = load i64, i64* %11, align 8
  %252 = load i64, i64* %5, align 8
  %253 = call i64 @XEXP(i64 %252, i32 0)
  %254 = icmp eq i64 %251, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i64, i64* %12, align 8
  %257 = load i64, i64* %5, align 8
  %258 = call i64 @XEXP(i64 %257, i32 1)
  %259 = icmp eq i64 %256, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i64, i64* %5, align 8
  store i64 %261, i64* %4, align 8
  br label %285

262:                                              ; preds = %255, %250
  %263 = load i32, i32* %9, align 4
  %264 = load i64, i64* %11, align 8
  %265 = load i64, i64* %12, align 8
  %266 = call i64 @gen_rtx_LO_SUM(i32 %263, i64 %264, i64 %265)
  store i64 %266, i64* %4, align 8
  br label %285

267:                                              ; preds = %223
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @REG, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %267
  %272 = load i64, i64* %5, align 8
  %273 = load i64, i64* %6, align 8
  %274 = call i32 @rtx_equal_p(i64 %272, i64 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i64, i64* %7, align 8
  store i64 %277, i64* %4, align 8
  br label %285

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %278, %267
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %283

282:                                              ; preds = %23
  br label %283

283:                                              ; preds = %282, %281, %202
  %284 = load i64, i64* %5, align 8
  store i64 %284, i64* %4, align 8
  br label %285

285:                                              ; preds = %283, %276, %262, %260, %248, %219, %217, %200, %182, %160, %151, %111, %109, %69, %67, %41, %39, %21
  %286 = load i64, i64* %4, align 8
  ret i64 %286
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @simplify_gen_unary(i32, i32, i64, i32) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @simplify_gen_relational(i32, i32, i32, i64, i64) #1

declare dso_local i64 @simplify_gen_ternary(i32, i32, i32, i64, i64, i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @simplify_gen_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @replace_equiv_address_nv(i64, i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @gen_rtx_LO_SUM(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
