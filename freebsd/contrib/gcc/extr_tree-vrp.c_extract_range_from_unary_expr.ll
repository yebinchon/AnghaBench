; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_unary_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_extract_range_from_unary_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32*, i32*, i32, i32 }

@VR_UNDEFINED = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@FIX_TRUNC_EXPR = common dso_local global i32 0, align 4
@FIX_CEIL_EXPR = common dso_local global i32 0, align 4
@FIX_FLOOR_EXPR = common dso_local global i32 0, align 4
@FIX_ROUND_EXPR = common dso_local global i32 0, align 4
@FLOAT_EXPR = common dso_local global i32 0, align 4
@BIT_NOT_EXPR = common dso_local global i32 0, align 4
@NON_LVALUE_EXPR = common dso_local global i32 0, align 4
@CONJ_EXPR = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@VR_VARYING = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i32 0, align 4
@CONVERT_EXPR = common dso_local global i32 0, align 4
@VR_RANGE = common dso_local global i64 0, align 8
@NEGATE_EXPR = common dso_local global i32 0, align 4
@ABS_EXPR = common dso_local global i32 0, align 4
@VR_ANTI_RANGE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64)* @extract_range_from_unary_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_range_from_unary_expr(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TREE_CODE(i64 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %24 = load i64, i64* @VR_UNDEFINED, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %26 = load i32, i32* @NULL_TREE, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %29 = load i32, i32* @NULL_TREE, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 7
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @FIX_TRUNC_EXPR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %67, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FIX_CEIL_EXPR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FIX_FLOOR_EXPR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @FIX_ROUND_EXPR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @FLOAT_EXPR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @BIT_NOT_EXPR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NON_LVALUE_EXPR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @CONJ_EXPR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %59, %55, %51, %47, %43, %39, %2
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %68)
  br label %825

70:                                               ; preds = %63
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @TREE_OPERAND(i64 %71, i32 0)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @TREE_CODE(i64 %73)
  %75 = load i64, i64* @SSA_NAME, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.TYPE_15__* @get_value_range(i64 %78)
  %80 = bitcast %struct.TYPE_15__* %10 to i8*
  %81 = bitcast %struct.TYPE_15__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 56, i1 false)
  br label %92

82:                                               ; preds = %70
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @is_gimple_min_invariant(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @set_value_range_to_value(%struct.TYPE_15__* %10, i64 %87, i32* null)
  br label %91

89:                                               ; preds = %82
  %90 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %10)
  br label %91

91:                                               ; preds = %89, %86
  br label %92

92:                                               ; preds = %91, %77
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VR_UNDEFINED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = call i32 @set_value_range_to_undefined(%struct.TYPE_15__* %98)
  br label %825

