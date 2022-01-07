; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"assuming signed overflow does not occur when changing X +- C1 cmp C2 to X cmp C1 +- C2\00", align 1
@WARN_STRICT_OVERFLOW_COMPARISON = common dso_local global i32 0, align 4
@flag_wrapv = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@NEGATE_EXPR = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@dconst0 = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@flag_unsafe_math_optimizations = common dso_local global i64 0, align 8
@flag_errno_math = common dso_local global i32 0, align 4
@END_BUILTINS = common dso_local global i32 0, align 4
@POSTINCREMENT_EXPR = common dso_local global i64 0, align 8
@POSTDECREMENT_EXPR = common dso_local global i64 0, align 8
@PREINCREMENT_EXPR = common dso_local global i32 0, align 4
@PREDECREMENT_EXPR = common dso_local global i32 0, align 4
@COMPONENT_REF = common dso_local global i64 0, align 8
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i64 0, align 8
@MAX_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@TRUNC_DIV_EXPR = common dso_local global i64 0, align 8
@EXACT_DIV_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64)* @fold_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_comparison(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @STRIP_SIGN_NOPS(i64 %48)
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @STRIP_SIGN_NOPS(i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @fold_relational_const(i32 %52, i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @NULL_TREE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %4
  %61 = load i64, i64* %12, align 8
  store i64 %61, i64* %5, align 8
  br label %985

62:                                               ; preds = %4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @tree_swap_operands_p(i64 %63, i64 %64, i32 1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @swap_tree_comparison(i32 %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @fold_build2(i32 %69, i64 %70, i64 %71, i64 %72)
  store i64 %73, i64* %5, align 8
  br label %985

74:                                               ; preds = %62
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @TREE_CODE(i64 %75)
  %77 = load i64, i64* @PLUS_EXPR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @TREE_CODE(i64 %80)
  %82 = load i64, i64* @MINUS_EXPR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %157

84:                                               ; preds = %79, %74
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @TREE_OPERAND(i64 %85, i32 1)
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @INTEGER_CST, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %157

90:                                               ; preds = %84
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @TREE_OPERAND(i64 %91, i32 1)
  %93 = call i32 @TREE_OVERFLOW(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %157, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @TREE_TYPE(i64 %96)
  %98 = call i64 @TYPE_OVERFLOW_UNDEFINED(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %157

100:                                              ; preds = %95
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @INTEGER_CST, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %100
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @TREE_OVERFLOW(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %157, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @TREE_OPERAND(i64 %110, i32 1)
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %11, align 8
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @TREE_OPERAND(i64 %113, i32 0)
  store i64 %114, i64* %15, align 8
  %115 = load i64, i64* %10, align 8
  %116 = call i64 @TREE_CODE(i64 %115)
  %117 = load i64, i64* @PLUS_EXPR, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i64, i64* @PLUS_EXPR, align 8
  br label %126

124:                                              ; preds = %109
  %125 = load i64, i64* @MINUS_EXPR, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i64 [ %123, %122 ], [ %125, %124 ]
  %128 = trunc i64 %127 to i32
  %129 = load i64, i64* %11, align 8
  %130 = call i64 @TREE_TYPE(i64 %129)
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i64 @fold_build2(i32 %128, i64 %130, i64 %131, i64 %132)
  store i64 %133, i64* %16, align 8
  %134 = load i64, i64* %16, align 8
  %135 = call i64 @TREE_CODE(i64 %134)
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @TREE_CODE(i64 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %126
  %140 = load i64, i64* %16, align 8
  %141 = call i64 @TREE_CODE(i64 %140)
  %142 = load i64, i64* @INTEGER_CST, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %16, align 8
  %146 = call i32 @TREE_OVERFLOW(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* @WARN_STRICT_OVERFLOW_COMPARISON, align 4
  %150 = call i32 @fold_overflow_warning(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %16, align 8
  %155 = call i64 @fold_build2(i32 %151, i64 %152, i64 %153, i64 %154)
  store i64 %155, i64* %5, align 8
  br label %985

156:                                              ; preds = %144, %126
  br label %157

157:                                              ; preds = %156, %105, %100, %95, %90, %84, %79
  %158 = load i64, i64* %10, align 8
  %159 = call i64 @TREE_TYPE(i64 %158)
  %160 = call i64 @POINTER_TYPE_P(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %214

162:                                              ; preds = %157
  %163 = load i32, i32* @flag_wrapv, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %214, label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %10, align 8
  %167 = call i64 @TREE_TYPE(i64 %166)
  %168 = call i32 @TYPE_OVERFLOW_TRAPS(i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %214, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %10, align 8
  %172 = call i64 @extract_array_ref(i64 %171, i64* %18, i64* %19)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %213

174:                                              ; preds = %170
  %175 = load i64, i64* %11, align 8
  %176 = call i64 @extract_array_ref(i64 %175, i64* %20, i64* %21)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %213

178:                                              ; preds = %174
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %20, align 8
  %181 = call i64 @operand_equal_p(i64 %179, i64 %180, i32 0)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %178
  %184 = load i32, i32* @size_type_node, align 4
  %185 = call i64 @signed_type_for(i32 %184)
  store i64 %185, i64* %22, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* @NULL_TREE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i64, i64* %22, align 8
  %191 = call i64 @build_int_cst(i64 %190, i64 0)
  store i64 %191, i64* %19, align 8
  br label %196

192:                                              ; preds = %183
  %193 = load i64, i64* %22, align 8
  %194 = load i64, i64* %19, align 8
  %195 = call i64 @fold_convert(i64 %193, i64 %194)
  store i64 %195, i64* %19, align 8
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* @NULL_TREE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i64, i64* %22, align 8
  %202 = call i64 @build_int_cst(i64 %201, i64 0)
  store i64 %202, i64* %21, align 8
  br label %207

203:                                              ; preds = %196
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* %21, align 8
  %206 = call i64 @fold_convert(i64 %204, i64 %205)
  store i64 %206, i64* %21, align 8
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32, i32* %6, align 4
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* %19, align 8
  %211 = load i64, i64* %21, align 8
  %212 = call i64 @fold_build2(i32 %208, i64 %209, i64 %210, i64 %211)
  store i64 %212, i64* %5, align 8
  br label %985

213:                                              ; preds = %178, %174, %170
  br label %214

214:                                              ; preds = %213, %165, %162, %157
  %215 = load i64, i64* %10, align 8
  %216 = call i64 @TREE_TYPE(i64 %215)
  %217 = call i64 @FLOAT_TYPE_P(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %468

219:                                              ; preds = %214
  %220 = load i64, i64* %10, align 8
  %221 = call i64 @strip_float_extensions(i64 %220)
  store i64 %221, i64* %23, align 8
  %222 = load i64, i64* %11, align 8
  %223 = call i64 @strip_float_extensions(i64 %222)
  store i64 %223, i64* %24, align 8
  %224 = load i64, i64* %23, align 8
  %225 = call i64 @TREE_TYPE(i64 %224)
  store i64 %225, i64* %25, align 8
  %226 = load i64, i64* %24, align 8
  %227 = call i64 @TREE_TYPE(i64 %226)
  %228 = call i64 @TYPE_PRECISION(i64 %227)
  %229 = load i64, i64* %25, align 8
  %230 = call i64 @TYPE_PRECISION(i64 %229)
  %231 = icmp sgt i64 %228, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %219
  %233 = load i64, i64* %24, align 8
  %234 = call i64 @TREE_TYPE(i64 %233)
  store i64 %234, i64* %25, align 8
  br label %235

235:                                              ; preds = %232, %219
  %236 = load i64, i64* %25, align 8
  %237 = call i64 @TYPE_PRECISION(i64 %236)
  %238 = load i64, i64* %10, align 8
  %239 = call i64 @TREE_TYPE(i64 %238)
  %240 = call i64 @TYPE_PRECISION(i64 %239)
  %241 = icmp slt i64 %237, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %235
  %243 = load i32, i32* %6, align 4
  %244 = load i64, i64* %7, align 8
  %245 = load i64, i64* %25, align 8
  %246 = load i64, i64* %23, align 8
  %247 = call i64 @fold_convert(i64 %245, i64 %246)
  %248 = load i64, i64* %25, align 8
  %249 = load i64, i64* %24, align 8
  %250 = call i64 @fold_convert(i64 %248, i64 %249)
  %251 = call i64 @fold_build2(i32 %243, i64 %244, i64 %247, i64 %250)
  store i64 %251, i64* %5, align 8
  br label %985

252:                                              ; preds = %235
  %253 = load i64, i64* %10, align 8
  %254 = call i64 @TREE_CODE(i64 %253)
  %255 = load i64, i64* @NEGATE_EXPR, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %270

257:                                              ; preds = %252
  %258 = load i64, i64* %11, align 8
  %259 = call i64 @TREE_CODE(i64 %258)
  %260 = load i64, i64* @NEGATE_EXPR, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load i32, i32* %6, align 4
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* %11, align 8
  %266 = call i64 @TREE_OPERAND(i64 %265, i32 0)
  %267 = load i64, i64* %10, align 8
  %268 = call i64 @TREE_OPERAND(i64 %267, i32 0)
  %269 = call i64 @fold_build2(i32 %263, i64 %264, i64 %266, i64 %268)
  store i64 %269, i64* %5, align 8
  br label %985

270:                                              ; preds = %257, %252
  %271 = load i64, i64* %11, align 8
  %272 = call i64 @TREE_CODE(i64 %271)
  %273 = load i64, i64* @REAL_CST, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %347

275:                                              ; preds = %270
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @TREE_REAL_CST(i64 %276)
  store i32 %277, i32* %26, align 4
  %278 = load i64, i64* %10, align 8
  %279 = call i64 @TREE_CODE(i64 %278)
  %280 = load i64, i64* @NEGATE_EXPR, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %275
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @swap_tree_comparison(i32 %283)
  %285 = load i64, i64* %7, align 8
  %286 = load i64, i64* %10, align 8
  %287 = call i64 @TREE_OPERAND(i64 %286, i32 0)
  %288 = load i64, i64* %11, align 8
  %289 = call i64 @TREE_TYPE(i64 %288)
  %290 = load i32, i32* %26, align 4
  %291 = call i32 @REAL_VALUE_NEGATE(i32 %290)
  %292 = call i64 @build_real(i64 %289, i32 %291)
  %293 = call i64 @fold_build2(i32 %284, i64 %285, i64 %287, i64 %292)
  store i64 %293, i64* %5, align 8
  br label %985

294:                                              ; preds = %275
  %295 = load i32, i32* %26, align 4
  %296 = call i64 @REAL_VALUE_MINUS_ZERO(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i32, i32* %6, align 4
  %300 = load i64, i64* %7, align 8
  %301 = load i64, i64* %10, align 8
  %302 = load i64, i64* %11, align 8
  %303 = call i64 @TREE_TYPE(i64 %302)
  %304 = load i32, i32* @dconst0, align 4
  %305 = call i64 @build_real(i64 %303, i32 %304)
  %306 = call i64 @fold_build2(i32 %299, i64 %300, i64 %301, i64 %305)
  store i64 %306, i64* %5, align 8
  br label %985

307:                                              ; preds = %294
  %308 = load i32, i32* %26, align 4
  %309 = call i64 @REAL_VALUE_ISNAN(i32 %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %307
  %312 = load i64, i64* %11, align 8
  %313 = call i64 @TREE_TYPE(i64 %312)
  %314 = call i32 @TYPE_MODE(i64 %313)
  %315 = call i32 @HONOR_SNANS(i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %330, label %317

317:                                              ; preds = %311
  %318 = load i32, i32* %6, align 4
  %319 = icmp eq i32 %318, 128
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = load i64, i64* @integer_one_node, align 8
  br label %324

322:                                              ; preds = %317
  %323 = load i64, i64* @integer_zero_node, align 8
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i64 [ %321, %320 ], [ %323, %322 ]
  store i64 %325, i64* %12, align 8
  %326 = load i64, i64* %7, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* %10, align 8
  %329 = call i64 @omit_one_operand(i64 %326, i64 %327, i64 %328)
  store i64 %329, i64* %5, align 8
  br label %985

330:                                              ; preds = %311, %307
  %331 = load i32, i32* %26, align 4
  %332 = call i64 @REAL_VALUE_ISINF(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %330
  %335 = load i32, i32* %6, align 4
  %336 = load i64, i64* %7, align 8
  %337 = load i64, i64* %10, align 8
  %338 = load i64, i64* %11, align 8
  %339 = call i64 @fold_inf_compare(i32 %335, i64 %336, i64 %337, i64 %338)
  store i64 %339, i64* %12, align 8
  %340 = load i64, i64* %12, align 8
  %341 = load i64, i64* @NULL_TREE, align 8
  %342 = icmp ne i64 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %334
  %344 = load i64, i64* %12, align 8
  store i64 %344, i64* %5, align 8
  br label %985

345:                                              ; preds = %334
  br label %346

346:                                              ; preds = %345, %330
  br label %347

347:                                              ; preds = %346, %270
  %348 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %398

350:                                              ; preds = %347
  %351 = load i64, i64* %11, align 8
  %352 = call i64 @TREE_CODE(i64 %351)
  %353 = load i64, i64* @REAL_CST, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %398

355:                                              ; preds = %350
  %356 = load i64, i64* %10, align 8
  %357 = call i64 @TREE_CODE(i64 %356)
  %358 = load i64, i64* @PLUS_EXPR, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = load i64, i64* %10, align 8
  %362 = call i64 @TREE_CODE(i64 %361)
  %363 = load i64, i64* @MINUS_EXPR, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %398

365:                                              ; preds = %360, %355
  %366 = load i64, i64* %10, align 8
  %367 = call i64 @TREE_OPERAND(i64 %366, i32 1)
  %368 = call i64 @TREE_CODE(i64 %367)
  %369 = load i64, i64* @REAL_CST, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %398

371:                                              ; preds = %365
  %372 = load i64, i64* %10, align 8
  %373 = call i64 @TREE_CODE(i64 %372)
  %374 = load i64, i64* @PLUS_EXPR, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %371
  %377 = load i64, i64* @MINUS_EXPR, align 8
  br label %380

378:                                              ; preds = %371
  %379 = load i64, i64* @PLUS_EXPR, align 8
  br label %380

380:                                              ; preds = %378, %376
  %381 = phi i64 [ %377, %376 ], [ %379, %378 ]
  %382 = load i64, i64* %11, align 8
  %383 = load i64, i64* %10, align 8
  %384 = call i64 @TREE_OPERAND(i64 %383, i32 1)
  %385 = call i64 @const_binop(i64 %381, i64 %382, i64 %384, i32 0)
  store i64 %385, i64* %12, align 8
  %386 = icmp ne i64 0, %385
  br i1 %386, label %387, label %398

387:                                              ; preds = %380
  %388 = load i64, i64* %12, align 8
  %389 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %398, label %391

391:                                              ; preds = %387
  %392 = load i32, i32* %6, align 4
  %393 = load i64, i64* %7, align 8
  %394 = load i64, i64* %10, align 8
  %395 = call i64 @TREE_OPERAND(i64 %394, i32 0)
  %396 = load i64, i64* %12, align 8
  %397 = call i64 @fold_build2(i32 %392, i64 %393, i64 %395, i64 %396)
  store i64 %397, i64* %5, align 8
  br label %985

398:                                              ; preds = %387, %380, %365, %360, %350, %347
  %399 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %436

401:                                              ; preds = %398
  %402 = load i64, i64* %11, align 8
  %403 = call i64 @TREE_CODE(i64 %402)
  %404 = load i64, i64* @REAL_CST, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %436

406:                                              ; preds = %401
  %407 = load i64, i64* %10, align 8
  %408 = call i64 @TREE_CODE(i64 %407)
  %409 = load i64, i64* @MINUS_EXPR, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %436

411:                                              ; preds = %406
  %412 = load i64, i64* %10, align 8
  %413 = call i64 @TREE_OPERAND(i64 %412, i32 0)
  %414 = call i64 @TREE_CODE(i64 %413)
  %415 = load i64, i64* @REAL_CST, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %436

417:                                              ; preds = %411
  %418 = load i64, i64* @MINUS_EXPR, align 8
  %419 = load i64, i64* %10, align 8
  %420 = call i64 @TREE_OPERAND(i64 %419, i32 0)
  %421 = load i64, i64* %11, align 8
  %422 = call i64 @const_binop(i64 %418, i64 %420, i64 %421, i32 0)
  store i64 %422, i64* %12, align 8
  %423 = icmp ne i64 0, %422
  br i1 %423, label %424, label %436

424:                                              ; preds = %417
  %425 = load i64, i64* %12, align 8
  %426 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %436, label %428

428:                                              ; preds = %424
  %429 = load i32, i32* %6, align 4
  %430 = call i32 @swap_tree_comparison(i32 %429)
  %431 = load i64, i64* %7, align 8
  %432 = load i64, i64* %10, align 8
  %433 = call i64 @TREE_OPERAND(i64 %432, i32 1)
  %434 = load i64, i64* %12, align 8
  %435 = call i64 @fold_build2(i32 %430, i64 %431, i64 %433, i64 %434)
  store i64 %435, i64* %5, align 8
  br label %985

436:                                              ; preds = %424, %417, %411, %406, %401, %398
  %437 = load i64, i64* %11, align 8
  %438 = call i64 @TREE_CODE(i64 %437)
  %439 = load i64, i64* @REAL_CST, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %467

441:                                              ; preds = %436
  %442 = load i64, i64* @flag_unsafe_math_optimizations, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %467

444:                                              ; preds = %441
  %445 = load i32, i32* @flag_errno_math, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %467, label %447

447:                                              ; preds = %444
  %448 = load i64, i64* %10, align 8
  %449 = call i32 @builtin_mathfn_code(i64 %448)
  store i32 %449, i32* %27, align 4
  %450 = load i32, i32* %27, align 4
  %451 = load i32, i32* @END_BUILTINS, align 4
  %452 = icmp ne i32 %450, %451
  br i1 %452, label %453, label %466

453:                                              ; preds = %447
  %454 = load i32, i32* %27, align 4
  %455 = load i32, i32* %6, align 4
  %456 = load i64, i64* %7, align 8
  %457 = load i64, i64* %10, align 8
  %458 = load i64, i64* %11, align 8
  %459 = call i64 @fold_mathfn_compare(i32 %454, i32 %455, i64 %456, i64 %457, i64 %458)
  store i64 %459, i64* %12, align 8
  %460 = load i64, i64* %12, align 8
  %461 = load i64, i64* @NULL_TREE, align 8
  %462 = icmp ne i64 %460, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %453
  %464 = load i64, i64* %12, align 8
  store i64 %464, i64* %5, align 8
  br label %985

465:                                              ; preds = %453
  br label %466

466:                                              ; preds = %465, %447
  br label %467

467:                                              ; preds = %466, %444, %441, %436
  br label %468

468:                                              ; preds = %467, %214
  %469 = load i64, i64* %11, align 8
  %470 = call i64 @TREE_CONSTANT(i64 %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %608

472:                                              ; preds = %468
  %473 = load i64, i64* %10, align 8
  %474 = call i64 @TREE_CODE(i64 %473)
  %475 = load i64, i64* @POSTINCREMENT_EXPR, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %482, label %477

477:                                              ; preds = %472
  %478 = load i64, i64* %10, align 8
  %479 = call i64 @TREE_CODE(i64 %478)
  %480 = load i64, i64* @POSTDECREMENT_EXPR, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %608

482:                                              ; preds = %477, %472
  %483 = load i64, i64* %10, align 8
  %484 = call i64 @TREE_TYPE(i64 %483)
  %485 = call i64 @POINTER_TYPE_P(i64 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %498, label %487

487:                                              ; preds = %482
  %488 = load i64, i64* %10, align 8
  %489 = call i64 @TREE_TYPE(i64 %488)
  %490 = call i64 @INTEGRAL_TYPE_P(i64 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %608

492:                                              ; preds = %487
  %493 = load i32, i32* %6, align 4
  %494 = icmp eq i32 %493, 133
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %6, align 4
  %497 = icmp eq i32 %496, 128
  br i1 %497, label %498, label %608

498:                                              ; preds = %495, %492, %482
  %499 = load i64, i64* %10, align 8
  %500 = call i64 @TREE_CODE(i64 %499)
  %501 = load i64, i64* @POSTINCREMENT_EXPR, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %520

503:                                              ; preds = %498
  %504 = load i64, i64* @PLUS_EXPR, align 8
  %505 = trunc i64 %504 to i32
  %506 = load i64, i64* %10, align 8
  %507 = call i64 @TREE_TYPE(i64 %506)
  %508 = load i64, i64* %11, align 8
  %509 = load i64, i64* %10, align 8
  %510 = call i64 @TREE_OPERAND(i64 %509, i32 1)
  %511 = call i64 @fold_build2(i32 %505, i64 %507, i64 %508, i64 %510)
  store i64 %511, i64* %29, align 8
  %512 = load i32, i32* @PREINCREMENT_EXPR, align 4
  %513 = load i64, i64* %10, align 8
  %514 = call i64 @TREE_TYPE(i64 %513)
  %515 = load i64, i64* %10, align 8
  %516 = call i64 @TREE_OPERAND(i64 %515, i32 0)
  %517 = load i64, i64* %10, align 8
  %518 = call i64 @TREE_OPERAND(i64 %517, i32 1)
  %519 = call i64 @build2(i32 %512, i64 %514, i64 %516, i64 %518)
  store i64 %519, i64* %28, align 8
  br label %537

520:                                              ; preds = %498
  %521 = load i64, i64* @MINUS_EXPR, align 8
  %522 = trunc i64 %521 to i32
  %523 = load i64, i64* %10, align 8
  %524 = call i64 @TREE_TYPE(i64 %523)
  %525 = load i64, i64* %11, align 8
  %526 = load i64, i64* %10, align 8
  %527 = call i64 @TREE_OPERAND(i64 %526, i32 1)
  %528 = call i64 @fold_build2(i32 %522, i64 %524, i64 %525, i64 %527)
  store i64 %528, i64* %29, align 8
  %529 = load i32, i32* @PREDECREMENT_EXPR, align 4
  %530 = load i64, i64* %10, align 8
  %531 = call i64 @TREE_TYPE(i64 %530)
  %532 = load i64, i64* %10, align 8
  %533 = call i64 @TREE_OPERAND(i64 %532, i32 0)
  %534 = load i64, i64* %10, align 8
  %535 = call i64 @TREE_OPERAND(i64 %534, i32 1)
  %536 = call i64 @build2(i32 %529, i64 %531, i64 %533, i64 %535)
  store i64 %536, i64* %28, align 8
  br label %537

537:                                              ; preds = %520, %503
  %538 = load i64, i64* %28, align 8
  %539 = call i64 @TREE_OPERAND(i64 %538, i32 0)
  %540 = call i64 @TREE_CODE(i64 %539)
  %541 = load i64, i64* @COMPONENT_REF, align 8
  %542 = icmp eq i64 %540, %541
  br i1 %542, label %543, label %602

543:                                              ; preds = %537
  %544 = load i64, i64* %28, align 8
  %545 = call i64 @TREE_OPERAND(i64 %544, i32 0)
  %546 = call i64 @TREE_OPERAND(i64 %545, i32 1)
  %547 = call i64 @DECL_BIT_FIELD(i64 %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %602

549:                                              ; preds = %543
  %550 = load i64, i64* %28, align 8
  %551 = call i64 @TREE_OPERAND(i64 %550, i32 0)
  %552 = call i64 @TREE_OPERAND(i64 %551, i32 1)
  %553 = call i32 @DECL_SIZE(i64 %552)
  %554 = call i64 @host_integerp(i32 %553, i32 1)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %602

556:                                              ; preds = %549
  %557 = load i64, i64* %28, align 8
  %558 = call i64 @TREE_OPERAND(i64 %557, i32 0)
  %559 = call i64 @TREE_OPERAND(i64 %558, i32 1)
  store i64 %559, i64* %30, align 8
  %560 = load i64, i64* %30, align 8
  %561 = call i32 @DECL_SIZE(i64 %560)
  %562 = call i64 @tree_low_cst(i32 %561, i32 1)
  store i64 %562, i64* %31, align 8
  %563 = load i32, i32* %6, align 4
  %564 = load i64, i64* %7, align 8
  %565 = load i64, i64* %28, align 8
  %566 = call i64 @TREE_OPERAND(i64 %565, i32 0)
  %567 = load i64, i64* %11, align 8
  %568 = call i64 @fold_build2(i32 %563, i64 %564, i64 %566, i64 %567)
  store i64 %568, i64* %32, align 8
  %569 = load i64, i64* %32, align 8
  %570 = call i64 @TREE_CODE(i64 %569)
  %571 = load i64, i64* @INTEGER_CST, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %578

573:                                              ; preds = %556
  %574 = load i64, i64* %7, align 8
  %575 = load i64, i64* %32, align 8
  %576 = load i64, i64* %28, align 8
  %577 = call i64 @omit_one_operand(i64 %574, i64 %575, i64 %576)
  store i64 %577, i64* %5, align 8
  br label %985

578:                                              ; preds = %556
  %579 = load i64, i64* @NULL_TREE, align 8
  %580 = load i64, i64* %28, align 8
  %581 = call i64 @TREE_TYPE(i64 %580)
  %582 = call i64 @TYPE_PRECISION(i64 %581)
  %583 = load i64, i64* %31, align 8
  %584 = sub nsw i64 %582, %583
  %585 = call i64 @build_int_cst(i64 %579, i64 %584)
  store i64 %585, i64* %33, align 8
  %586 = load i64, i64* %28, align 8
  %587 = call i64 @TREE_TYPE(i64 %586)
  %588 = load i64, i64* %33, align 8
  %589 = call i64 @fold_convert(i64 %587, i64 %588)
  store i64 %589, i64* %33, align 8
  %590 = load i32, i32* @LSHIFT_EXPR, align 4
  %591 = load i64, i64* %28, align 8
  %592 = call i64 @TREE_TYPE(i64 %591)
  %593 = load i64, i64* %29, align 8
  %594 = load i64, i64* %33, align 8
  %595 = call i64 @fold_build2(i32 %590, i64 %592, i64 %593, i64 %594)
  store i64 %595, i64* %29, align 8
  %596 = load i32, i32* @RSHIFT_EXPR, align 4
  %597 = load i64, i64* %28, align 8
  %598 = call i64 @TREE_TYPE(i64 %597)
  %599 = load i64, i64* %29, align 8
  %600 = load i64, i64* %33, align 8
  %601 = call i64 @fold_build2(i32 %596, i64 %598, i64 %599, i64 %600)
  store i64 %601, i64* %29, align 8
  br label %602

602:                                              ; preds = %578, %549, %543, %537
  %603 = load i32, i32* %6, align 4
  %604 = load i64, i64* %7, align 8
  %605 = load i64, i64* %28, align 8
  %606 = load i64, i64* %29, align 8
  %607 = call i64 @fold_build2(i32 %603, i64 %604, i64 %605, i64 %606)
  store i64 %607, i64* %5, align 8
  br label %985

608:                                              ; preds = %495, %487, %477, %468
  %609 = load i64, i64* %10, align 8
  %610 = call i64 @TREE_TYPE(i64 %609)
  %611 = call i64 @TREE_CODE(i64 %610)
  %612 = load i64, i64* @INTEGER_TYPE, align 8
  %613 = icmp eq i64 %611, %612
  br i1 %613, label %614, label %645

614:                                              ; preds = %608
  %615 = load i64, i64* %10, align 8
  %616 = call i64 @TREE_CODE(i64 %615)
  %617 = load i64, i64* @NOP_EXPR, align 8
  %618 = icmp eq i64 %616, %617
  br i1 %618, label %624, label %619

619:                                              ; preds = %614
  %620 = load i64, i64* %10, align 8
  %621 = call i64 @TREE_CODE(i64 %620)
  %622 = load i64, i64* @CONVERT_EXPR, align 8
  %623 = icmp eq i64 %621, %622
  br i1 %623, label %624, label %645

624:                                              ; preds = %619, %614
  %625 = load i32, i32* %6, align 4
  %626 = load i64, i64* %7, align 8
  %627 = load i64, i64* %10, align 8
  %628 = load i64, i64* %11, align 8
  %629 = call i64 @fold_widened_comparison(i32 %625, i64 %626, i64 %627, i64 %628)
  store i64 %629, i64* %12, align 8
  %630 = load i64, i64* %12, align 8
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %634

632:                                              ; preds = %624
  %633 = load i64, i64* %12, align 8
  store i64 %633, i64* %5, align 8
  br label %985

634:                                              ; preds = %624
  %635 = load i32, i32* %6, align 4
  %636 = load i64, i64* %7, align 8
  %637 = load i64, i64* %10, align 8
  %638 = load i64, i64* %11, align 8
  %639 = call i64 @fold_sign_changed_comparison(i32 %635, i64 %636, i64 %637, i64 %638)
  store i64 %639, i64* %12, align 8
  %640 = load i64, i64* %12, align 8
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %634
  %643 = load i64, i64* %12, align 8
  store i64 %643, i64* %5, align 8
  br label %985

644:                                              ; preds = %634
  br label %645

645:                                              ; preds = %644, %619, %608
  %646 = load i64, i64* %11, align 8
  %647 = call i64 @TREE_CODE(i64 %646)
  %648 = load i64, i64* @INTEGER_CST, align 8
  %649 = icmp eq i64 %647, %648
  br i1 %649, label %650, label %677

650:                                              ; preds = %645
  %651 = load i64, i64* %10, align 8
  %652 = call i64 @TREE_CODE(i64 %651)
  %653 = load i64, i64* @MIN_EXPR, align 8
  %654 = icmp eq i64 %652, %653
  br i1 %654, label %660, label %655

655:                                              ; preds = %650
  %656 = load i64, i64* %10, align 8
  %657 = call i64 @TREE_CODE(i64 %656)
  %658 = load i64, i64* @MAX_EXPR, align 8
  %659 = icmp eq i64 %657, %658
  br i1 %659, label %660, label %677

660:                                              ; preds = %655, %650
  %661 = load i64, i64* %10, align 8
  %662 = call i64 @TREE_OPERAND(i64 %661, i32 1)
  %663 = call i64 @TREE_CODE(i64 %662)
  %664 = load i64, i64* @INTEGER_CST, align 8
  %665 = icmp eq i64 %663, %664
  br i1 %665, label %666, label %677

666:                                              ; preds = %660
  %667 = load i32, i32* %6, align 4
  %668 = load i64, i64* %7, align 8
  %669 = load i64, i64* %8, align 8
  %670 = load i64, i64* %9, align 8
  %671 = call i64 @optimize_minmax_comparison(i32 %667, i64 %668, i64 %669, i64 %670)
  store i64 %671, i64* %12, align 8
  %672 = load i64, i64* %12, align 8
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %666
  %675 = load i64, i64* %12, align 8
  store i64 %675, i64* %5, align 8
  br label %985

676:                                              ; preds = %666
  br label %677

677:                                              ; preds = %676, %660, %655, %645
  %678 = load i64, i64* %10, align 8
  %679 = load i64, i64* %11, align 8
  %680 = call i64 @operand_equal_p(i64 %678, i64 %679, i32 0)
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %737

682:                                              ; preds = %677
  %683 = load i32, i32* %6, align 4
  switch i32 %683, label %734 [
    i32 133, label %684
    i32 132, label %699
    i32 130, label %699
    i32 128, label %718
    i32 131, label %731
    i32 129, label %731
  ]

684:                                              ; preds = %682
  %685 = load i64, i64* %10, align 8
  %686 = call i64 @TREE_TYPE(i64 %685)
  %687 = call i64 @FLOAT_TYPE_P(i64 %686)
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %689, label %695

689:                                              ; preds = %684
  %690 = load i64, i64* %10, align 8
  %691 = call i64 @TREE_TYPE(i64 %690)
  %692 = call i32 @TYPE_MODE(i64 %691)
  %693 = call i32 @HONOR_NANS(i32 %692)
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %698, label %695

695:                                              ; preds = %689, %684
  %696 = load i64, i64* %7, align 8
  %697 = call i64 @constant_boolean_node(i32 1, i64 %696)
  store i64 %697, i64* %5, align 8
  br label %985

698:                                              ; preds = %689
  br label %736

699:                                              ; preds = %682, %682
  %700 = load i64, i64* %10, align 8
  %701 = call i64 @TREE_TYPE(i64 %700)
  %702 = call i64 @FLOAT_TYPE_P(i64 %701)
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %710

704:                                              ; preds = %699
  %705 = load i64, i64* %10, align 8
  %706 = call i64 @TREE_TYPE(i64 %705)
  %707 = call i32 @TYPE_MODE(i64 %706)
  %708 = call i32 @HONOR_NANS(i32 %707)
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %713, label %710

710:                                              ; preds = %704, %699
  %711 = load i64, i64* %7, align 8
  %712 = call i64 @constant_boolean_node(i32 1, i64 %711)
  store i64 %712, i64* %5, align 8
  br label %985

713:                                              ; preds = %704
  %714 = load i64, i64* %7, align 8
  %715 = load i64, i64* %10, align 8
  %716 = load i64, i64* %11, align 8
  %717 = call i64 @fold_build2(i32 133, i64 %714, i64 %715, i64 %716)
  store i64 %717, i64* %5, align 8
  br label %985

718:                                              ; preds = %682
  %719 = load i64, i64* %10, align 8
  %720 = call i64 @TREE_TYPE(i64 %719)
  %721 = call i64 @FLOAT_TYPE_P(i64 %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %730

723:                                              ; preds = %718
  %724 = load i64, i64* %10, align 8
  %725 = call i64 @TREE_TYPE(i64 %724)
  %726 = call i32 @TYPE_MODE(i64 %725)
  %727 = call i32 @HONOR_NANS(i32 %726)
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %729, label %730

729:                                              ; preds = %723
  br label %736

730:                                              ; preds = %723, %718
  br label %731

731:                                              ; preds = %682, %682, %730
  %732 = load i64, i64* %7, align 8
  %733 = call i64 @constant_boolean_node(i32 0, i64 %732)
  store i64 %733, i64* %5, align 8
  br label %985

734:                                              ; preds = %682
  %735 = call i32 (...) @gcc_unreachable()
  br label %736

736:                                              ; preds = %734, %729, %698
  br label %737

737:                                              ; preds = %736, %677
  %738 = load i64, i64* %11, align 8
  %739 = call i64 @TREE_CODE(i64 %738)
  %740 = load i64, i64* @INTEGER_CST, align 8
  %741 = icmp eq i64 %739, %740
  br i1 %741, label %742, label %891

742:                                              ; preds = %737
  %743 = load i64, i64* %10, align 8
  %744 = call i64 @TREE_CODE(i64 %743)
  %745 = load i64, i64* @INTEGER_CST, align 8
  %746 = icmp ne i64 %744, %745
  br i1 %746, label %747, label %891

747:                                              ; preds = %742
  store i64 0, i64* %34, align 8
  store i64 0, i64* %35, align 8
  store i32 0, i32* %36, align 4
  %748 = load i64, i64* %10, align 8
  %749 = call i64 @twoval_comparison_p(i64 %748, i64* %34, i64* %35, i32* %36)
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %890

751:                                              ; preds = %747
  %752 = load i64, i64* %34, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %890

754:                                              ; preds = %751
  %755 = load i64, i64* %35, align 8
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %890

757:                                              ; preds = %754
  %758 = load i64, i64* %34, align 8
  %759 = call i64 @TREE_CONSTANT(i64 %758)
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %761, label %765

761:                                              ; preds = %757
  %762 = load i64, i64* %35, align 8
  %763 = call i64 @TREE_CONSTANT(i64 %762)
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %890, label %765

765:                                              ; preds = %761, %757
  %766 = load i64, i64* %34, align 8
  %767 = call i64 @TREE_TYPE(i64 %766)
  %768 = load i64, i64* %35, align 8
  %769 = call i64 @TREE_TYPE(i64 %768)
  %770 = icmp eq i64 %767, %769
  br i1 %770, label %771, label %890

771:                                              ; preds = %765
  %772 = load i64, i64* %34, align 8
  %773 = call i64 @TREE_TYPE(i64 %772)
  %774 = call i64 @INTEGRAL_TYPE_P(i64 %773)
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %890

776:                                              ; preds = %771
  %777 = load i64, i64* %34, align 8
  %778 = call i64 @TREE_TYPE(i64 %777)
  %779 = call i64 @TYPE_MAX_VALUE(i64 %778)
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %781, label %890

781:                                              ; preds = %776
  %782 = load i64, i64* %35, align 8
  %783 = call i64 @TREE_TYPE(i64 %782)
  %784 = call i64 @TYPE_MAX_VALUE(i64 %783)
  %785 = icmp ne i64 %784, 0
  br i1 %785, label %786, label %890

786:                                              ; preds = %781
  %787 = load i64, i64* %34, align 8
  %788 = call i64 @TREE_TYPE(i64 %787)
  %789 = call i64 @TYPE_MIN_VALUE(i64 %788)
  %790 = load i64, i64* %35, align 8
  %791 = call i64 @TREE_TYPE(i64 %790)
  %792 = call i64 @TYPE_MAX_VALUE(i64 %791)
  %793 = call i64 @operand_equal_p(i64 %789, i64 %792, i32 0)
  %794 = icmp ne i64 %793, 0
  br i1 %794, label %890, label %795

795:                                              ; preds = %786
  %796 = load i64, i64* %34, align 8
  %797 = call i64 @TREE_TYPE(i64 %796)
  %798 = call i64 @TYPE_MAX_VALUE(i64 %797)
  store i64 %798, i64* %37, align 8
  %799 = load i64, i64* %34, align 8
  %800 = call i64 @TREE_TYPE(i64 %799)
  %801 = call i64 @TYPE_MIN_VALUE(i64 %800)
  store i64 %801, i64* %38, align 8
  %802 = load i32, i32* %6, align 4
  %803 = load i64, i64* %7, align 8
  %804 = load i64, i64* %10, align 8
  %805 = load i64, i64* %34, align 8
  %806 = load i64, i64* %37, align 8
  %807 = load i64, i64* %35, align 8
  %808 = load i64, i64* %38, align 8
  %809 = call i64 @eval_subst(i64 %804, i64 %805, i64 %806, i64 %807, i64 %808)
  %810 = load i64, i64* %11, align 8
  %811 = call i64 @fold_build2(i32 %802, i64 %803, i64 %809, i64 %810)
  store i64 %811, i64* %39, align 8
  %812 = load i32, i32* %6, align 4
  %813 = load i64, i64* %7, align 8
  %814 = load i64, i64* %10, align 8
  %815 = load i64, i64* %34, align 8
  %816 = load i64, i64* %37, align 8
  %817 = load i64, i64* %35, align 8
  %818 = load i64, i64* %37, align 8
  %819 = call i64 @eval_subst(i64 %814, i64 %815, i64 %816, i64 %817, i64 %818)
  %820 = load i64, i64* %11, align 8
  %821 = call i64 @fold_build2(i32 %812, i64 %813, i64 %819, i64 %820)
  store i64 %821, i64* %40, align 8
  %822 = load i32, i32* %6, align 4
  %823 = load i64, i64* %7, align 8
  %824 = load i64, i64* %10, align 8
  %825 = load i64, i64* %34, align 8
  %826 = load i64, i64* %38, align 8
  %827 = load i64, i64* %35, align 8
  %828 = load i64, i64* %37, align 8
  %829 = call i64 @eval_subst(i64 %824, i64 %825, i64 %826, i64 %827, i64 %828)
  %830 = load i64, i64* %11, align 8
  %831 = call i64 @fold_build2(i32 %822, i64 %823, i64 %829, i64 %830)
  store i64 %831, i64* %41, align 8
  %832 = load i64, i64* %39, align 8
  %833 = call i64 @TREE_CODE(i64 %832)
  %834 = load i64, i64* @INTEGER_CST, align 8
  %835 = icmp eq i64 %833, %834
  br i1 %835, label %836, label %889

836:                                              ; preds = %795
  %837 = load i64, i64* %40, align 8
  %838 = call i64 @TREE_CODE(i64 %837)
  %839 = load i64, i64* @INTEGER_CST, align 8
  %840 = icmp eq i64 %838, %839
  br i1 %840, label %841, label %889

841:                                              ; preds = %836
  %842 = load i64, i64* %41, align 8
  %843 = call i64 @TREE_CODE(i64 %842)
  %844 = load i64, i64* @INTEGER_CST, align 8
  %845 = icmp eq i64 %843, %844
  br i1 %845, label %846, label %889

846:                                              ; preds = %841
  %847 = load i64, i64* %39, align 8
  %848 = call i32 @integer_onep(i64 %847)
  %849 = mul nsw i32 %848, 4
  %850 = load i64, i64* %40, align 8
  %851 = call i32 @integer_onep(i64 %850)
  %852 = mul nsw i32 %851, 2
  %853 = add nsw i32 %849, %852
  %854 = load i64, i64* %41, align 8
  %855 = call i32 @integer_onep(i64 %854)
  %856 = add nsw i32 %853, %855
  switch i32 %856, label %873 [
    i32 0, label %857
    i32 1, label %862
    i32 2, label %863
    i32 3, label %864
    i32 4, label %865
    i32 5, label %866
    i32 6, label %867
    i32 7, label %868
  ]

857:                                              ; preds = %846
  %858 = load i64, i64* %7, align 8
  %859 = load i64, i64* @integer_zero_node, align 8
  %860 = load i64, i64* %10, align 8
  %861 = call i64 @omit_one_operand(i64 %858, i64 %859, i64 %860)
  store i64 %861, i64* %5, align 8
  br label %985

862:                                              ; preds = %846
  store i32 129, i32* %6, align 4
  br label %873

863:                                              ; preds = %846
  store i32 133, i32* %6, align 4
  br label %873

864:                                              ; preds = %846
  store i32 130, i32* %6, align 4
  br label %873

865:                                              ; preds = %846
  store i32 131, i32* %6, align 4
  br label %873

866:                                              ; preds = %846
  store i32 128, i32* %6, align 4
  br label %873

867:                                              ; preds = %846
  store i32 132, i32* %6, align 4
  br label %873

868:                                              ; preds = %846
  %869 = load i64, i64* %7, align 8
  %870 = load i64, i64* @integer_one_node, align 8
  %871 = load i64, i64* %10, align 8
  %872 = call i64 @omit_one_operand(i64 %869, i64 %870, i64 %871)
  store i64 %872, i64* %5, align 8
  br label %985

873:                                              ; preds = %846, %867, %866, %865, %864, %863, %862
  %874 = load i32, i32* %36, align 4
  %875 = icmp ne i32 %874, 0
  br i1 %875, label %876, label %883

876:                                              ; preds = %873
  %877 = load i32, i32* %6, align 4
  %878 = load i64, i64* %7, align 8
  %879 = load i64, i64* %34, align 8
  %880 = load i64, i64* %35, align 8
  %881 = call i64 @build2(i32 %877, i64 %878, i64 %879, i64 %880)
  %882 = call i64 @save_expr(i64 %881)
  store i64 %882, i64* %5, align 8
  br label %985

883:                                              ; preds = %873
  %884 = load i32, i32* %6, align 4
  %885 = load i64, i64* %7, align 8
  %886 = load i64, i64* %34, align 8
  %887 = load i64, i64* %35, align 8
  %888 = call i64 @fold_build2(i32 %884, i64 %885, i64 %886, i64 %887)
  store i64 %888, i64* %5, align 8
  br label %985

889:                                              ; preds = %841, %836, %795
  br label %890

890:                                              ; preds = %889, %786, %781, %776, %771, %765, %761, %754, %751, %747
  br label %891

891:                                              ; preds = %890, %742, %737
  %892 = load i64, i64* %10, align 8
  %893 = call i64 @TREE_CODE(i64 %892)
  %894 = load i64, i64* @ADDR_EXPR, align 8
  %895 = icmp eq i64 %893, %894
  br i1 %895, label %896, label %936

896:                                              ; preds = %891
  %897 = load i64, i64* %10, align 8
  %898 = call i64 @TREE_OPERAND(i64 %897, i32 0)
  %899 = call i64 @TREE_CODE(i64 %898)
  %900 = load i64, i64* @COMPONENT_REF, align 8
  %901 = icmp eq i64 %899, %900
  br i1 %901, label %902, label %936

902:                                              ; preds = %896
  %903 = load i64, i64* %11, align 8
  %904 = call i64 @TREE_CODE(i64 %903)
  %905 = load i64, i64* @ADDR_EXPR, align 8
  %906 = icmp eq i64 %904, %905
  br i1 %906, label %907, label %936

907:                                              ; preds = %902
  %908 = load i64, i64* %11, align 8
  %909 = call i64 @TREE_OPERAND(i64 %908, i32 0)
  %910 = call i64 @TREE_CODE(i64 %909)
  %911 = load i64, i64* @COMPONENT_REF, align 8
  %912 = icmp eq i64 %910, %911
  br i1 %912, label %913, label %936

913:                                              ; preds = %907
  %914 = load i64, i64* %10, align 8
  %915 = call i64 @TREE_OPERAND(i64 %914, i32 0)
  store i64 %915, i64* %42, align 8
  %916 = load i64, i64* %11, align 8
  %917 = call i64 @TREE_OPERAND(i64 %916, i32 0)
  store i64 %917, i64* %43, align 8
  %918 = load i64, i64* %42, align 8
  %919 = call i64 @TREE_OPERAND(i64 %918, i32 1)
  %920 = load i64, i64* %43, align 8
  %921 = call i64 @TREE_OPERAND(i64 %920, i32 1)
  %922 = icmp eq i64 %919, %921
  br i1 %922, label %923, label %935

923:                                              ; preds = %913
  %924 = load i64, i64* %42, align 8
  %925 = call i64 @TREE_OPERAND(i64 %924, i32 0)
  store i64 %925, i64* %44, align 8
  %926 = load i64, i64* %43, align 8
  %927 = call i64 @TREE_OPERAND(i64 %926, i32 0)
  store i64 %927, i64* %45, align 8
  %928 = load i32, i32* %6, align 4
  %929 = load i64, i64* %7, align 8
  %930 = load i64, i64* %44, align 8
  %931 = call i64 @build_fold_addr_expr(i64 %930)
  %932 = load i64, i64* %45, align 8
  %933 = call i64 @build_fold_addr_expr(i64 %932)
  %934 = call i64 @fold_build2(i32 %928, i64 %929, i64 %931, i64 %933)
  store i64 %934, i64* %5, align 8
  br label %985

935:                                              ; preds = %913
  br label %936

936:                                              ; preds = %935, %907, %902, %896, %891
  %937 = load i64, i64* %10, align 8
  %938 = call i64 @TREE_CODE(i64 %937)
  %939 = load i64, i64* @TRUNC_DIV_EXPR, align 8
  %940 = icmp eq i64 %938, %939
  br i1 %940, label %946, label %941

941:                                              ; preds = %936
  %942 = load i64, i64* %10, align 8
  %943 = call i64 @TREE_CODE(i64 %942)
  %944 = load i64, i64* @EXACT_DIV_EXPR, align 8
  %945 = icmp eq i64 %943, %944
  br i1 %945, label %946, label %983

946:                                              ; preds = %941, %936
  %947 = load i64, i64* %11, align 8
  %948 = call i64 @TREE_CODE(i64 %947)
  %949 = load i64, i64* @INTEGER_CST, align 8
  %950 = icmp eq i64 %948, %949
  br i1 %950, label %951, label %983

951:                                              ; preds = %946
  %952 = load i64, i64* %10, align 8
  %953 = call i64 @TREE_OPERAND(i64 %952, i32 1)
  %954 = call i64 @TREE_CODE(i64 %953)
  %955 = load i64, i64* @INTEGER_CST, align 8
  %956 = icmp eq i64 %954, %955
  br i1 %956, label %957, label %983

957:                                              ; preds = %951
  %958 = load i64, i64* %10, align 8
  %959 = call i64 @TREE_OPERAND(i64 %958, i32 1)
  %960 = call i32 @integer_zerop(i64 %959)
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %983, label %962

962:                                              ; preds = %957
  %963 = load i64, i64* %10, align 8
  %964 = call i64 @TREE_OPERAND(i64 %963, i32 1)
  %965 = call i32 @TREE_OVERFLOW(i64 %964)
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %983, label %967

967:                                              ; preds = %962
  %968 = load i64, i64* %11, align 8
  %969 = call i32 @TREE_OVERFLOW(i64 %968)
  %970 = icmp ne i32 %969, 0
  br i1 %970, label %983, label %971

971:                                              ; preds = %967
  %972 = load i32, i32* %6, align 4
  %973 = load i64, i64* %7, align 8
  %974 = load i64, i64* %10, align 8
  %975 = load i64, i64* %11, align 8
  %976 = call i64 @fold_div_compare(i32 %972, i64 %973, i64 %974, i64 %975)
  store i64 %976, i64* %12, align 8
  %977 = load i64, i64* %12, align 8
  %978 = load i64, i64* @NULL_TREE, align 8
  %979 = icmp ne i64 %977, %978
  br i1 %979, label %980, label %982

980:                                              ; preds = %971
  %981 = load i64, i64* %12, align 8
  store i64 %981, i64* %5, align 8
  br label %985

982:                                              ; preds = %971
  br label %983

983:                                              ; preds = %982, %967, %962, %957, %951, %946, %941
  %984 = load i64, i64* @NULL_TREE, align 8
  store i64 %984, i64* %5, align 8
  br label %985

985:                                              ; preds = %983, %980, %923, %883, %876, %868, %857, %731, %713, %710, %695, %674, %642, %632, %602, %573, %463, %428, %391, %343, %324, %298, %282, %262, %242, %207, %148, %67, %60
  %986 = load i64, i64* %5, align 8
  ret i64 %986
}

declare dso_local i32 @STRIP_SIGN_NOPS(i64) #1

declare dso_local i64 @fold_relational_const(i32, i64, i64, i64) #1

declare dso_local i64 @tree_swap_operands_p(i64, i64, i32) #1

declare dso_local i64 @fold_build2(i32, i64, i64, i64) #1

declare dso_local i32 @swap_tree_comparison(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @TYPE_OVERFLOW_UNDEFINED(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @fold_overflow_warning(i8*, i32) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i32 @TYPE_OVERFLOW_TRAPS(i64) #1

declare dso_local i64 @extract_array_ref(i64, i64*, i64*) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @signed_type_for(i32) #1

declare dso_local i64 @build_int_cst(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @FLOAT_TYPE_P(i64) #1

declare dso_local i64 @strip_float_extensions(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i32 @TREE_REAL_CST(i64) #1

declare dso_local i64 @build_real(i64, i32) #1

declare dso_local i32 @REAL_VALUE_NEGATE(i32) #1

declare dso_local i64 @REAL_VALUE_MINUS_ZERO(i32) #1

declare dso_local i64 @REAL_VALUE_ISNAN(i32) #1

declare dso_local i32 @HONOR_SNANS(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @omit_one_operand(i64, i64, i64) #1

declare dso_local i64 @REAL_VALUE_ISINF(i32) #1

declare dso_local i64 @fold_inf_compare(i32, i64, i64, i64) #1

declare dso_local i64 @const_binop(i64, i64, i64, i32) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i32 @builtin_mathfn_code(i64) #1

declare dso_local i64 @fold_mathfn_compare(i32, i32, i64, i64, i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @DECL_BIT_FIELD(i64) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @DECL_SIZE(i64) #1

declare dso_local i64 @tree_low_cst(i32, i32) #1

declare dso_local i64 @fold_widened_comparison(i32, i64, i64, i64) #1

declare dso_local i64 @fold_sign_changed_comparison(i32, i64, i64, i64) #1

declare dso_local i64 @optimize_minmax_comparison(i32, i64, i64, i64) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i64 @constant_boolean_node(i32, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @twoval_comparison_p(i64, i64*, i64*, i32*) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @eval_subst(i64, i64, i64, i64, i64) #1

declare dso_local i32 @integer_onep(i64) #1

declare dso_local i64 @save_expr(i64) #1

declare dso_local i64 @build_fold_addr_expr(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @fold_div_compare(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
