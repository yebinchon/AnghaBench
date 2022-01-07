; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_known_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_known_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNEQ = common dso_local global i32 0, align 4
@ABS = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@NEG = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@SMAX = common dso_local global i32 0, align 4
@SMIN = common dso_local global i32 0, align 4
@UMIN = common dso_local global i32 0, align 4
@UMAX = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i64)* @known_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @known_cond(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @GET_CODE(i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @side_effects_p(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %5, align 8
  br label %389

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 136
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @rtx_equal_p(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @GET_MODE(i64 %38)
  %40 = call i32 @FLOAT_MODE_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @GET_MODE(i64 %43)
  %45 = call i32 @FLOAT_MODE_P(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %5, align 8
  br label %389

49:                                               ; preds = %42, %37, %32, %29
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @UNEQ, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @rtx_equal_p(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* %9, align 8
  store i64 %59, i64* %5, align 8
  br label %389

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ABS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @XEXP(i64 %65, i32 0)
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @rtx_equal_p(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @const0_rtx, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %90 [
    i32 135, label %76
    i32 133, label %76
    i32 136, label %76
    i32 129, label %79
    i32 131, label %79
  ]

76:                                               ; preds = %74, %74, %74
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @XEXP(i64 %77, i32 0)
  store i64 %78, i64* %5, align 8
  br label %389

79:                                               ; preds = %74, %74
  %80 = load i32, i32* @NEG, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @XEXP(i64 %81, i32 0)
  %83 = call i32 @GET_MODE(i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @XEXP(i64 %84, i32 0)
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @XEXP(i64 %86, i32 0)
  %88 = call i32 @GET_MODE(i64 %87)
  %89 = call i64 @simplify_gen_unary(i32 %80, i32 %83, i64 %85, i32 %88)
  store i64 %89, i64* %5, align 8
  br label %389

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90
  br label %319

92:                                               ; preds = %70, %64, %60
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @COMPARISON_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @COMMUTATIVE_ARITH_P(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %241

100:                                              ; preds = %96, %92
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @XEXP(i64 %101, i32 0)
  %103 = load i64, i64* %9, align 8
  %104 = call i64 @rtx_equal_p(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @swap_condition(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @XEXP(i64 %113, i32 0)
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @rtx_equal_p(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %240

118:                                              ; preds = %112
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @XEXP(i64 %119, i32 1)
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @rtx_equal_p(i64 %120, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %240

124:                                              ; preds = %118
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @COMPARISON_P(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @comparison_dominates_p(i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i64, i64* @const_true_rtx, align 8
  store i64 %134, i64* %5, align 8
  br label %389

135:                                              ; preds = %128
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @reversed_comparison_code(i64 %136, i32* null)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @UNKNOWN, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @comparison_dominates_p(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64, i64* @const0_rtx, align 8
  store i64 %147, i64* %5, align 8
  br label %389

148:                                              ; preds = %141, %135
  %149 = load i64, i64* %6, align 8
  store i64 %149, i64* %5, align 8
  br label %389

150:                                              ; preds = %124
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @SMAX, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %166, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @SMIN, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @UMIN, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @UMAX, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %238

166:                                              ; preds = %162, %158, %154, %150
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @UMIN, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @UMAX, align 4
  %173 = icmp eq i32 %171, %172
  br label %174

174:                                              ; preds = %170, %166
  %175 = phi i1 [ true, %166 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @SMAX, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @UMAX, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180, %174
  %185 = load i32, i32* %7, align 4
  %186 = icmp eq i32 %185, 136
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @NE, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @reverse_condition(i32 %192)
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %191, %187, %184, %180
  %195 = load i32, i32* %7, align 4
  switch i32 %195, label %236 [
    i32 135, label %196
    i32 133, label %196
    i32 131, label %206
    i32 129, label %206
    i32 134, label %216
    i32 132, label %216
    i32 130, label %226
    i32 128, label %226
  ]

196:                                              ; preds = %194, %194
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i64, i64* %6, align 8
  br label %204

201:                                              ; preds = %196
  %202 = load i64, i64* %6, align 8
  %203 = call i64 @XEXP(i64 %202, i32 1)
  br label %204

204:                                              ; preds = %201, %199
  %205 = phi i64 [ %200, %199 ], [ %203, %201 ]
  store i64 %205, i64* %5, align 8
  br label %389

206:                                              ; preds = %194, %194
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i64, i64* %6, align 8
  br label %214

211:                                              ; preds = %206
  %212 = load i64, i64* %6, align 8
  %213 = call i64 @XEXP(i64 %212, i32 0)
  br label %214

214:                                              ; preds = %211, %209
  %215 = phi i64 [ %210, %209 ], [ %213, %211 ]
  store i64 %215, i64* %5, align 8
  br label %389

216:                                              ; preds = %194, %194
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %6, align 8
  %221 = call i64 @XEXP(i64 %220, i32 1)
  br label %224

222:                                              ; preds = %216
  %223 = load i64, i64* %6, align 8
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi i64 [ %221, %219 ], [ %223, %222 ]
  store i64 %225, i64* %5, align 8
  br label %389

226:                                              ; preds = %194, %194
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, i64* %6, align 8
  %231 = call i64 @XEXP(i64 %230, i32 0)
  br label %234

232:                                              ; preds = %226
  %233 = load i64, i64* %6, align 8
  br label %234

234:                                              ; preds = %232, %229
  %235 = phi i64 [ %231, %229 ], [ %233, %232 ]
  store i64 %235, i64* %5, align 8
  br label %389

236:                                              ; preds = %194
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237, %162
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %118, %112
  br label %318

241:                                              ; preds = %96
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* @SUBREG, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %279

245:                                              ; preds = %241
  %246 = load i64, i64* %6, align 8
  %247 = call i64 @SUBREG_REG(i64 %246)
  %248 = call i32 @GET_MODE(i64 %247)
  store i32 %248, i32* %16, align 4
  %249 = load i64, i64* %6, align 8
  %250 = call i64 @SUBREG_REG(i64 %249)
  %251 = load i32, i32* %7, align 4
  %252 = load i64, i64* %8, align 8
  %253 = load i64, i64* %9, align 8
  %254 = call i64 @known_cond(i64 %250, i32 %251, i64 %252, i64 %253)
  store i64 %254, i64* %18, align 8
  %255 = load i64, i64* %6, align 8
  %256 = call i64 @SUBREG_REG(i64 %255)
  %257 = load i64, i64* %18, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %245
  %260 = load i64, i64* %6, align 8
  %261 = call i32 @GET_MODE(i64 %260)
  %262 = load i64, i64* %18, align 8
  %263 = load i32, i32* %16, align 4
  %264 = load i64, i64* %6, align 8
  %265 = call i32 @SUBREG_BYTE(i64 %264)
  %266 = call i64 @simplify_subreg(i32 %261, i64 %262, i32 %263, i32 %265)
  store i64 %266, i64* %17, align 8
  %267 = load i64, i64* %17, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %259
  %270 = load i64, i64* %17, align 8
  store i64 %270, i64* %5, align 8
  br label %389

271:                                              ; preds = %259
  %272 = load i64, i64* %6, align 8
  %273 = call i64 @SUBREG_REG(i64 %272)
  %274 = load i64, i64* %18, align 8
  %275 = call i32 @SUBST(i64 %273, i64 %274)
  br label %276

276:                                              ; preds = %271
  br label %277

277:                                              ; preds = %276, %245
  %278 = load i64, i64* %6, align 8
  store i64 %278, i64* %5, align 8
  br label %389

279:                                              ; preds = %241
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* @ZERO_EXTEND, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %316

283:                                              ; preds = %279
  %284 = load i64, i64* %6, align 8
  %285 = call i64 @XEXP(i64 %284, i32 0)
  %286 = call i32 @GET_MODE(i64 %285)
  store i32 %286, i32* %19, align 4
  %287 = load i64, i64* %6, align 8
  %288 = call i64 @XEXP(i64 %287, i32 0)
  %289 = load i32, i32* %7, align 4
  %290 = load i64, i64* %8, align 8
  %291 = load i64, i64* %9, align 8
  %292 = call i64 @known_cond(i64 %288, i32 %289, i64 %290, i64 %291)
  store i64 %292, i64* %21, align 8
  %293 = load i64, i64* %6, align 8
  %294 = call i64 @XEXP(i64 %293, i32 0)
  %295 = load i64, i64* %21, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %314

297:                                              ; preds = %283
  %298 = load i32, i32* @ZERO_EXTEND, align 4
  %299 = load i64, i64* %6, align 8
  %300 = call i32 @GET_MODE(i64 %299)
  %301 = load i64, i64* %21, align 8
  %302 = load i32, i32* %19, align 4
  %303 = call i64 @simplify_unary_operation(i32 %298, i32 %300, i64 %301, i32 %302)
  store i64 %303, i64* %20, align 8
  %304 = load i64, i64* %20, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = load i64, i64* %20, align 8
  store i64 %307, i64* %5, align 8
  br label %389

308:                                              ; preds = %297
  %309 = load i64, i64* %6, align 8
  %310 = call i64 @XEXP(i64 %309, i32 0)
  %311 = load i64, i64* %21, align 8
  %312 = call i32 @SUBST(i64 %310, i64 %311)
  br label %313

313:                                              ; preds = %308
  br label %314

314:                                              ; preds = %313, %283
  %315 = load i64, i64* %6, align 8
  store i64 %315, i64* %5, align 8
  br label %389

316:                                              ; preds = %279
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317, %240
  br label %319

319:                                              ; preds = %318, %91
  %320 = load i32, i32* %10, align 4
  %321 = call i8* @GET_RTX_FORMAT(i32 %320)
  store i8* %321, i8** %12, align 8
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @GET_RTX_LENGTH(i32 %322)
  %324 = sub nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  br label %325

325:                                              ; preds = %384, %319
  %326 = load i32, i32* %13, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %387

328:                                              ; preds = %325
  %329 = load i8*, i8** %12, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 101
  br i1 %335, label %336, label %348

336:                                              ; preds = %328
  %337 = load i64, i64* %6, align 8
  %338 = load i32, i32* %13, align 4
  %339 = call i64 @XEXP(i64 %337, i32 %338)
  %340 = load i64, i64* %6, align 8
  %341 = load i32, i32* %13, align 4
  %342 = call i64 @XEXP(i64 %340, i32 %341)
  %343 = load i32, i32* %7, align 4
  %344 = load i64, i64* %8, align 8
  %345 = load i64, i64* %9, align 8
  %346 = call i64 @known_cond(i64 %342, i32 %343, i64 %344, i64 %345)
  %347 = call i32 @SUBST(i64 %339, i64 %346)
  br label %383

348:                                              ; preds = %328
  %349 = load i8*, i8** %12, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp eq i32 %354, 69
  br i1 %355, label %356, label %382

356:                                              ; preds = %348
  %357 = load i64, i64* %6, align 8
  %358 = load i32, i32* %13, align 4
  %359 = call i32 @XVECLEN(i64 %357, i32 %358)
  %360 = sub nsw i32 %359, 1
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %378, %356
  %362 = load i32, i32* %14, align 4
  %363 = icmp sge i32 %362, 0
  br i1 %363, label %364, label %381

364:                                              ; preds = %361
  %365 = load i64, i64* %6, align 8
  %366 = load i32, i32* %13, align 4
  %367 = load i32, i32* %14, align 4
  %368 = call i64 @XVECEXP(i64 %365, i32 %366, i32 %367)
  %369 = load i64, i64* %6, align 8
  %370 = load i32, i32* %13, align 4
  %371 = load i32, i32* %14, align 4
  %372 = call i64 @XVECEXP(i64 %369, i32 %370, i32 %371)
  %373 = load i32, i32* %7, align 4
  %374 = load i64, i64* %8, align 8
  %375 = load i64, i64* %9, align 8
  %376 = call i64 @known_cond(i64 %372, i32 %373, i64 %374, i64 %375)
  %377 = call i32 @SUBST(i64 %368, i64 %376)
  br label %378

378:                                              ; preds = %364
  %379 = load i32, i32* %14, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %14, align 4
  br label %361

381:                                              ; preds = %361
  br label %382

382:                                              ; preds = %381, %348
  br label %383

383:                                              ; preds = %382, %336
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %13, align 4
  br label %325

387:                                              ; preds = %325
  %388 = load i64, i64* %6, align 8
  store i64 %388, i64* %5, align 8
  br label %389

389:                                              ; preds = %387, %314, %306, %277, %269, %234, %224, %214, %204, %148, %146, %133, %79, %76, %58, %47, %27
  %390 = load i64, i64* %5, align 8
  ret i64 %390
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @side_effects_p(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @simplify_gen_unary(i32, i32, i64, i32) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i64 @COMMUTATIVE_ARITH_P(i64) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i64 @comparison_dominates_p(i32, i32) #1

declare dso_local i32 @reversed_comparison_code(i64, i32*) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @simplify_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i32 @SUBST(i64, i64) #1

declare dso_local i64 @simplify_unary_operation(i32, i32, i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