100:                                              ; preds = %92
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @TREE_TYPE(i64 %101)
  %103 = call i32 @INTEGRAL_TYPE_P(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* %8, align 8
  %107 = call i64 @TREE_TYPE(i64 %106)
  %108 = call i64 @POINTER_TYPE_P(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105, %100
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VR_VARYING, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = call i64 @symbolic_range_p(%struct.TYPE_15__* %10)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115, %105
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %119)
  br label %825

121:                                              ; preds = %115, %110
  %122 = load i64, i64* %4, align 8
  %123 = call i64 @TREE_TYPE(i64 %122)
  %124 = call i64 @POINTER_TYPE_P(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i64, i64* %8, align 8
  %128 = call i64 @TREE_TYPE(i64 %127)
  %129 = call i64 @POINTER_TYPE_P(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %126, %121
  store i32 0, i32* %11, align 4
  %132 = call i64 @range_is_nonnull(%struct.TYPE_15__* %10)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %4, align 8
  %136 = call i64 @tree_expr_nonzero_warnv_p(i64 %135, i32* %11)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %138, %131
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = load i64, i64* %4, align 8
  %144 = call i64 @TREE_TYPE(i64 %143)
  %145 = call i32 @set_value_range_to_nonnull(%struct.TYPE_15__* %142, i64 %144)
  br label %158

146:                                              ; preds = %138, %134
  %147 = call i64 @range_is_null(%struct.TYPE_15__* %10)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i64 @TREE_TYPE(i64 %151)
  %153 = call i32 @set_value_range_to_null(%struct.TYPE_15__* %150, i64 %152)
  br label %157

154:                                              ; preds = %146
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %155)
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %141
  br label %825

159:                                              ; preds = %126
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @NOP_EXPR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @CONVERT_EXPR, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %273

167:                                              ; preds = %163, %159
  %168 = load i64, i64* %8, align 8
  %169 = call i64 @TREE_TYPE(i64 %168)
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %4, align 8
  %171 = call i64 @TREE_TYPE(i64 %170)
  store i64 %171, i64* %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VR_RANGE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %167
  %177 = call i64 @overflow_infinity_range_p(%struct.TYPE_15__* %10)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176, %167
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VR_VARYING, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %257

184:                                              ; preds = %179
  %185 = load i64, i64* %13, align 8
  %186 = call i64 @TYPE_PRECISION(i64 %185)
  %187 = load i64, i64* %12, align 8
  %188 = call i64 @TYPE_PRECISION(i64 %187)
  %189 = icmp sgt i64 %186, %188
  br i1 %189, label %190, label %257

190:                                              ; preds = %184, %176
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @VR_RANGE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %17, align 8
  br label %205

200:                                              ; preds = %190
  %201 = load i64, i64* %12, align 8
  %202 = call i64 @TYPE_MIN_VALUE(i64 %201)
  store i64 %202, i64* %16, align 8
  %203 = load i64, i64* %12, align 8
  %204 = call i64 @TYPE_MAX_VALUE(i64 %203)
  store i64 %204, i64* %17, align 8
  br label %205

205:                                              ; preds = %200, %195
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* %16, align 8
  %208 = call i64 @fold_convert(i64 %206, i64 %207)
  store i64 %208, i64* %14, align 8
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %17, align 8
  %211 = call i64 @fold_convert(i64 %209, i64 %210)
  store i64 %211, i64* %15, align 8
  %212 = load i64, i64* %14, align 8
  %213 = call i64 @is_gimple_val(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %256

215:                                              ; preds = %205
  %216 = load i64, i64* %15, align 8
  %217 = call i64 @is_gimple_val(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %256

219:                                              ; preds = %215
  %220 = load i64, i64* %14, align 8
  %221 = load i64, i64* %16, align 8
  %222 = call i64 @tree_int_cst_equal(i64 %220, i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %256

224:                                              ; preds = %219
  %225 = load i64, i64* %15, align 8
  %226 = load i64, i64* %17, align 8
  %227 = call i64 @tree_int_cst_equal(i64 %225, i64 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %224
  %230 = load i64, i64* %14, align 8
  %231 = call i64 @is_overflow_infinity(i64 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i64, i64* %15, align 8
  %235 = call i64 @is_overflow_infinity(i64 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %256, label %237

237:                                              ; preds = %233, %229
  %238 = load i64, i64* %14, align 8
  %239 = load i64, i64* %15, align 8
  %240 = call i32 @compare_values(i64 %238, i64 %239)
  %241 = icmp sle i32 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %237
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %15, align 8
  %245 = call i32 @compare_values(i64 %243, i64 %244)
  %246 = icmp sge i32 %245, -1
  br i1 %246, label %247, label %256

247:                                              ; preds = %242
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %249 = load i64, i64* @VR_RANGE, align 8
  %250 = load i64, i64* %14, align 8
  %251 = load i64, i64* %15, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @set_value_range(%struct.TYPE_15__* %248, i64 %249, i64 %250, i64 %251, i32* %254)
  br label %825

256:                                              ; preds = %242, %237, %233, %224, %219, %215, %205
  br label %257

257:                                              ; preds = %256, %184, %179
  %258 = load i64, i64* %12, align 8
  %259 = call i64 @TYPE_SIZE(i64 %258)
  %260 = load i64, i64* %13, align 8
  %261 = call i64 @TYPE_SIZE(i64 %260)
  %262 = icmp ne i64 %259, %261
  br i1 %262, label %269, label %263

263:                                              ; preds = %257
  %264 = load i64, i64* %12, align 8
  %265 = call i64 @TYPE_PRECISION(i64 %264)
  %266 = load i64, i64* %13, align 8
  %267 = call i64 @TYPE_PRECISION(i64 %266)
  %268 = icmp ne i64 %265, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %263, %257
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %271 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %270)
  br label %825

272:                                              ; preds = %263
  br label %273

273:                                              ; preds = %272, %163
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @VR_VARYING, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %280 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %279)
  br label %825

281:                                              ; preds = %273
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* @NEGATE_EXPR, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %411

285:                                              ; preds = %281
  %286 = load i64, i64* %4, align 8
  %287 = call i64 @TREE_TYPE(i64 %286)
  %288 = call i64 @TYPE_UNSIGNED(i64 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %411, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @is_positive_overflow_infinity(i64 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %290
  %296 = load i64, i64* %4, align 8
  %297 = call i64 @TREE_TYPE(i64 %296)
  %298 = call i64 @negative_overflow_infinity(i64 %297)
  store i64 %298, i64* %6, align 8
  br label %355

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = call i64 @is_negative_overflow_infinity(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299
  %305 = load i64, i64* %4, align 8
  %306 = call i64 @TREE_TYPE(i64 %305)
  %307 = call i64 @positive_overflow_infinity(i64 %306)
  store i64 %307, i64* %6, align 8
  br label %354

308:                                              ; preds = %299
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = call i64 @vrp_val_is_min(i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* %5, align 4
  %315 = load i64, i64* %4, align 8
  %316 = call i64 @TREE_TYPE(i64 %315)
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @fold_unary_to_constant(i32 %314, i64 %316, i64 %318)
  store i64 %319, i64* %6, align 8
  br label %353

320:                                              ; preds = %308
  %321 = load i64, i64* %4, align 8
  %322 = call i64 @TREE_TYPE(i64 %321)
  %323 = call i64 @needs_overflow_infinity(i64 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %348

325:                                              ; preds = %320
  %326 = load i64, i64* %4, align 8
  %327 = call i64 @TREE_TYPE(i64 %326)
  %328 = call i64 @supports_overflow_infinity(i64 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %344

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @is_overflow_infinity(i64 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %344, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = call i64 @vrp_val_is_min(i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %335
  %341 = load i64, i64* %4, align 8
  %342 = call i64 @TREE_TYPE(i64 %341)
  %343 = call i64 @positive_overflow_infinity(i64 %342)
  store i64 %343, i64* %6, align 8
  br label %347

344:                                              ; preds = %335, %330, %325
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %346 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %345)
  br label %825

347:                                              ; preds = %340
  br label %352

348:                                              ; preds = %320
  %349 = load i64, i64* %4, align 8
  %350 = call i64 @TREE_TYPE(i64 %349)
  %351 = call i64 @TYPE_MIN_VALUE(i64 %350)
  store i64 %351, i64* %6, align 8
  br label %352

352:                                              ; preds = %348, %347
  br label %353

353:                                              ; preds = %352, %313
  br label %354

354:                                              ; preds = %353, %304
  br label %355

355:                                              ; preds = %354, %295
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = call i64 @is_positive_overflow_infinity(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %355
  %361 = load i64, i64* %4, align 8
  %362 = call i64 @TREE_TYPE(i64 %361)
  %363 = call i64 @negative_overflow_infinity(i64 %362)
  store i64 %363, i64* %7, align 8
  br label %410

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = call i64 @is_negative_overflow_infinity(i64 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %364
  %370 = load i64, i64* %4, align 8
  %371 = call i64 @TREE_TYPE(i64 %370)
  %372 = call i64 @positive_overflow_infinity(i64 %371)
  store i64 %372, i64* %7, align 8
  br label %409

373:                                              ; preds = %364
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = call i64 @vrp_val_is_min(i64 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %373
  %379 = load i32, i32* %5, align 4
  %380 = load i64, i64* %4, align 8
  %381 = call i64 @TREE_TYPE(i64 %380)
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = call i64 @fold_unary_to_constant(i32 %379, i64 %381, i64 %383)
  store i64 %384, i64* %7, align 8
  br label %408

385:                                              ; preds = %373
  %386 = load i64, i64* %4, align 8
  %387 = call i64 @TREE_TYPE(i64 %386)
  %388 = call i64 @needs_overflow_infinity(i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %385
  %391 = load i64, i64* %4, align 8
  %392 = call i64 @TREE_TYPE(i64 %391)
  %393 = call i64 @supports_overflow_infinity(i64 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %390
  %396 = load i64, i64* %4, align 8
  %397 = call i64 @TREE_TYPE(i64 %396)
  %398 = call i64 @positive_overflow_infinity(i64 %397)
  store i64 %398, i64* %7, align 8
  br label %402

399:                                              ; preds = %390
  %400 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %401 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %400)
  br label %825

402:                                              ; preds = %395
  br label %407

403:                                              ; preds = %385
  %404 = load i64, i64* %4, align 8
  %405 = call i64 @TREE_TYPE(i64 %404)
  %406 = call i64 @TYPE_MIN_VALUE(i64 %405)
  store i64 %406, i64* %7, align 8
  br label %407

407:                                              ; preds = %403, %402
  br label %408

408:                                              ; preds = %407, %378
  br label %409

409:                                              ; preds = %408, %369
  br label %410

410:                                              ; preds = %409, %360
  br label %806

411:                                              ; preds = %285, %281
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* @NEGATE_EXPR, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %449

415:                                              ; preds = %411
  %416 = load i64, i64* %4, align 8
  %417 = call i64 @TREE_TYPE(i64 %416)
  %418 = call i64 @TYPE_UNSIGNED(i64 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %449

420:                                              ; preds = %415
  %421 = call i64 @range_includes_zero_p(%struct.TYPE_15__* %10)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %436, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* %5, align 4
  %425 = load i64, i64* %4, align 8
  %426 = call i64 @TREE_TYPE(i64 %425)
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = call i64 @fold_unary_to_constant(i32 %424, i64 %426, i64 %428)
  store i64 %429, i64* %7, align 8
  %430 = load i32, i32* %5, align 4
  %431 = load i64, i64* %4, align 8
  %432 = call i64 @TREE_TYPE(i64 %431)
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = call i64 @fold_unary_to_constant(i32 %430, i64 %432, i64 %434)
  store i64 %435, i64* %6, align 8
  br label %448

436:                                              ; preds = %420
  %437 = call i64 @range_is_null(%struct.TYPE_15__* %10)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %436
  %440 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %441 = load i64, i64* %4, align 8
  %442 = call i64 @TREE_TYPE(i64 %441)
  %443 = call i32 @set_value_range_to_null(%struct.TYPE_15__* %440, i64 %442)
  br label %447

444:                                              ; preds = %436
  %445 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %446 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %445)
  br label %447

447:                                              ; preds = %444, %439
  br label %825

448:                                              ; preds = %423
  br label %805

449:                                              ; preds = %415, %411
  %450 = load i32, i32* %5, align 4
  %451 = load i32, i32* @ABS_EXPR, align 4
  %452 = icmp eq i32 %450, %451
  br i1 %452, label %453, label %681

453:                                              ; preds = %449
  %454 = load i64, i64* %4, align 8
  %455 = call i64 @TREE_TYPE(i64 %454)
  %456 = call i64 @TYPE_UNSIGNED(i64 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %681, label %458

458:                                              ; preds = %453
  %459 = load i64, i64* %4, align 8
  %460 = call i64 @TREE_TYPE(i64 %459)
  %461 = call i32 @TYPE_OVERFLOW_UNDEFINED(i64 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %489, label %463

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @VR_RANGE, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = call i64 @vrp_val_is_min(i64 %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %486, label %473

473:                                              ; preds = %468, %463
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @VR_ANTI_RANGE, align 8
  %477 = icmp eq i64 %475, %476
  br i1 %477, label %478, label %489

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = call i64 @vrp_val_is_min(i64 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %489, label %483

483:                                              ; preds = %478
  %484 = call i64 @range_includes_zero_p(%struct.TYPE_15__* %10)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %483, %468
  %487 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %488 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %487)
  br label %825

489:                                              ; preds = %483, %478, %473, %458
  %490 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %491 = load i64, i64* %490, align 8
  %492 = call i64 @is_overflow_infinity(i64 %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %498

494:                                              ; preds = %489
  %495 = load i64, i64* %4, align 8
  %496 = call i64 @TREE_TYPE(i64 %495)
  %497 = call i64 @positive_overflow_infinity(i64 %496)
  store i64 %497, i64* %6, align 8
  br label %534

498:                                              ; preds = %489
  %499 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %500 = load i64, i64* %499, align 8
  %501 = call i64 @vrp_val_is_min(i64 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %510, label %503

503:                                              ; preds = %498
  %504 = load i32, i32* %5, align 4
  %505 = load i64, i64* %4, align 8
  %506 = call i64 @TREE_TYPE(i64 %505)
  %507 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %508 = load i64, i64* %507, align 8
  %509 = call i64 @fold_unary_to_constant(i32 %504, i64 %506, i64 %508)
  store i64 %509, i64* %6, align 8
  br label %533

510:                                              ; preds = %498
  %511 = load i64, i64* %4, align 8
  %512 = call i64 @TREE_TYPE(i64 %511)
  %513 = call i64 @needs_overflow_infinity(i64 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %519, label %515

515:                                              ; preds = %510
  %516 = load i64, i64* %4, align 8
  %517 = call i64 @TREE_TYPE(i64 %516)
  %518 = call i64 @TYPE_MAX_VALUE(i64 %517)
  store i64 %518, i64* %6, align 8
  br label %532

519:                                              ; preds = %510
  %520 = load i64, i64* %4, align 8
  %521 = call i64 @TREE_TYPE(i64 %520)
  %522 = call i64 @supports_overflow_infinity(i64 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %519
  %525 = load i64, i64* %4, align 8
  %526 = call i64 @TREE_TYPE(i64 %525)
  %527 = call i64 @positive_overflow_infinity(i64 %526)
  store i64 %527, i64* %6, align 8
  br label %531

528:                                              ; preds = %519
  %529 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %530 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %529)
  br label %825

531:                                              ; preds = %524
  br label %532

532:                                              ; preds = %531, %515
  br label %533

533:                                              ; preds = %532, %503
  br label %534

534:                                              ; preds = %533, %494
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %536 = load i64, i64* %535, align 8
  %537 = call i64 @is_overflow_infinity(i64 %536)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %543

539:                                              ; preds = %534
  %540 = load i64, i64* %4, align 8
  %541 = call i64 @TREE_TYPE(i64 %540)
  %542 = call i64 @positive_overflow_infinity(i64 %541)
  store i64 %542, i64* %7, align 8
  br label %579

543:                                              ; preds = %534
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %545 = load i64, i64* %544, align 8
  %546 = call i64 @vrp_val_is_min(i64 %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %555, label %548

548:                                              ; preds = %543
  %549 = load i32, i32* %5, align 4
  %550 = load i64, i64* %4, align 8
  %551 = call i64 @TREE_TYPE(i64 %550)
  %552 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = call i64 @fold_unary_to_constant(i32 %549, i64 %551, i64 %553)
  store i64 %554, i64* %7, align 8
  br label %578

555:                                              ; preds = %543
  %556 = load i64, i64* %4, align 8
  %557 = call i64 @TREE_TYPE(i64 %556)
  %558 = call i64 @needs_overflow_infinity(i64 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %564, label %560

560:                                              ; preds = %555
  %561 = load i64, i64* %4, align 8
  %562 = call i64 @TREE_TYPE(i64 %561)
  %563 = call i64 @TYPE_MAX_VALUE(i64 %562)
  store i64 %563, i64* %7, align 8
  br label %577

564:                                              ; preds = %555
  %565 = load i64, i64* %4, align 8
  %566 = call i64 @TREE_TYPE(i64 %565)
  %567 = call i64 @supports_overflow_infinity(i64 %566)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = load i64, i64* %4, align 8
  %571 = call i64 @TREE_TYPE(i64 %570)
  %572 = call i64 @positive_overflow_infinity(i64 %571)
  store i64 %572, i64* %7, align 8
  br label %576

573:                                              ; preds = %564
  %574 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %575 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %574)
  br label %825

576:                                              ; preds = %569
  br label %577

577:                                              ; preds = %576, %560
  br label %578

578:                                              ; preds = %577, %548
  br label %579

579:                                              ; preds = %578, %539
  %580 = load i64, i64* %6, align 8
  %581 = load i64, i64* %7, align 8
  %582 = call i32 @compare_values(i64 %580, i64 %581)
  store i32 %582, i32* %9, align 4
  %583 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @VR_ANTI_RANGE, align 8
  %586 = icmp eq i64 %584, %585
  br i1 %586, label %587, label %659

587:                                              ; preds = %579
  %588 = call i64 @range_includes_zero_p(%struct.TYPE_15__* %10)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %630

590:                                              ; preds = %587
  %591 = load i32, i32* %9, align 4
  %592 = icmp ne i32 %591, 1
  br i1 %592, label %593, label %595

593:                                              ; preds = %590
  %594 = load i64, i64* %6, align 8
  store i64 %594, i64* %7, align 8
  br label %595

595:                                              ; preds = %593, %590
  %596 = load i64, i64* %4, align 8
  %597 = call i64 @TREE_TYPE(i64 %596)
  %598 = call i64 @TYPE_OVERFLOW_WRAPS(i64 %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %617

600:                                              ; preds = %595
  %601 = load i64, i64* %4, align 8
  %602 = call i64 @TREE_TYPE(i64 %601)
  %603 = call i64 @TYPE_MIN_VALUE(i64 %602)
  store i64 %603, i64* %18, align 8
  %604 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* %18, align 8
  %607 = icmp ne i64 %605, %606
  br i1 %607, label %608, label %613

608:                                              ; preds = %600
  %609 = load i32, i32* @PLUS_EXPR, align 4
  %610 = load i64, i64* %18, align 8
  %611 = load i32, i32* @integer_one_node, align 4
  %612 = call i64 @int_const_binop(i32 %609, i64 %610, i32 %611, i32 0)
  br label %615

613:                                              ; preds = %600
  %614 = load i64, i64* %18, align 8
  br label %615

615:                                              ; preds = %613, %608
  %616 = phi i64 [ %612, %608 ], [ %614, %613 ]
  store i64 %616, i64* %6, align 8
  br label %629

617:                                              ; preds = %595
  %618 = call i64 @overflow_infinity_range_p(%struct.TYPE_15__* %10)
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %624

620:                                              ; preds = %617
  %621 = load i64, i64* %4, align 8
  %622 = call i64 @TREE_TYPE(i64 %621)
  %623 = call i64 @negative_overflow_infinity(i64 %622)
  store i64 %623, i64* %6, align 8
  br label %628

624:                                              ; preds = %617
  %625 = load i64, i64* %4, align 8
  %626 = call i64 @TREE_TYPE(i64 %625)
  %627 = call i64 @TYPE_MIN_VALUE(i64 %626)
  store i64 %627, i64* %6, align 8
  br label %628

628:                                              ; preds = %624, %620
  br label %629

629:                                              ; preds = %628, %615
  br label %658

630:                                              ; preds = %587
  %631 = load i64, i64* @VR_RANGE, align 8
  %632 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i64 %631, i64* %632, align 8
  %633 = load i64, i64* %4, align 8
  %634 = call i64 @TREE_TYPE(i64 %633)
  %635 = call i64 @build_int_cst(i64 %634, i32 0)
  store i64 %635, i64* %6, align 8
  %636 = load i64, i64* %4, align 8
  %637 = call i64 @TREE_TYPE(i64 %636)
  %638 = call i64 @needs_overflow_infinity(i64 %637)
  %639 = icmp ne i64 %638, 0
  br i1 %639, label %640, label %653

640:                                              ; preds = %630
  %641 = load i64, i64* %4, align 8
  %642 = call i64 @TREE_TYPE(i64 %641)
  %643 = call i64 @supports_overflow_infinity(i64 %642)
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = load i64, i64* %4, align 8
  %647 = call i64 @TREE_TYPE(i64 %646)
  %648 = call i64 @positive_overflow_infinity(i64 %647)
  store i64 %648, i64* %7, align 8
  br label %652

649:                                              ; preds = %640
  %650 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %651 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %650)
  br label %825

652:                                              ; preds = %645
  br label %657

653:                                              ; preds = %630
  %654 = load i64, i64* %4, align 8
  %655 = call i64 @TREE_TYPE(i64 %654)
  %656 = call i64 @TYPE_MAX_VALUE(i64 %655)
  store i64 %656, i64* %7, align 8
  br label %657

657:                                              ; preds = %653, %652
  br label %658

658:                                              ; preds = %657, %629
  br label %680

659:                                              ; preds = %579
  %660 = call i64 @range_includes_zero_p(%struct.TYPE_15__* %10)
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %671

662:                                              ; preds = %659
  %663 = load i32, i32* %9, align 4
  %664 = icmp eq i32 %663, 1
  br i1 %664, label %665, label %667

665:                                              ; preds = %662
  %666 = load i64, i64* %6, align 8
  store i64 %666, i64* %7, align 8
  br label %667

667:                                              ; preds = %665, %662
  %668 = load i64, i64* %4, align 8
  %669 = call i64 @TREE_TYPE(i64 %668)
  %670 = call i64 @build_int_cst(i64 %669, i32 0)
  store i64 %670, i64* %6, align 8
  br label %679

671:                                              ; preds = %659
  %672 = load i32, i32* %9, align 4
  %673 = icmp eq i32 %672, 1
  br i1 %673, label %674, label %678

674:                                              ; preds = %671
  %675 = load i64, i64* %6, align 8
  store i64 %675, i64* %19, align 8
  %676 = load i64, i64* %7, align 8
  store i64 %676, i64* %6, align 8
  %677 = load i64, i64* %19, align 8
  store i64 %677, i64* %7, align 8
  br label %678

678:                                              ; preds = %674, %671
  br label %679

679:                                              ; preds = %678, %667
  br label %680

680:                                              ; preds = %679, %658
  br label %804

681:                                              ; preds = %453, %449
  %682 = load i32, i32* %5, align 4
  %683 = load i64, i64* %4, align 8
  %684 = call i64 @TREE_TYPE(i64 %683)
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %686 = load i64, i64* %685, align 8
  %687 = call i64 @fold_unary_to_constant(i32 %682, i64 %684, i64 %686)
  store i64 %687, i64* %6, align 8
  %688 = load i32, i32* %5, align 4
  %689 = load i64, i64* %4, align 8
  %690 = call i64 @TREE_TYPE(i64 %689)
  %691 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %692 = load i64, i64* %691, align 8
  %693 = call i64 @fold_unary_to_constant(i32 %688, i64 %690, i64 %692)
  store i64 %693, i64* %7, align 8
  %694 = load i64, i64* %4, align 8
  %695 = call i64 @TREE_TYPE(i64 %694)
  %696 = call i64 @needs_overflow_infinity(i64 %695)
  %697 = icmp ne i64 %696, 0
  br i1 %697, label %698, label %803

698:                                              ; preds = %681
  %699 = load i32, i32* %5, align 4
  %700 = load i32, i32* @NEGATE_EXPR, align 4
  %701 = icmp ne i32 %699, %700
  br i1 %701, label %702, label %706

702:                                              ; preds = %698
  %703 = load i32, i32* %5, align 4
  %704 = load i32, i32* @ABS_EXPR, align 4
  %705 = icmp ne i32 %703, %704
  br label %706

706:                                              ; preds = %702, %698
  %707 = phi i1 [ false, %698 ], [ %705, %702 ]
  %708 = zext i1 %707 to i32
  %709 = call i32 @gcc_assert(i32 %708)
  %710 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %711 = load i64, i64* %710, align 8
  %712 = call i64 @is_overflow_infinity(i64 %711)
  %713 = icmp ne i64 %712, 0
  br i1 %713, label %718, label %714

714:                                              ; preds = %706
  %715 = load i64, i64* %6, align 8
  %716 = call i64 @TREE_OVERFLOW(i64 %715)
  %717 = icmp ne i64 %716, 0
  br i1 %717, label %718, label %730

718:                                              ; preds = %714, %706
  %719 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %720 = load i64, i64* %719, align 8
  %721 = call i64 @is_overflow_infinity(i64 %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %727, label %723

723:                                              ; preds = %718
  %724 = load i64, i64* %7, align 8
  %725 = call i64 @TREE_OVERFLOW(i64 %724)
  %726 = icmp ne i64 %725, 0
  br i1 %726, label %727, label %730

727:                                              ; preds = %723, %718
  %728 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %729 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %728)
  br label %825

730:                                              ; preds = %723, %714
  %731 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %732 = load i64, i64* %731, align 8
  %733 = call i64 @is_overflow_infinity(i64 %732)
  %734 = icmp ne i64 %733, 0
  br i1 %734, label %735, label %738

735:                                              ; preds = %730
  %736 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %6, align 8
  br label %766

738:                                              ; preds = %730
  %739 = load i64, i64* %6, align 8
  %740 = call i64 @TREE_OVERFLOW(i64 %739)
  %741 = icmp ne i64 %740, 0
  br i1 %741, label %742, label %765

742:                                              ; preds = %738
  %743 = load i64, i64* %4, align 8
  %744 = call i64 @TREE_TYPE(i64 %743)
  %745 = call i64 @supports_overflow_infinity(i64 %744)
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %747, label %761

747:                                              ; preds = %742
  %748 = load i64, i64* %6, align 8
  %749 = call i64 @tree_int_cst_sgn(i64 %748)
  %750 = icmp sge i64 %749, 0
  br i1 %750, label %751, label %755

751:                                              ; preds = %747
  %752 = load i64, i64* %6, align 8
  %753 = call i64 @TREE_TYPE(i64 %752)
  %754 = call i64 @positive_overflow_infinity(i64 %753)
  br label %759

755:                                              ; preds = %747
  %756 = load i64, i64* %6, align 8
  %757 = call i64 @TREE_TYPE(i64 %756)
  %758 = call i64 @negative_overflow_infinity(i64 %757)
  br label %759

759:                                              ; preds = %755, %751
  %760 = phi i64 [ %754, %751 ], [ %758, %755 ]
  store i64 %760, i64* %6, align 8
  br label %764

761:                                              ; preds = %742
  %762 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %763 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %762)
  br label %825

764:                                              ; preds = %759
  br label %765

765:                                              ; preds = %764, %738
  br label %766

766:                                              ; preds = %765, %735
  %767 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %768 = load i64, i64* %767, align 8
  %769 = call i64 @is_overflow_infinity(i64 %768)
  %770 = icmp ne i64 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %766
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %7, align 8
  br label %802

774:                                              ; preds = %766
  %775 = load i64, i64* %7, align 8
  %776 = call i64 @TREE_OVERFLOW(i64 %775)
  %777 = icmp ne i64 %776, 0
  br i1 %777, label %778, label %801

778:                                              ; preds = %774
  %779 = load i64, i64* %4, align 8
  %780 = call i64 @TREE_TYPE(i64 %779)
  %781 = call i64 @supports_overflow_infinity(i64 %780)
  %782 = icmp ne i64 %781, 0
  br i1 %782, label %783, label %797

783:                                              ; preds = %778
  %784 = load i64, i64* %7, align 8
  %785 = call i64 @tree_int_cst_sgn(i64 %784)
  %786 = icmp sge i64 %785, 0
  br i1 %786, label %787, label %791

787:                                              ; preds = %783
  %788 = load i64, i64* %7, align 8
  %789 = call i64 @TREE_TYPE(i64 %788)
  %790 = call i64 @positive_overflow_infinity(i64 %789)
  br label %795

791:                                              ; preds = %783
  %792 = load i64, i64* %7, align 8
  %793 = call i64 @TREE_TYPE(i64 %792)
  %794 = call i64 @negative_overflow_infinity(i64 %793)
  br label %795

795:                                              ; preds = %791, %787
  %796 = phi i64 [ %790, %787 ], [ %794, %791 ]
  store i64 %796, i64* %7, align 8
  br label %800

797:                                              ; preds = %778
  %798 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %799 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %798)
  br label %825

800:                                              ; preds = %795
  br label %801

801:                                              ; preds = %800, %774
  br label %802

802:                                              ; preds = %801, %771
  br label %803

803:                                              ; preds = %802, %681
  br label %804

804:                                              ; preds = %803, %680
  br label %805

805:                                              ; preds = %804, %448
  br label %806

806:                                              ; preds = %805, %410
  %807 = load i64, i64* %6, align 8
  %808 = load i64, i64* %7, align 8
  %809 = call i32 @compare_values(i64 %807, i64 %808)
  store i32 %809, i32* %9, align 4
  %810 = load i32, i32* %9, align 4
  %811 = icmp eq i32 %810, -2
  br i1 %811, label %815, label %812

812:                                              ; preds = %806
  %813 = load i32, i32* %9, align 4
  %814 = icmp eq i32 %813, 1
  br i1 %814, label %815, label %818

815:                                              ; preds = %812, %806
  %816 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %817 = call i32 @set_value_range_to_varying(%struct.TYPE_15__* %816)
  br label %825

818:                                              ; preds = %812
  %819 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %820 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %821 = load i64, i64* %820, align 8
  %822 = load i64, i64* %6, align 8
  %823 = load i64, i64* %7, align 8
  %824 = call i32 @set_value_range(%struct.TYPE_15__* %819, i64 %821, i64 %822, i64 %823, i32* null)
  br label %825

825:                                              ; preds = %67, %97, %118, %158, %247, %269, %278, %344, %399, %447, %486, %528, %573, %649, %727, %761, %797, %818, %815
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @set_value_range_to_varying(%struct.TYPE_15__*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local %struct.TYPE_15__* @get_value_range(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_gimple_min_invariant(i64) #1

declare dso_local i32 @set_value_range_to_value(%struct.TYPE_15__*, i64, i32*) #1

declare dso_local i32 @set_value_range_to_undefined(%struct.TYPE_15__*) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @symbolic_range_p(%struct.TYPE_15__*) #1

declare dso_local i64 @range_is_nonnull(%struct.TYPE_15__*) #1

declare dso_local i64 @tree_expr_nonzero_warnv_p(i64, i32*) #1

declare dso_local i32 @set_value_range_to_nonnull(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @range_is_null(%struct.TYPE_15__*) #1

declare dso_local i32 @set_value_range_to_null(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @overflow_infinity_range_p(%struct.TYPE_15__*) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @is_gimple_val(i64) #1

declare dso_local i64 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @is_overflow_infinity(i64) #1

declare dso_local i32 @compare_values(i64, i64) #1

declare dso_local i32 @set_value_range(%struct.TYPE_15__*, i64, i64, i64, i32*) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @is_positive_overflow_infinity(i64) #1

declare dso_local i64 @negative_overflow_infinity(i64) #1

declare dso_local i64 @is_negative_overflow_infinity(i64) #1

declare dso_local i64 @positive_overflow_infinity(i64) #1

declare dso_local i64 @vrp_val_is_min(i64) #1

declare dso_local i64 @fold_unary_to_constant(i32, i64, i64) #1

declare dso_local i64 @needs_overflow_infinity(i64) #1

declare dso_local i64 @supports_overflow_infinity(i64) #1

declare dso_local i64 @range_includes_zero_p(%struct.TYPE_15__*) #1

declare dso_local i32 @TYPE_OVERFLOW_UNDEFINED(i64) #1

declare dso_local i64 @TYPE_OVERFLOW_WRAPS(i64) #1

declare dso_local i64 @int_const_binop(i32, i64, i32, i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @tree_int_cst_sgn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
