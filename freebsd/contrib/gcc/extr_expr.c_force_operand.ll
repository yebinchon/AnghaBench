; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_force_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_force_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@PLUS = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@pic_offset_table_rtx = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@FIRST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@LAST_VIRTUAL_REGISTER = common dso_local global i64 0, align 8
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@RDIV_EXPR = common dso_local global i32 0, align 4
@TRUNC_DIV_EXPR = common dso_local global i32 0, align 4
@TRUNC_MOD_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @force_operand(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @get_subtarget(i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @GET_CODE(i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SUBREG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @SUBREG_REG(i64 %19)
  %21 = call i64 @REG_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @SUBREG_REG(i64 %24)
  %26 = call i64 @MEM_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @GET_MODE(i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @SUBREG_REG(i64 %31)
  %33 = call i32 @GET_MODE(i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @SUBREG_REG(i64 %34)
  %36 = load i64, i64* @NULL_RTX, align 8
  %37 = call i64 @force_operand(i64 %35, i64 %36)
  %38 = call i32 @force_reg(i32 %33, i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @SUBREG_REG(i64 %39)
  %41 = call i32 @GET_MODE(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @SUBREG_BYTE(i64 %42)
  %44 = call i64 @simplify_gen_subreg(i32 %30, i32 %38, i32 %41, i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @GET_CODE(i64 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %28, %23, %18, %2
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @PLUS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MINUS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %93

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @XEXP(i64 %56, i32 0)
  %58 = load i64, i64* @pic_offset_table_rtx, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %55
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @XEXP(i64 %61, i32 1)
  %63 = call i32 @GET_CODE(i64 %62)
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @SYMBOL_REF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @XEXP(i64 %68, i32 1)
  %70 = call i32 @GET_CODE(i64 %69)
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @LABEL_REF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @XEXP(i64 %75, i32 1)
  %77 = call i32 @GET_CODE(i64 %76)
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @CONST, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %74, %67, %60
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @GET_MODE(i64 %85)
  %87 = call i64 @gen_reg_rtx(i32 %86)
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @emit_move_insn(i64 %89, i64 %90)
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %3, align 8
  br label %325

93:                                               ; preds = %74, %55, %51
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @ARITHMETIC_P(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %275

97:                                               ; preds = %93
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @XEXP(i64 %98, i32 1)
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @CONSTANT_P(i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %97
  %104 = load i64, i64* %7, align 8
  %105 = call i64 @REG_P(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %107, %103
  store i64 0, i64* %8, align 8
  br label %112

112:                                              ; preds = %111, %107, %97
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @MINUS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @GET_CODE(i64 %117)
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* @CONST_INT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @PLUS, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i64, i64* %4, align 8
  %125 = call i32 @GET_MODE(i64 %124)
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @negate_rtx(i32 %125, i64 %126)
  store i64 %127, i64* %7, align 8
  br label %128

128:                                              ; preds = %122, %116, %112
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @PLUS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %186

132:                                              ; preds = %128
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @GET_CODE(i64 %133)
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* @CONST_INT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %186

138:                                              ; preds = %132
  %139 = load i64, i64* %4, align 8
  %140 = call i64 @XEXP(i64 %139, i32 0)
  %141 = call i32 @GET_CODE(i64 %140)
  %142 = load i32, i32* @PLUS, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %138
  %145 = load i64, i64* %4, align 8
  %146 = call i64 @XEXP(i64 %145, i32 0)
  %147 = call i64 @XEXP(i64 %146, i32 0)
  %148 = call i64 @REG_P(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %186

150:                                              ; preds = %144
  %151 = load i64, i64* %4, align 8
  %152 = call i64 @XEXP(i64 %151, i32 0)
  %153 = call i64 @XEXP(i64 %152, i32 0)
  %154 = call i64 @REGNO(i64 %153)
  %155 = load i64, i64* @FIRST_VIRTUAL_REGISTER, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %150
  %158 = load i64, i64* %4, align 8
  %159 = call i64 @XEXP(i64 %158, i32 0)
  %160 = call i64 @XEXP(i64 %159, i32 0)
  %161 = call i64 @REGNO(i64 %160)
  %162 = load i64, i64* @LAST_VIRTUAL_REGISTER, align 8
  %163 = icmp sle i64 %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %157
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @GET_MODE(i64 %165)
  %167 = load i32, i32* %9, align 4
  %168 = load i64, i64* %4, align 8
  %169 = call i64 @XEXP(i64 %168, i32 0)
  %170 = call i64 @XEXP(i64 %169, i32 0)
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %174 = call i64 @expand_simple_binop(i32 %166, i32 %167, i64 %170, i64 %171, i64 %172, i32 0, i32 %173)
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %4, align 8
  %176 = call i32 @GET_MODE(i64 %175)
  %177 = load i32, i32* %9, align 4
  %178 = load i64, i64* %10, align 8
  %179 = load i64, i64* %4, align 8
  %180 = call i64 @XEXP(i64 %179, i32 0)
  %181 = call i64 @XEXP(i64 %180, i32 1)
  %182 = call i64 @force_operand(i64 %181, i64 0)
  %183 = load i64, i64* %5, align 8
  %184 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %185 = call i64 @expand_simple_binop(i32 %176, i32 %177, i64 %178, i64 %182, i64 %183, i32 0, i32 %184)
  store i64 %185, i64* %3, align 8
  br label %325

186:                                              ; preds = %157, %150, %144, %138, %132, %128
  %187 = load i64, i64* %4, align 8
  %188 = call i64 @XEXP(i64 %187, i32 0)
  %189 = load i64, i64* %8, align 8
  %190 = call i64 @force_operand(i64 %188, i64 %189)
  store i64 %190, i64* %6, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* @NULL_RTX, align 8
  %193 = call i64 @force_operand(i64 %191, i64 %192)
  store i64 %193, i64* %7, align 8
  %194 = load i32, i32* %9, align 4
  switch i32 %194, label %266 [
    i32 135, label %195
    i32 141, label %202
    i32 136, label %233
    i32 132, label %241
    i32 131, label %249
    i32 142, label %257
  ]

195:                                              ; preds = %186
  %196 = load i64, i64* %4, align 8
  %197 = call i32 @GET_MODE(i64 %196)
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load i64, i64* %5, align 8
  %201 = call i64 @expand_mult(i32 %197, i64 %198, i64 %199, i64 %200, i32 1)
  store i64 %201, i64* %3, align 8
  br label %325

202:                                              ; preds = %186
  %203 = load i64, i64* %4, align 8
  %204 = call i32 @GET_MODE(i64 %203)
  %205 = call i32 @INTEGRAL_MODE_P(i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %202
  %208 = load i64, i64* %4, align 8
  %209 = call i32 @GET_MODE(i64 %208)
  %210 = load i32, i32* %9, align 4
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* %5, align 8
  %214 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %215 = call i64 @expand_simple_binop(i32 %209, i32 %210, i64 %211, i64 %212, i64 %213, i32 1, i32 %214)
  store i64 %215, i64* %3, align 8
  br label %325

216:                                              ; preds = %202
  %217 = load i64, i64* %4, align 8
  %218 = call i32 @GET_MODE(i64 %217)
  %219 = call i32 @FLOAT_MODE_P(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* @RDIV_EXPR, align 4
  br label %225

223:                                              ; preds = %216
  %224 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = load i64, i64* %4, align 8
  %228 = call i32 @GET_MODE(i64 %227)
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @expand_divmod(i32 0, i32 %226, i32 %228, i64 %229, i64 %230, i64 %231, i32 0)
  store i64 %232, i64* %3, align 8
  br label %325

233:                                              ; preds = %186
  %234 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %235 = load i64, i64* %4, align 8
  %236 = call i32 @GET_MODE(i64 %235)
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* %5, align 8
  %240 = call i64 @expand_divmod(i32 1, i32 %234, i32 %236, i64 %237, i64 %238, i64 %239, i32 0)
  store i64 %240, i64* %3, align 8
  br label %325

241:                                              ; preds = %186
  %242 = load i32, i32* @TRUNC_DIV_EXPR, align 4
  %243 = load i64, i64* %4, align 8
  %244 = call i32 @GET_MODE(i64 %243)
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* %7, align 8
  %247 = load i64, i64* %5, align 8
  %248 = call i64 @expand_divmod(i32 0, i32 %242, i32 %244, i64 %245, i64 %246, i64 %247, i32 1)
  store i64 %248, i64* %3, align 8
  br label %325

249:                                              ; preds = %186
  %250 = load i32, i32* @TRUNC_MOD_EXPR, align 4
  %251 = load i64, i64* %4, align 8
  %252 = call i32 @GET_MODE(i64 %251)
  %253 = load i64, i64* %6, align 8
  %254 = load i64, i64* %7, align 8
  %255 = load i64, i64* %5, align 8
  %256 = call i64 @expand_divmod(i32 1, i32 %250, i32 %252, i64 %253, i64 %254, i64 %255, i32 1)
  store i64 %256, i64* %3, align 8
  br label %325

257:                                              ; preds = %186
  %258 = load i64, i64* %4, align 8
  %259 = call i32 @GET_MODE(i64 %258)
  %260 = load i32, i32* %9, align 4
  %261 = load i64, i64* %6, align 8
  %262 = load i64, i64* %7, align 8
  %263 = load i64, i64* %5, align 8
  %264 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %265 = call i64 @expand_simple_binop(i32 %259, i32 %260, i64 %261, i64 %262, i64 %263, i32 0, i32 %264)
  store i64 %265, i64* %3, align 8
  br label %325

266:                                              ; preds = %186
  %267 = load i64, i64* %4, align 8
  %268 = call i32 @GET_MODE(i64 %267)
  %269 = load i32, i32* %9, align 4
  %270 = load i64, i64* %6, align 8
  %271 = load i64, i64* %7, align 8
  %272 = load i64, i64* %5, align 8
  %273 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %274 = call i64 @expand_simple_binop(i32 %268, i32 %269, i64 %270, i64 %271, i64 %272, i32 1, i32 %273)
  store i64 %274, i64* %3, align 8
  br label %325

275:                                              ; preds = %93
  %276 = load i64, i64* %4, align 8
  %277 = call i64 @UNARY_P(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %323

279:                                              ; preds = %275
  %280 = load i64, i64* %5, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %279
  %283 = load i64, i64* %4, align 8
  %284 = call i32 @GET_MODE(i64 %283)
  %285 = call i64 @gen_reg_rtx(i32 %284)
  store i64 %285, i64* %5, align 8
  br label %286

286:                                              ; preds = %282, %279
  %287 = load i64, i64* %4, align 8
  %288 = call i64 @XEXP(i64 %287, i32 0)
  %289 = load i64, i64* @NULL_RTX, align 8
  %290 = call i64 @force_operand(i64 %288, i64 %289)
  store i64 %290, i64* %6, align 8
  %291 = load i32, i32* %9, align 4
  switch i32 %291, label %316 [
    i32 128, label %292
    i32 134, label %292
    i32 133, label %292
    i32 138, label %292
    i32 137, label %292
    i32 140, label %300
    i32 130, label %300
    i32 139, label %308
    i32 129, label %308
  ]

292:                                              ; preds = %286, %286, %286, %286, %286
  %293 = load i64, i64* %5, align 8
  %294 = load i64, i64* %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = icmp eq i32 %295, 128
  %297 = zext i1 %296 to i32
  %298 = call i32 @convert_move(i64 %293, i64 %294, i32 %297)
  %299 = load i64, i64* %5, align 8
  store i64 %299, i64* %3, align 8
  br label %325

300:                                              ; preds = %286, %286
  %301 = load i64, i64* %5, align 8
  %302 = load i64, i64* %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = icmp eq i32 %303, 130
  %305 = zext i1 %304 to i32
  %306 = call i32 @expand_fix(i64 %301, i64 %302, i32 %305)
  %307 = load i64, i64* %5, align 8
  store i64 %307, i64* %3, align 8
  br label %325

308:                                              ; preds = %286, %286
  %309 = load i64, i64* %5, align 8
  %310 = load i64, i64* %6, align 8
  %311 = load i32, i32* %9, align 4
  %312 = icmp eq i32 %311, 129
  %313 = zext i1 %312 to i32
  %314 = call i32 @expand_float(i64 %309, i64 %310, i32 %313)
  %315 = load i64, i64* %5, align 8
  store i64 %315, i64* %3, align 8
  br label %325

316:                                              ; preds = %286
  %317 = load i64, i64* %4, align 8
  %318 = call i32 @GET_MODE(i64 %317)
  %319 = load i32, i32* %9, align 4
  %320 = load i64, i64* %6, align 8
  %321 = load i64, i64* %5, align 8
  %322 = call i64 @expand_simple_unop(i32 %318, i32 %319, i64 %320, i64 %321, i32 0)
  store i64 %322, i64* %3, align 8
  br label %325

323:                                              ; preds = %275
  %324 = load i64, i64* %4, align 8
  store i64 %324, i64* %3, align 8
  br label %325

325:                                              ; preds = %323, %316, %308, %300, %292, %266, %257, %249, %241, %233, %225, %207, %195, %164, %88
  %326 = load i64, i64* %3, align 8
  ret i64 %326
}

declare dso_local i64 @get_subtarget(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @force_reg(i32, i64) #1

declare dso_local i32 @SUBREG_BYTE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @ARITHMETIC_P(i64) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i64 @negate_rtx(i32, i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @expand_mult(i32, i64, i64, i64, i32) #1

declare dso_local i32 @INTEGRAL_MODE_P(i32) #1

declare dso_local i64 @expand_divmod(i32, i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @FLOAT_MODE_P(i32) #1

declare dso_local i64 @UNARY_P(i64) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @expand_fix(i64, i64, i32) #1

declare dso_local i32 @expand_float(i64, i64, i32) #1

declare dso_local i64 @expand_simple_unop(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
