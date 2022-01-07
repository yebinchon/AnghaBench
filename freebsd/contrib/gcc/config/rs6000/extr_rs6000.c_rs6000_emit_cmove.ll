; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_cmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_cmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_compare_op0 = common dso_local global i64 0, align 8
@rs6000_compare_op1 = common dso_local global i64 0, align 8
@TARGET_ISEL = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@rs6000_compare_fp_p = common dso_local global i32 0, align 4
@TARGET_E500 = common dso_local global i64 0, align 8
@TARGET_HARD_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPRS = common dso_local global i32 0, align 4
@flag_trapping_math = common dso_local global i64 0, align 8
@UNLT = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@CONST_DOUBLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_emit_cmove(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @GET_CODE(i64 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* @rs6000_compare_op0, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* @rs6000_compare_op1, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @GET_MODE(i64 %23)
  store i32 %24, i32* %14, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @GET_MODE(i64 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @GET_MODE(i64 %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i64, i64* @TARGET_ISEL, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* @VOIDmode, align 4
  %37 = call i32 @short_cint_operand(i64 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %31
  store i32 0, i32* %5, align 4
  br label %324

40:                                               ; preds = %34, %4
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @GET_MODE(i64 %41)
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %324

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @GET_MODE(i64 %47)
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %324

52:                                               ; preds = %46
  %53 = load i32, i32* @rs6000_compare_fp_p, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @TARGET_ISEL, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @rs6000_emit_int_cmove(i64 %59, i64 %60, i64 %61, i64 %62)
  store i32 %63, i32* %5, align 4
  br label %324

64:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %324

65:                                               ; preds = %52
  %66 = load i64, i64* @TARGET_E500, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i64, i64* @TARGET_HARD_FLOAT, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32, i32* @TARGET_FPRS, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @SCALAR_FLOAT_MODE_P(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %324

79:                                               ; preds = %74, %71, %68, %65
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @CONST0_RTX(i32 %82)
  %84 = icmp eq i64 %81, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @SCALAR_FLOAT_MODE_P(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load i64, i64* @flag_trapping_math, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %324

96:                                               ; preds = %92, %89, %80
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @UNLT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %124, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @UNGT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %124, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @UNORDERED, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %124, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @NE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @LTGT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @LT, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @UNLE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116, %112, %108, %104, %100, %96
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @reverse_condition_maybe_unordered(i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i64, i64* %8, align 8
  store i64 %127, i64* %16, align 8
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %16, align 8
  store i64 %129, i64* %9, align 8
  br label %130

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %131, 129
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @HONOR_NANS(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %324

138:                                              ; preds = %133, %130
  %139 = load i64, i64* %12, align 8
  %140 = call i64 @GET_CODE(i64 %139)
  %141 = load i64, i64* @CONST_DOUBLE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* %13, align 4
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %14, align 4
  %149 = call i64 @HONOR_INFINITIES(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 132
  br i1 %153, label %154, label %186

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 128
  br i1 %156, label %157, label %186

157:                                              ; preds = %154
  %158 = load i64, i64* %12, align 8
  %159 = call i64 @GET_CODE(i64 %158)
  %160 = load i64, i64* @CONST_DOUBLE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = call i64 @real_isinf(i32* %13)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %162, %157
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @rtx_equal_p(i64 %166, i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @rtx_equal_p(i64 %171, i64 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170, %165
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @rtx_equal_p(i64 %176, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %8, align 8
  %183 = call i32 @rtx_equal_p(i64 %181, i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180, %170
  store i32 0, i32* %5, align 4
  br label %324

186:                                              ; preds = %180, %175, %162, %154, %151, %147
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %14, align 4
  %191 = call i64 @gen_reg_rtx(i32 %190)
  store i64 %191, i64* %16, align 8
  %192 = load i32, i32* @VOIDmode, align 4
  %193 = load i64, i64* %16, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %12, align 8
  %197 = call i64 @gen_rtx_MINUS(i32 %194, i64 %195, i64 %196)
  %198 = call i32 @gen_rtx_SET(i32 %192, i64 %193, i64 %197)
  %199 = call i32 @emit_insn(i32 %198)
  %200 = load i64, i64* %16, align 8
  store i64 %200, i64* %11, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i64 @CONST0_RTX(i32 %201)
  store i64 %202, i64* %12, align 8
  br label %203

203:                                              ; preds = %189, %186
  %204 = load i32, i32* %14, align 4
  %205 = call i64 @HONOR_NANS(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %10, align 4
  switch i32 %208, label %215 [
    i32 132, label %209
    i32 128, label %213
    i32 129, label %214
  ]

209:                                              ; preds = %207
  store i32 131, i32* %10, align 4
  %210 = load i64, i64* %8, align 8
  store i64 %210, i64* %16, align 8
  %211 = load i64, i64* %9, align 8
  store i64 %211, i64* %8, align 8
  %212 = load i64, i64* %16, align 8
  store i64 %212, i64* %9, align 8
  br label %216

213:                                              ; preds = %207
  store i32 133, i32* %10, align 4
  br label %216

214:                                              ; preds = %207
  store i32 134, i32* %10, align 4
  br label %216

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215, %214, %213, %209
  br label %217

217:                                              ; preds = %216, %203
  %218 = load i32, i32* %10, align 4
  switch i32 %218, label %309 [
    i32 133, label %219
    i32 131, label %220
    i32 130, label %231
    i32 134, label %242
    i32 128, label %255
    i32 132, label %282
  ]

219:                                              ; preds = %217
  br label %311

220:                                              ; preds = %217
  %221 = load i32, i32* %14, align 4
  %222 = call i64 @gen_reg_rtx(i32 %221)
  store i64 %222, i64* %16, align 8
  %223 = load i32, i32* @VOIDmode, align 4
  %224 = load i64, i64* %16, align 8
  %225 = load i32, i32* %14, align 4
  %226 = load i64, i64* %11, align 8
  %227 = call i64 @gen_rtx_NEG(i32 %225, i64 %226)
  %228 = call i32 @gen_rtx_SET(i32 %223, i64 %224, i64 %227)
  %229 = call i32 @emit_insn(i32 %228)
  %230 = load i64, i64* %16, align 8
  store i64 %230, i64* %11, align 8
  br label %311

231:                                              ; preds = %217
  %232 = load i32, i32* %14, align 4
  %233 = call i64 @gen_reg_rtx(i32 %232)
  store i64 %233, i64* %16, align 8
  %234 = load i32, i32* @VOIDmode, align 4
  %235 = load i64, i64* %16, align 8
  %236 = load i32, i32* %14, align 4
  %237 = load i64, i64* %11, align 8
  %238 = call i64 @gen_rtx_ABS(i32 %236, i64 %237)
  %239 = call i32 @gen_rtx_SET(i32 %234, i64 %235, i64 %238)
  %240 = call i32 @emit_insn(i32 %239)
  %241 = load i64, i64* %16, align 8
  store i64 %241, i64* %11, align 8
  br label %311

242:                                              ; preds = %217
  %243 = load i32, i32* %14, align 4
  %244 = call i64 @gen_reg_rtx(i32 %243)
  store i64 %244, i64* %16, align 8
  %245 = load i32, i32* @VOIDmode, align 4
  %246 = load i64, i64* %16, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i64, i64* %11, align 8
  %250 = call i64 @gen_rtx_ABS(i32 %248, i64 %249)
  %251 = call i64 @gen_rtx_NEG(i32 %247, i64 %250)
  %252 = call i32 @gen_rtx_SET(i32 %245, i64 %246, i64 %251)
  %253 = call i32 @emit_insn(i32 %252)
  %254 = load i64, i64* %16, align 8
  store i64 %254, i64* %11, align 8
  br label %311

255:                                              ; preds = %217
  %256 = load i32, i32* %15, align 4
  %257 = call i64 @gen_reg_rtx(i32 %256)
  store i64 %257, i64* %16, align 8
  %258 = load i32, i32* @VOIDmode, align 4
  %259 = load i64, i64* %16, align 8
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* @VOIDmode, align 4
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* %12, align 8
  %264 = call i32 @gen_rtx_GE(i32 %261, i64 %262, i64 %263)
  %265 = load i64, i64* %8, align 8
  %266 = load i64, i64* %9, align 8
  %267 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %260, i32 %264, i64 %265, i64 %266)
  %268 = call i32 @gen_rtx_SET(i32 %258, i64 %259, i64 %267)
  %269 = call i32 @emit_insn(i32 %268)
  %270 = load i64, i64* %8, align 8
  store i64 %270, i64* %9, align 8
  %271 = load i64, i64* %16, align 8
  store i64 %271, i64* %8, align 8
  %272 = load i32, i32* %14, align 4
  %273 = call i64 @gen_reg_rtx(i32 %272)
  store i64 %273, i64* %16, align 8
  %274 = load i32, i32* @VOIDmode, align 4
  %275 = load i64, i64* %16, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i64, i64* %11, align 8
  %278 = call i64 @gen_rtx_NEG(i32 %276, i64 %277)
  %279 = call i32 @gen_rtx_SET(i32 %274, i64 %275, i64 %278)
  %280 = call i32 @emit_insn(i32 %279)
  %281 = load i64, i64* %16, align 8
  store i64 %281, i64* %11, align 8
  br label %311

282:                                              ; preds = %217
  %283 = load i32, i32* %15, align 4
  %284 = call i64 @gen_reg_rtx(i32 %283)
  store i64 %284, i64* %16, align 8
  %285 = load i32, i32* @VOIDmode, align 4
  %286 = load i64, i64* %16, align 8
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* @VOIDmode, align 4
  %289 = load i64, i64* %11, align 8
  %290 = load i64, i64* %12, align 8
  %291 = call i32 @gen_rtx_GE(i32 %288, i64 %289, i64 %290)
  %292 = load i64, i64* %8, align 8
  %293 = load i64, i64* %9, align 8
  %294 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %287, i32 %291, i64 %292, i64 %293)
  %295 = call i32 @gen_rtx_SET(i32 %285, i64 %286, i64 %294)
  %296 = call i32 @emit_insn(i32 %295)
  %297 = load i64, i64* %9, align 8
  store i64 %297, i64* %8, align 8
  %298 = load i64, i64* %16, align 8
  store i64 %298, i64* %9, align 8
  %299 = load i32, i32* %14, align 4
  %300 = call i64 @gen_reg_rtx(i32 %299)
  store i64 %300, i64* %16, align 8
  %301 = load i32, i32* @VOIDmode, align 4
  %302 = load i64, i64* %16, align 8
  %303 = load i32, i32* %14, align 4
  %304 = load i64, i64* %11, align 8
  %305 = call i64 @gen_rtx_NEG(i32 %303, i64 %304)
  %306 = call i32 @gen_rtx_SET(i32 %301, i64 %302, i64 %305)
  %307 = call i32 @emit_insn(i32 %306)
  %308 = load i64, i64* %16, align 8
  store i64 %308, i64* %11, align 8
  br label %311

309:                                              ; preds = %217
  %310 = call i32 (...) @gcc_unreachable()
  br label %311

311:                                              ; preds = %309, %282, %255, %242, %231, %220, %219
  %312 = load i32, i32* @VOIDmode, align 4
  %313 = load i64, i64* %6, align 8
  %314 = load i32, i32* %15, align 4
  %315 = load i32, i32* @VOIDmode, align 4
  %316 = load i64, i64* %11, align 8
  %317 = load i64, i64* %12, align 8
  %318 = call i32 @gen_rtx_GE(i32 %315, i64 %316, i64 %317)
  %319 = load i64, i64* %8, align 8
  %320 = load i64, i64* %9, align 8
  %321 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %314, i32 %318, i64 %319, i64 %320)
  %322 = call i32 @gen_rtx_SET(i32 %312, i64 %313, i64 %321)
  %323 = call i32 @emit_insn(i32 %322)
  store i32 1, i32* %5, align 4
  br label %324

324:                                              ; preds = %311, %185, %137, %95, %78, %64, %58, %51, %45, %39
  %325 = load i32, i32* %5, align 4
  ret i32 %325
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @short_cint_operand(i64, i32) #1

declare dso_local i32 @rs6000_emit_int_cmove(i64, i64, i64, i64) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i64 @HONOR_NANS(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i64) #1

declare dso_local i64 @HONOR_INFINITIES(i32) #1

declare dso_local i64 @real_isinf(i32*) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_MINUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_NEG(i32, i64) #1

declare dso_local i64 @gen_rtx_ABS(i32, i64) #1

declare dso_local i64 @gen_rtx_IF_THEN_ELSE(i32, i32, i64, i64) #1

declare dso_local i32 @gen_rtx_GE(i32, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
