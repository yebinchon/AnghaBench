; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_forward_propagate_into_cond_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-forwprop.c_forward_propagate_into_cond_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@boolean_type_node = common dso_local global i32 0, align 4
@TRUTH_NOT_EXPR = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i32 0, align 4
@NOP_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@BOOLEAN_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @forward_propagate_into_cond_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_propagate_into_cond_1(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
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
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %22 = load i32, i32* @NULL_TREE, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_CODE(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @NULL_TREE, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SSA_NAME, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EQ_EXPR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @NE_EXPR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @TREE_OPERAND(i32 %38, i32 0)
  %40 = call i32 @TREE_CODE(i32 %39)
  %41 = load i32, i32* @SSA_NAME, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @TREE_OPERAND(i32 %44, i32 1)
  %46 = call i64 @CONSTANT_CLASS_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 1)
  %51 = call i32 @TREE_TYPE(i32 %50)
  %52 = call i64 @INTEGRAL_TYPE_P(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48, %43, %37, %33
  %55 = load i32, i32* @NULL_TREE, align 4
  store i32 %55, i32* %3, align 4
  br label %447

56:                                               ; preds = %48, %2
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SSA_NAME, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %8, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @TREE_OPERAND(i32 %63, i32 0)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @SSA_NAME_DEF_STMT(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @TREE_CODE(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @MODIFY_EXPR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @NULL_TREE, align 4
  store i32 %74, i32* %3, align 4
  br label %447

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @TREE_OPERAND(i32 %76, i32 1)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @TREE_CODE(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PLUS_EXPR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @TREE_CODE(i32 %84)
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @MINUS_EXPR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %149

89:                                               ; preds = %83, %75
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @TREE_OPERAND(i32 %90, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @TREE_OPERAND(i32 %92, i32 1)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @TREE_CODE(i32 %94)
  %96 = load i32, i32* @SSA_NAME, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @CONSTANT_CLASS_P(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @TREE_TYPE(i32 %103)
  %105 = call i64 @INTEGRAL_TYPE_P(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102, %98, %89
  %108 = load i32, i32* @NULL_TREE, align 4
  store i32 %108, i32* %3, align 4
  br label %447

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @NULL_TREE, align 4
  store i32 %114, i32* %3, align 4
  br label %447

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @has_single_use(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @TREE_CODE(i32 %120)
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @PLUS_EXPR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i64, i64* @MINUS_EXPR, align 8
  br label %129

127:                                              ; preds = %119
  %128 = load i64, i64* @PLUS_EXPR, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @TREE_OPERAND(i32 %133, i32 1)
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @int_const_binop(i32 %132, i32 %134, i32 %135, i32 0)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @is_gimple_val(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  %141 = load i32, i32* @NULL_TREE, align 4
  store i32 %141, i32* %3, align 4
  br label %447

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @boolean_type_node, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @build2(i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %142, %115
  br label %443

149:                                              ; preds = %83
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @TREE_CODE(i32 %150)
  %152 = load i32, i32* @SSA_NAME, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %164, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @TREE_OPERAND(i32 %155, i32 1)
  %157 = call i64 @integer_zerop(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @TREE_OPERAND(i32 %160, i32 1)
  %162 = call i64 @integer_onep(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %442

164:                                              ; preds = %159, %154, %149
  %165 = load i32, i32* %10, align 4
  %166 = call i64 @COMPARISON_CLASS_P(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %258

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @TREE_OPERAND(i32 %169, i32 0)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @TREE_OPERAND(i32 %171, i32 1)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @TREE_CODE(i32 %173)
  %175 = load i32, i32* @SSA_NAME, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @is_gimple_min_invariant(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %177, %168
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @TREE_CODE(i32 %182)
  %184 = load i32, i32* @SSA_NAME, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @is_gimple_min_invariant(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %186, %177
  %191 = load i32, i32* @NULL_TREE, align 4
  store i32 %191, i32* %3, align 4
  br label %447

192:                                              ; preds = %186, %181
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @TREE_CODE(i32 %193)
  %195 = load i32, i32* @SSA_NAME, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32, i32* %15, align 4
  %199 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = load i32, i32* @NULL_TREE, align 4
  store i32 %202, i32* %3, align 4
  br label %447

203:                                              ; preds = %197, %192
  %204 = load i32, i32* %16, align 4
  %205 = call i32 @TREE_CODE(i32 %204)
  %206 = load i32, i32* @SSA_NAME, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i32, i32* %16, align 4
  %210 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @NULL_TREE, align 4
  store i32 %213, i32* %3, align 4
  br label %447

214:                                              ; preds = %208, %203
  %215 = load i32, i32* %8, align 4
  %216 = call i64 @has_single_use(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %257

218:                                              ; preds = %214
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @TREE_CODE(i32 %219)
  %221 = load i32, i32* @boolean_type_node, align 4
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @build2(i32 %220, i32 %221, i32 %222, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @EQ_EXPR, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %218
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @TREE_OPERAND(i32 %229, i32 1)
  %231 = call i64 @integer_zerop(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %228, %218
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @NE_EXPR, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %233
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @TREE_OPERAND(i32 %238, i32 1)
  %240 = call i64 @integer_onep(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %237, %228
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @invert_truthvalue(i32 %243)
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = call i64 @COMPARISON_CLASS_P(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @TREE_CODE(i32 %249)
  %251 = load i32, i32* @SSA_NAME, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @NULL_TREE, align 4
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %253, %248, %242
  br label %256

256:                                              ; preds = %255, %237, %233
  br label %257

257:                                              ; preds = %256, %214
  br label %441

258:                                              ; preds = %164
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @TREE_CODE(i32 %259)
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* @TRUTH_NOT_EXPR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %323

264:                                              ; preds = %258
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @TREE_OPERAND(i32 %265, i32 0)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i32 @TREE_CODE(i32 %267)
  %269 = load i32, i32* @SSA_NAME, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @is_gimple_min_invariant(i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %271
  %276 = load i32, i32* @NULL_TREE, align 4
  store i32 %276, i32* %3, align 4
  br label %447

277:                                              ; preds = %271, %264
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @TREE_CODE(i32 %278)
  %280 = load i32, i32* @SSA_NAME, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load i32, i32* %10, align 4
  %284 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %282
  %287 = load i32, i32* @NULL_TREE, align 4
  store i32 %287, i32* %3, align 4
  br label %447

288:                                              ; preds = %282, %277
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @SSA_NAME, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %310, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @NE_EXPR, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = load i32, i32* %4, align 4
  %298 = call i32 @TREE_OPERAND(i32 %297, i32 1)
  %299 = call i64 @integer_zerop(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %296, %292
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @EQ_EXPR, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %301
  %306 = load i32, i32* %4, align 4
  %307 = call i32 @TREE_OPERAND(i32 %306, i32 1)
  %308 = call i64 @integer_onep(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %305, %296, %288
  %311 = load i32, i32* @EQ_EXPR, align 4
  store i32 %311, i32* %17, align 4
  br label %314

312:                                              ; preds = %305, %301
  %313 = load i32, i32* @NE_EXPR, align 4
  store i32 %313, i32* %17, align 4
  br label %314

314:                                              ; preds = %312, %310
  %315 = load i32, i32* %17, align 4
  %316 = load i32, i32* @boolean_type_node, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @TREE_TYPE(i32 %318)
  %320 = load i32, i32* @integer_zero_node, align 4
  %321 = call i32 @fold_convert(i32 %319, i32 %320)
  %322 = call i32 @build2(i32 %315, i32 %316, i32 %317, i32 %321)
  store i32 %322, i32* %6, align 4
  br label %440

323:                                              ; preds = %258
  %324 = load i32, i32* %10, align 4
  %325 = call i32 @TREE_CODE(i32 %324)
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* @NOP_EXPR, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %335, label %329

329:                                              ; preds = %323
  %330 = load i32, i32* %10, align 4
  %331 = call i32 @TREE_CODE(i32 %330)
  %332 = sext i32 %331 to i64
  %333 = load i64, i64* @CONVERT_EXPR, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %439

335:                                              ; preds = %329, %323
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @TREE_TYPE(i32 %336)
  store i32 %337, i32* %18, align 4
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @TREE_OPERAND(i32 %338, i32 0)
  %340 = call i32 @TREE_TYPE(i32 %339)
  store i32 %340, i32* %19, align 4
  %341 = load i32, i32* %18, align 4
  %342 = call i32 @TREE_CODE(i32 %341)
  %343 = sext i32 %342 to i64
  %344 = load i64, i64* @BOOLEAN_TYPE, align 8
  %345 = icmp eq i64 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %335
  %347 = load i32, i32* %19, align 4
  %348 = call i64 @INTEGRAL_TYPE_P(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %360, label %350

350:                                              ; preds = %346, %335
  %351 = load i32, i32* %19, align 4
  %352 = call i32 @TREE_CODE(i32 %351)
  %353 = sext i32 %352 to i64
  %354 = load i64, i64* @BOOLEAN_TYPE, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %361

356:                                              ; preds = %350
  %357 = load i32, i32* %18, align 4
  %358 = call i64 @INTEGRAL_TYPE_P(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %356, %346
  br label %384

361:                                              ; preds = %356, %350
  %362 = load i32, i32* %18, align 4
  %363 = call i64 @INTEGRAL_TYPE_P(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %361
  %366 = load i32, i32* %19, align 4
  %367 = call i64 @INTEGRAL_TYPE_P(i32 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %381

369:                                              ; preds = %365
  %370 = load i32, i32* %10, align 4
  %371 = call i32 @TREE_OPERAND(i32 %370, i32 0)
  %372 = call i32 @TREE_CODE(i32 %371)
  %373 = load i32, i32* @SSA_NAME, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %381

375:                                              ; preds = %369
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @TREE_OPERAND(i32 %376, i32 0)
  %378 = call i64 @ssa_name_defined_by_comparison_p(i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %375
  br label %383

381:                                              ; preds = %375, %369, %365, %361
  %382 = load i32, i32* @NULL_TREE, align 4
  store i32 %382, i32* %3, align 4
  br label %447

383:                                              ; preds = %380
  br label %384

384:                                              ; preds = %383, %360
  %385 = load i32, i32* %10, align 4
  %386 = call i32 @TREE_OPERAND(i32 %385, i32 0)
  %387 = call i32 @TREE_CODE(i32 %386)
  %388 = load i32, i32* @SSA_NAME, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %397

390:                                              ; preds = %384
  %391 = load i32, i32* %10, align 4
  %392 = call i32 @TREE_OPERAND(i32 %391, i32 0)
  %393 = call i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load i32, i32* @NULL_TREE, align 4
  store i32 %396, i32* %3, align 4
  br label %447

397:                                              ; preds = %390, %384
  %398 = load i32, i32* %8, align 4
  %399 = call i64 @has_single_use(i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %438

401:                                              ; preds = %397
  %402 = load i32, i32* %7, align 4
  %403 = load i32, i32* @SSA_NAME, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %423, label %405

405:                                              ; preds = %401
  %406 = load i32, i32* %7, align 4
  %407 = load i32, i32* @NE_EXPR, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %405
  %410 = load i32, i32* %4, align 4
  %411 = call i32 @TREE_OPERAND(i32 %410, i32 1)
  %412 = call i64 @integer_zerop(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %409, %405
  %415 = load i32, i32* %7, align 4
  %416 = load i32, i32* @EQ_EXPR, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %425

418:                                              ; preds = %414
  %419 = load i32, i32* %4, align 4
  %420 = call i32 @TREE_OPERAND(i32 %419, i32 1)
  %421 = call i64 @integer_onep(i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %418, %409, %401
  %424 = load i32, i32* @NE_EXPR, align 4
  store i32 %424, i32* %20, align 4
  br label %427

425:                                              ; preds = %418, %414
  %426 = load i32, i32* @EQ_EXPR, align 4
  store i32 %426, i32* %20, align 4
  br label %427

427:                                              ; preds = %425, %423
  %428 = load i32, i32* %10, align 4
  %429 = call i32 @TREE_OPERAND(i32 %428, i32 0)
  store i32 %429, i32* %21, align 4
  %430 = load i32, i32* %20, align 4
  %431 = load i32, i32* @boolean_type_node, align 4
  %432 = load i32, i32* %21, align 4
  %433 = load i32, i32* %21, align 4
  %434 = call i32 @TREE_TYPE(i32 %433)
  %435 = load i32, i32* @integer_zero_node, align 4
  %436 = call i32 @fold_convert(i32 %434, i32 %435)
  %437 = call i32 @build2(i32 %430, i32 %431, i32 %432, i32 %436)
  store i32 %437, i32* %6, align 4
  br label %438

438:                                              ; preds = %427, %397
  br label %439

439:                                              ; preds = %438, %329
  br label %440

440:                                              ; preds = %439, %314
  br label %441

441:                                              ; preds = %440, %257
  br label %442

442:                                              ; preds = %441, %159
  br label %443

443:                                              ; preds = %442, %148
  %444 = load i32, i32* %8, align 4
  %445 = load i32*, i32** %5, align 8
  store i32 %444, i32* %445, align 4
  %446 = load i32, i32* %6, align 4
  store i32 %446, i32* %3, align 4
  br label %447

447:                                              ; preds = %443, %395, %381, %286, %275, %212, %201, %190, %140, %113, %107, %73, %54
  %448 = load i32, i32* %3, align 4
  ret i32 %448
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @CONSTANT_CLASS_P(i32) #1

declare dso_local i64 @INTEGRAL_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i64 @SSA_NAME_OCCURS_IN_ABNORMAL_PHI(i32) #1

declare dso_local i64 @has_single_use(i32) #1

declare dso_local i32 @int_const_binop(i32, i32, i32, i32) #1

declare dso_local i32 @is_gimple_val(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i64 @integer_onep(i32) #1

declare dso_local i64 @COMPARISON_CLASS_P(i32) #1

declare dso_local i32 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @invert_truthvalue(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i64 @ssa_name_defined_by_comparison_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
