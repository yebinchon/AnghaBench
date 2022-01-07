; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_cond_expr_with_comparison.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_fold_cond_expr_with_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)* }

@NEGATE_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@flag_trapping_math = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ABS_EXPR = common dso_local global i32 0, align 4
@tcc_comparison = common dso_local global i32 0, align 4
@in_gimple_form = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"GNU Objective-C++\00", align 1
@MIN_EXPR = common dso_local global i32 0, align 4
@MAX_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i32 0, align 4
@OEP_ONLY_CONST = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i64 0, align 8
@integer_one_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fold_cond_expr_with_comparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_cond_expr_with_comparison(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 1)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @TREE_TYPE(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @STRIP_NOPS(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @STRIP_NOPS(i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @TREE_TYPE(i32 %31)
  %33 = call i64 @FLOAT_TYPE_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @real_zerop(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %156

39:                                               ; preds = %4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @integer_zerop(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %156

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @NEGATE_EXPR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 0)
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @operand_equal_p(i32 %50, i32 %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @TREE_CODE(i32 %55)
  %57 = load i64, i64* @MINUS_EXPR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %156

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @TREE_CODE(i32 %60)
  %62 = load i64, i64* @MINUS_EXPR, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %156

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 0)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @TREE_OPERAND(i32 %67, i32 1)
  %69 = call i64 @operand_equal_p(i32 %66, i32 %68, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %156

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TREE_OPERAND(i32 %72, i32 1)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @TREE_OPERAND(i32 %74, i32 0)
  %76 = call i64 @operand_equal_p(i32 %73, i32 %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %71, %48
  %79 = load i32, i32* %10, align 4
  switch i32 %79, label %148 [
    i32 139, label %80
    i32 132, label %80
    i32 133, label %89
    i32 135, label %89
    i32 131, label %94
    i32 130, label %94
    i32 138, label %99
    i32 137, label %99
    i32 129, label %121
    i32 128, label %121
    i32 136, label %126
    i32 134, label %126
  ]

80:                                               ; preds = %78, %78
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @fold_convert(i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @negate_expr(i32 %85)
  %87 = call i32 @fold_convert(i32 %84, i32 %86)
  %88 = call i32 @pedantic_non_lvalue(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %465

89:                                               ; preds = %78, %78
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @fold_convert(i32 %90, i32 %91)
  %93 = call i32 @pedantic_non_lvalue(i32 %92)
  store i32 %93, i32* %5, align 4
  br label %465

94:                                               ; preds = %78, %78
  %95 = load i32, i32* @flag_trapping_math, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %155

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %78, %78, %98
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @TREE_TYPE(i32 %100)
  %102 = call i32 @TYPE_UNSIGNED(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 1, i32 0), align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @TREE_TYPE(i32 %106)
  %108 = call i32 %105(i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @fold_convert(i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* @ABS_EXPR, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @TREE_TYPE(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @fold_build1(i32 %112, i32 %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @fold_convert(i32 %117, i32 %118)
  %120 = call i32 @pedantic_non_lvalue(i32 %119)
  store i32 %120, i32* %5, align 4
  br label %465

121:                                              ; preds = %78, %78
  %122 = load i32, i32* @flag_trapping_math, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %155

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %78, %78, %125
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @TREE_TYPE(i32 %127)
  %129 = call i32 @TYPE_UNSIGNED(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 1, i32 0), align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @TREE_TYPE(i32 %133)
  %135 = call i32 %132(i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @fold_convert(i32 %135, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %131, %126
  %139 = load i32, i32* @ABS_EXPR, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @TREE_TYPE(i32 %140)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @fold_build1(i32 %139, i32 %141, i32 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @fold_convert(i32 %144, i32 %145)
  %147 = call i32 @negate_expr(i32 %146)
  store i32 %147, i32* %5, align 4
  br label %465

148:                                              ; preds = %78
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @TREE_CODE_CLASS(i32 %149)
  %151 = load i32, i32* @tcc_comparison, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @gcc_assert(i32 %153)
  br label %155

155:                                              ; preds = %148, %124, %97
  br label %156

156:                                              ; preds = %155, %71, %64, %59, %54, %39, %35
  %157 = load i32, i32* %12, align 4
  %158 = call i64 @integer_zerop(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = call i64 @integer_zerop(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, 133
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @fold_convert(i32 %168, i32 %169)
  %171 = call i32 @pedantic_non_lvalue(i32 %170)
  store i32 %171, i32* %5, align 4
  br label %465

172:                                              ; preds = %164
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 139
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @build_int_cst(i32 %176, i32 0)
  store i32 %177, i32* %5, align 4
  br label %465

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %160, %156
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i64 @operand_equal_for_comparison_p(i32 %181, i32 %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %337

186:                                              ; preds = %180
  %187 = load i64, i64* @in_gimple_form, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0), align 8
  %191 = call i64 @strcmp(i32 %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0), align 8
  %195 = call i64 @strcmp(i32 %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @maybe_lvalue_p(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @maybe_lvalue_p(i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %337, label %205

205:                                              ; preds = %201, %197, %193, %186
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @TREE_TYPE(i32 %208)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = call i64 @TYPE_MAIN_VARIANT(i32 %210)
  %212 = load i32, i32* %6, align 4
  %213 = call i64 @TYPE_MAIN_VARIANT(i32 %212)
  %214 = icmp eq i64 %211, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load i32, i32* %6, align 4
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %215, %205
  %220 = load i32, i32* %10, align 4
  switch i32 %220, label %329 [
    i32 139, label %221
    i32 133, label %226
    i32 136, label %231
    i32 134, label %231
    i32 129, label %231
    i32 128, label %231
    i32 138, label %268
    i32 137, label %268
    i32 131, label %268
    i32 130, label %268
    i32 132, label %305
    i32 135, label %317
  ]

221:                                              ; preds = %219
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @fold_convert(i32 %222, i32 %223)
  %225 = call i32 @pedantic_non_lvalue(i32 %224)
  store i32 %225, i32* %5, align 4
  br label %465

226:                                              ; preds = %219
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @fold_convert(i32 %227, i32 %228)
  %230 = call i32 @pedantic_non_lvalue(i32 %229)
  store i32 %230, i32* %5, align 4
  br label %465

231:                                              ; preds = %219, %219, %219, %219
  %232 = load i32, i32* %8, align 4
  %233 = call i32 @TREE_TYPE(i32 %232)
  %234 = call i32 @TYPE_MODE(i32 %233)
  %235 = call i32 @HONOR_NANS(i32 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %267, label %237

237:                                              ; preds = %231
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @fold_convert(i32 %238, i32 %239)
  store i32 %240, i32* %15, align 4
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %16, align 4
  %243 = call i32 @fold_convert(i32 %241, i32 %242)
  store i32 %243, i32* %16, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 136
  br i1 %245, label %249, label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %10, align 4
  %248 = icmp eq i32 %247, 129
  br i1 %248, label %249, label %255

249:                                              ; preds = %246, %237
  %250 = load i32, i32* @MIN_EXPR, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %16, align 4
  %254 = call i32 @fold_build2(i32 %250, i32 %251, i32 %252, i32 %253)
  br label %261

255:                                              ; preds = %246
  %256 = load i32, i32* @MIN_EXPR, align 4
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @fold_build2(i32 %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %255, %249
  %262 = phi i32 [ %254, %249 ], [ %260, %255 ]
  store i32 %262, i32* %14, align 4
  %263 = load i32, i32* %6, align 4
  %264 = load i32, i32* %14, align 4
  %265 = call i32 @fold_convert(i32 %263, i32 %264)
  %266 = call i32 @pedantic_non_lvalue(i32 %265)
  store i32 %266, i32* %5, align 4
  br label %465

267:                                              ; preds = %231
  br label %336

268:                                              ; preds = %219, %219, %219, %219
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @TREE_TYPE(i32 %269)
  %271 = call i32 @TYPE_MODE(i32 %270)
  %272 = call i32 @HONOR_NANS(i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %304, label %274

274:                                              ; preds = %268
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @fold_convert(i32 %275, i32 %276)
  store i32 %277, i32* %15, align 4
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %16, align 4
  %280 = call i32 @fold_convert(i32 %278, i32 %279)
  store i32 %280, i32* %16, align 4
  %281 = load i32, i32* %10, align 4
  %282 = icmp eq i32 %281, 138
  br i1 %282, label %286, label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %10, align 4
  %285 = icmp eq i32 %284, 131
  br i1 %285, label %286, label %292

286:                                              ; preds = %283, %274
  %287 = load i32, i32* @MAX_EXPR, align 4
  %288 = load i32, i32* %17, align 4
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %16, align 4
  %291 = call i32 @fold_build2(i32 %287, i32 %288, i32 %289, i32 %290)
  br label %298

292:                                              ; preds = %283
  %293 = load i32, i32* @MAX_EXPR, align 4
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %16, align 4
  %296 = load i32, i32* %15, align 4
  %297 = call i32 @fold_build2(i32 %293, i32 %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %292, %286
  %299 = phi i32 [ %291, %286 ], [ %297, %292 ]
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @fold_convert(i32 %300, i32 %301)
  %303 = call i32 @pedantic_non_lvalue(i32 %302)
  store i32 %303, i32* %5, align 4
  br label %465

304:                                              ; preds = %268
  br label %336

305:                                              ; preds = %219
  %306 = load i32, i32* %8, align 4
  %307 = call i32 @TREE_TYPE(i32 %306)
  %308 = call i32 @TYPE_MODE(i32 %307)
  %309 = call i32 @HONOR_NANS(i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %305
  %312 = load i32, i32* %6, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @fold_convert(i32 %312, i32 %313)
  %315 = call i32 @pedantic_non_lvalue(i32 %314)
  store i32 %315, i32* %5, align 4
  br label %465

316:                                              ; preds = %305
  br label %336

317:                                              ; preds = %219
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @TREE_TYPE(i32 %318)
  %320 = call i32 @TYPE_MODE(i32 %319)
  %321 = call i32 @HONOR_NANS(i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %317
  %324 = load i32, i32* %6, align 4
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @fold_convert(i32 %324, i32 %325)
  %327 = call i32 @pedantic_non_lvalue(i32 %326)
  store i32 %327, i32* %5, align 4
  br label %465

328:                                              ; preds = %317
  br label %336

329:                                              ; preds = %219
  %330 = load i32, i32* %10, align 4
  %331 = call i32 @TREE_CODE_CLASS(i32 %330)
  %332 = load i32, i32* @tcc_comparison, align 4
  %333 = icmp eq i32 %331, %332
  %334 = zext i1 %333 to i32
  %335 = call i32 @gcc_assert(i32 %334)
  br label %336

336:                                              ; preds = %329, %328, %316, %304, %267
  br label %337

337:                                              ; preds = %336, %201, %180
  %338 = load i32, i32* %6, align 4
  %339 = call i64 @INTEGRAL_TYPE_P(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %463

341:                                              ; preds = %337
  %342 = load i32, i32* %12, align 4
  %343 = call i64 @TREE_CODE(i32 %342)
  %344 = load i64, i64* @INTEGER_CST, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %463

346:                                              ; preds = %341
  %347 = load i32, i32* %9, align 4
  %348 = call i64 @TREE_CODE(i32 %347)
  %349 = load i64, i64* @INTEGER_CST, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %463

351:                                              ; preds = %346
  %352 = load i32, i32* %10, align 4
  switch i32 %352, label %460 [
    i32 139, label %353
    i32 134, label %363
    i32 136, label %387
    i32 137, label %411
    i32 138, label %435
    i32 133, label %459
  ]

353:                                              ; preds = %351
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @fold_convert(i32 %354, i32 %355)
  store i32 %356, i32* %8, align 4
  %357 = load i32, i32* @COND_EXPR, align 4
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* %9, align 4
  %362 = call i32 @fold_build3(i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %5, align 4
  br label %465

363:                                              ; preds = %351
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %6, align 4
  %366 = call i32 @TYPE_MAX_VALUE(i32 %365)
  %367 = load i32, i32* @OEP_ONLY_CONST, align 4
  %368 = call i64 @operand_equal_p(i32 %364, i32 %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %386, label %370

370:                                              ; preds = %363
  %371 = load i32, i32* %12, align 4
  %372 = load i64, i64* @PLUS_EXPR, align 8
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* @integer_one_node, align 4
  %375 = call i32 @const_binop(i64 %372, i32 %373, i32 %374, i32 0)
  %376 = load i32, i32* @OEP_ONLY_CONST, align 4
  %377 = call i64 @operand_equal_p(i32 %371, i32 %375, i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %386

379:                                              ; preds = %370
  %380 = load i32, i32* @MIN_EXPR, align 4
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @fold_build2(i32 %380, i32 %381, i32 %382, i32 %383)
  %385 = call i32 @pedantic_non_lvalue(i32 %384)
  store i32 %385, i32* %5, align 4
  br label %465

386:                                              ; preds = %370, %363
  br label %462

387:                                              ; preds = %351
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* %6, align 4
  %390 = call i32 @TYPE_MIN_VALUE(i32 %389)
  %391 = load i32, i32* @OEP_ONLY_CONST, align 4
  %392 = call i64 @operand_equal_p(i32 %388, i32 %390, i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %410, label %394

394:                                              ; preds = %387
  %395 = load i32, i32* %12, align 4
  %396 = load i64, i64* @MINUS_EXPR, align 8
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @integer_one_node, align 4
  %399 = call i32 @const_binop(i64 %396, i32 %397, i32 %398, i32 0)
  %400 = load i32, i32* @OEP_ONLY_CONST, align 4
  %401 = call i64 @operand_equal_p(i32 %395, i32 %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %394
  %404 = load i32, i32* @MIN_EXPR, align 4
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* %9, align 4
  %408 = call i32 @fold_build2(i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = call i32 @pedantic_non_lvalue(i32 %408)
  store i32 %409, i32* %5, align 4
  br label %465

410:                                              ; preds = %394, %387
  br label %462

411:                                              ; preds = %351
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* %6, align 4
  %414 = call i32 @TYPE_MIN_VALUE(i32 %413)
  %415 = load i32, i32* @OEP_ONLY_CONST, align 4
  %416 = call i64 @operand_equal_p(i32 %412, i32 %414, i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %434, label %418

418:                                              ; preds = %411
  %419 = load i32, i32* %12, align 4
  %420 = load i64, i64* @MINUS_EXPR, align 8
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* @integer_one_node, align 4
  %423 = call i32 @const_binop(i64 %420, i32 %421, i32 %422, i32 0)
  %424 = load i32, i32* @OEP_ONLY_CONST, align 4
  %425 = call i64 @operand_equal_p(i32 %419, i32 %423, i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %434

427:                                              ; preds = %418
  %428 = load i32, i32* @MAX_EXPR, align 4
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* %9, align 4
  %432 = call i32 @fold_build2(i32 %428, i32 %429, i32 %430, i32 %431)
  %433 = call i32 @pedantic_non_lvalue(i32 %432)
  store i32 %433, i32* %5, align 4
  br label %465

434:                                              ; preds = %418, %411
  br label %462

435:                                              ; preds = %351
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* %6, align 4
  %438 = call i32 @TYPE_MAX_VALUE(i32 %437)
  %439 = load i32, i32* @OEP_ONLY_CONST, align 4
  %440 = call i64 @operand_equal_p(i32 %436, i32 %438, i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %458, label %442

442:                                              ; preds = %435
  %443 = load i32, i32* %12, align 4
  %444 = load i64, i64* @PLUS_EXPR, align 8
  %445 = load i32, i32* %9, align 4
  %446 = load i32, i32* @integer_one_node, align 4
  %447 = call i32 @const_binop(i64 %444, i32 %445, i32 %446, i32 0)
  %448 = load i32, i32* @OEP_ONLY_CONST, align 4
  %449 = call i64 @operand_equal_p(i32 %443, i32 %447, i32 %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %458

451:                                              ; preds = %442
  %452 = load i32, i32* @MAX_EXPR, align 4
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @fold_build2(i32 %452, i32 %453, i32 %454, i32 %455)
  %457 = call i32 @pedantic_non_lvalue(i32 %456)
  store i32 %457, i32* %5, align 4
  br label %465

458:                                              ; preds = %442, %435
  br label %462

459:                                              ; preds = %351
  br label %462

460:                                              ; preds = %351
  %461 = call i32 (...) @gcc_unreachable()
  br label %462

462:                                              ; preds = %460, %459, %458, %434, %410, %386
  br label %463

463:                                              ; preds = %462, %346, %341, %337
  %464 = load i32, i32* @NULL_TREE, align 4
  store i32 %464, i32* %5, align 4
  br label %465

465:                                              ; preds = %463, %451, %427, %403, %379, %353, %323, %311, %298, %261, %226, %221, %175, %167, %138, %111, %89, %80
  %466 = load i32, i32* %5, align 4
  ret i32 %466
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i64 @FLOAT_TYPE_P(i32) #1

declare dso_local i64 @real_zerop(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @operand_equal_p(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @pedantic_non_lvalue(i32) #1

declare dso_local i32 @negate_expr(i32) #1

declare dso_local i32 @TYPE_UNSIGNED(i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TREE_CODE_CLASS(i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i64 @operand_equal_for_comparison_p(i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @maybe_lvalue_p(i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @HONOR_NANS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @fold_build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_MAX_VALUE(i32) #1

declare dso_local i32 @const_binop(i64, i32, i32, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
