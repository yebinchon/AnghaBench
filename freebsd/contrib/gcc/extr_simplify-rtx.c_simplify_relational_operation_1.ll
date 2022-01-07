; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_relational_operation_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_relational_operation_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@NE = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@MODE_INT = common dso_local global i64 0, align 8
@BImode = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i64, i64)* @simplify_relational_operation_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_relational_operation_1(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @GET_CODE(i64 %19)
  %21 = load i64, i64* @CONST_INT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @INTVAL(i64 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %77

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @COMPARISON_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @GET_MODE(i64 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @simplify_rtx(i64 %41)
  store i64 %42, i64* %6, align 8
  br label %322

43:                                               ; preds = %35
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @GET_CODE(i64 %44)
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @VOIDmode, align 4
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @XEXP(i64 %49, i32 0)
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @XEXP(i64 %51, i32 1)
  %53 = call i64 @simplify_gen_relational(i32 %46, i32 %47, i32 %48, i64 %50, i64 %52)
  store i64 %53, i64* %6, align 8
  br label %322

54:                                               ; preds = %31
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @EQ, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @NULL_RTX, align 8
  %61 = call i32 @reversed_comparison_code(i64 %59, i64 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @UNKNOWN, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @VOIDmode, align 4
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @XEXP(i64 %69, i32 0)
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @XEXP(i64 %71, i32 1)
  %73 = call i64 @simplify_gen_relational(i32 %66, i32 %67, i32 %68, i64 %70, i64 %72)
  store i64 %73, i64* %6, align 8
  br label %322

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %27, %23
  br label %78

78:                                               ; preds = %77, %5
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EQ, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @NE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %134

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @PLUS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @MINUS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %134

94:                                               ; preds = %90, %86
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @CONSTANT_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @XEXP(i64 %99, i32 1)
  %101 = call i64 @CONSTANT_P(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @INTEGRAL_MODE_P(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %134

110:                                              ; preds = %107, %103
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @XEXP(i64 %111, i32 0)
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @XEXP(i64 %113, i32 1)
  store i64 %114, i64* %15, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @PLUS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @MINUS, align 4
  br label %122

120:                                              ; preds = %110
  %121 = load i32, i32* @PLUS, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32, i32* %9, align 4
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %15, align 8
  %127 = call i64 @simplify_gen_binary(i32 %123, i32 %124, i64 %125, i64 %126)
  store i64 %127, i64* %15, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = call i64 @simplify_gen_relational(i32 %128, i32 %129, i32 %130, i64 %131, i64 %132)
  store i64 %133, i64* %6, align 8
  br label %322

134:                                              ; preds = %107, %98, %94, %90, %82
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @NE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %186

138:                                              ; preds = %134
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* @const0_rtx, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %186

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @GET_MODE_CLASS(i32 %143)
  %145 = load i64, i64* @MODE_INT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %186

147:                                              ; preds = %142
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @VOIDmode, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %186

151:                                              ; preds = %147
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @BImode, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %186

155:                                              ; preds = %151
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @BImode, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %155
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @nonzero_bits(i64 %160, i32 %161)
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %186

164:                                              ; preds = %159
  %165 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = call i64 @GET_MODE_SIZE(i32 %168)
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @GET_MODE_SIZE(i32 %170)
  %172 = icmp sgt i64 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load i32, i32* @ZERO_EXTEND, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i64, i64* %10, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i64 @simplify_gen_unary(i32 %174, i32 %175, i64 %176, i32 %177)
  br label %184

179:                                              ; preds = %167
  %180 = load i32, i32* %8, align 4
  %181 = load i64, i64* %10, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @lowpart_subreg(i32 %180, i64 %181, i32 %182)
  br label %184

184:                                              ; preds = %179, %173
  %185 = phi i64 [ %178, %173 ], [ %183, %179 ]
  store i64 %185, i64* %6, align 8
  br label %322

186:                                              ; preds = %164, %159, %155, %151, %147, %142, %138, %134
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @EQ, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @NE, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %190, %186
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* @const0_rtx, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @XOR, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i64, i64* %10, align 8
  %207 = call i64 @XEXP(i64 %206, i32 0)
  %208 = load i64, i64* %10, align 8
  %209 = call i64 @XEXP(i64 %208, i32 1)
  %210 = call i64 @simplify_gen_relational(i32 %203, i32 %204, i32 %205, i64 %207, i64 %209)
  store i64 %210, i64* %6, align 8
  br label %322

211:                                              ; preds = %198, %194, %190
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @EQ, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @NE, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %242

219:                                              ; preds = %215, %211
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @XOR, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %242

223:                                              ; preds = %219
  %224 = load i64, i64* %10, align 8
  %225 = call i64 @XEXP(i64 %224, i32 0)
  %226 = load i64, i64* %11, align 8
  %227 = call i64 @rtx_equal_p(i64 %225, i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %223
  %230 = load i64, i64* %10, align 8
  %231 = call i64 @XEXP(i64 %230, i32 0)
  %232 = call i32 @side_effects_p(i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i64, i64* %10, align 8
  %239 = call i64 @XEXP(i64 %238, i32 1)
  %240 = load i64, i64* @const0_rtx, align 8
  %241 = call i64 @simplify_gen_relational(i32 %235, i32 %236, i32 %237, i64 %239, i64 %240)
  store i64 %241, i64* %6, align 8
  br label %322

242:                                              ; preds = %229, %223, %219, %215
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @EQ, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @NE, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %273

250:                                              ; preds = %246, %242
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @XOR, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %250
  %255 = load i64, i64* %10, align 8
  %256 = call i64 @XEXP(i64 %255, i32 1)
  %257 = load i64, i64* %11, align 8
  %258 = call i64 @rtx_equal_p(i64 %256, i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %254
  %261 = load i64, i64* %10, align 8
  %262 = call i64 @XEXP(i64 %261, i32 1)
  %263 = call i32 @side_effects_p(i64 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %260
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i64, i64* %10, align 8
  %270 = call i64 @XEXP(i64 %269, i32 0)
  %271 = load i64, i64* @const0_rtx, align 8
  %272 = call i64 @simplify_gen_relational(i32 %266, i32 %267, i32 %268, i64 %270, i64 %271)
  store i64 %272, i64* %6, align 8
  br label %322

273:                                              ; preds = %260, %254, %250, %246
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @EQ, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* @NE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %320

281:                                              ; preds = %277, %273
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* @XOR, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %320

285:                                              ; preds = %281
  %286 = load i64, i64* %11, align 8
  %287 = call i64 @GET_CODE(i64 %286)
  %288 = load i64, i64* @CONST_INT, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load i64, i64* %11, align 8
  %292 = call i64 @GET_CODE(i64 %291)
  %293 = load i64, i64* @CONST_DOUBLE, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %320

295:                                              ; preds = %290, %285
  %296 = load i64, i64* %10, align 8
  %297 = call i64 @XEXP(i64 %296, i32 1)
  %298 = call i64 @GET_CODE(i64 %297)
  %299 = load i64, i64* @CONST_INT, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = load i64, i64* %10, align 8
  %303 = call i64 @XEXP(i64 %302, i32 1)
  %304 = call i64 @GET_CODE(i64 %303)
  %305 = load i64, i64* @CONST_DOUBLE, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %320

307:                                              ; preds = %301, %295
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load i64, i64* %10, align 8
  %312 = call i64 @XEXP(i64 %311, i32 0)
  %313 = load i32, i32* @XOR, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load i64, i64* %10, align 8
  %316 = call i64 @XEXP(i64 %315, i32 1)
  %317 = load i64, i64* %11, align 8
  %318 = call i64 @simplify_gen_binary(i32 %313, i32 %314, i64 %316, i64 %317)
  %319 = call i64 @simplify_gen_relational(i32 %308, i32 %309, i32 %310, i64 %312, i64 %318)
  store i64 %319, i64* %6, align 8
  br label %322

320:                                              ; preds = %301, %290, %281, %277
  %321 = load i64, i64* @NULL_RTX, align 8
  store i64 %321, i64* %6, align 8
  br label %322

322:                                              ; preds = %320, %307, %265, %234, %202, %184, %122, %65, %43, %40
  %323 = load i64, i64* %6, align 8
  ret i64 %323
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @simplify_rtx(i64) #1

declare dso_local i64 @simplify_gen_relational(i32, i32, i32, i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @reversed_comparison_code(i64, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @INTEGRAL_MODE_P(i32) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @nonzero_bits(i64, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @simplify_gen_unary(i32, i32, i64, i32) #1

declare dso_local i64 @lowpart_subreg(i32, i64, i32) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @side_effects_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
