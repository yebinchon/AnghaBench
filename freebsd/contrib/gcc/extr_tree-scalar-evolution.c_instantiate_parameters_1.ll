; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_instantiate_parameters_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_instantiate_parameters_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PARAM_SCEV_MAX_EXPR_SIZE = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i32 0, align 4
@INSERT_SUPERLOOP_CHRECS = common dso_local global i32 0, align 4
@already_instantiated = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@FOLD_CONVERSIONS = common dso_local global i32 0, align 4
@chrec_known = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32, i32, i32)* @instantiate_parameters_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @instantiate_parameters_1(%struct.loop* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.loop*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @chrec_type(i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @PARAM_SCEV_MAX_EXPR_SIZE, align 4
  %25 = call i32 @PARAM_VALUE(i32 %24)
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @chrec_dont_know, align 4
  store i32 %28, i32* %6, align 4
  br label %564

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @automatically_generated_chrec_p(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @is_gimple_min_invariant(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %6, align 4
  br label %564

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @TREE_CODE(i32 %40)
  switch i32 %41, label %416 [
    i32 128, label %42
    i32 131, label %159
    i32 132, label %208
    i32 136, label %259
    i32 135, label %310
    i32 133, label %361
    i32 137, label %361
    i32 134, label %361
    i32 129, label %412
    i32 130, label %414
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @SSA_NAME_DEF_STMT(i32 %43)
  %45 = call %struct.TYPE_5__* @bb_for_stmt(i32 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %16, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @INSERT_SUPERLOOP_CHRECS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.loop*, %struct.loop** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = call i32 @flow_bb_inside_loop_p(%struct.loop* %54, %struct.TYPE_5__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %42
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %6, align 4
  br label %564

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @get_instantiated_value(i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %564

68:                                               ; preds = %60
  %69 = load %struct.loop*, %struct.loop** %7, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %71 = call i32 @flow_bb_inside_loop_p(%struct.loop* %69, %struct.TYPE_5__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @chrec_dont_know, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @set_instantiated_value(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @already_instantiated, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @SSA_NAME_VERSION(i32 %84)
  %86 = call i32 @bitmap_bit_p(i32 %83, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %6, align 4
  br label %564

90:                                               ; preds = %77
  %91 = load %struct.loop*, %struct.loop** %7, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.loop* @find_common_loop(%struct.loop* %91, i32 %94)
  store %struct.loop* %95, %struct.loop** %17, align 8
  %96 = load i32, i32* @already_instantiated, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @SSA_NAME_VERSION(i32 %97)
  %99 = call i32 @bitmap_set_bit(i32 %96, i32 %98)
  %100 = load %struct.loop*, %struct.loop** %17, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @analyze_scalar_evolution(%struct.loop* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %106, label %137

106:                                              ; preds = %90
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @SSA_NAME_DEF_STMT(i32 %107)
  %109 = call %struct.TYPE_6__* @loop_containing_stmt(i32 %108)
  %110 = icmp eq %struct.TYPE_6__* %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @SSA_NAME_DEF_STMT(i32 %112)
  %114 = call %struct.TYPE_6__* @loop_containing_stmt(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.loop*, %struct.loop** %17, align 8
  %118 = getelementptr inbounds %struct.loop, %struct.loop* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %111, %106
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @loop_closed_phi_def(i32 %126)
  store i32 %127, i32* %12, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %128, %125
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @NULL_TREE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @chrec_dont_know, align 4
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %134, %130
  br label %149

137:                                              ; preds = %111, %90
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @chrec_dont_know, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.loop*, %struct.loop** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @instantiate_parameters_1(%struct.loop* %142, i32 %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %141, %137
  br label %149

149:                                              ; preds = %148, %136
  %150 = load i32, i32* @already_instantiated, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @SSA_NAME_VERSION(i32 %151)
  %153 = call i32 @bitmap_clear_bit(i32 %150, i32 %152)
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @set_instantiated_value(i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %6, align 4
  br label %564

159:                                              ; preds = %39
  %160 = load %struct.loop*, %struct.loop** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @CHREC_LEFT(i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @instantiate_parameters_1(%struct.loop* %160, i32 %162, i32 %163, i32 %164, i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @chrec_dont_know, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* @chrec_dont_know, align 4
  store i32 %171, i32* %6, align 4
  br label %564

172:                                              ; preds = %159
  %173 = load %struct.loop*, %struct.loop** %7, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @CHREC_RIGHT(i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @instantiate_parameters_1(%struct.loop* %173, i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @chrec_dont_know, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %172
  %184 = load i32, i32* @chrec_dont_know, align 4
  store i32 %184, i32* %6, align 4
  br label %564

185:                                              ; preds = %172
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @CHREC_LEFT(i32 %186)
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @CHREC_RIGHT(i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %190, %185
  %196 = load i32, i32* %13, align 4
  %197 = call i32 @chrec_type(i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @NULL_TREE, align 4
  %200 = call i32 @chrec_convert(i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @CHREC_VARIABLE(i32 %201)
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @build_polynomial_chrec(i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %195, %190
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %6, align 4
  br label %564

208:                                              ; preds = %39
  %209 = load %struct.loop*, %struct.loop** %7, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @TREE_OPERAND(i32 %210, i32 0)
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @instantiate_parameters_1(%struct.loop* %209, i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @chrec_dont_know, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %208
  %220 = load i32, i32* @chrec_dont_know, align 4
  store i32 %220, i32* %6, align 4
  br label %564

221:                                              ; preds = %208
  %222 = load %struct.loop*, %struct.loop** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @TREE_OPERAND(i32 %223, i32 1)
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @instantiate_parameters_1(%struct.loop* %222, i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* @chrec_dont_know, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = load i32, i32* @chrec_dont_know, align 4
  store i32 %233, i32* %6, align 4
  br label %564

234:                                              ; preds = %221
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @TREE_OPERAND(i32 %235, i32 0)
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @TREE_OPERAND(i32 %240, i32 1)
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %257

244:                                              ; preds = %239, %234
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* @NULL_TREE, align 4
  %248 = call i32 @chrec_convert(i32 %245, i32 %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* @NULL_TREE, align 4
  %252 = call i32 @chrec_convert(i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %18, align 4
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @chrec_fold_plus(i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %244, %239
  %258 = load i32, i32* %8, align 4
  store i32 %258, i32* %6, align 4
  br label %564

259:                                              ; preds = %39
  %260 = load %struct.loop*, %struct.loop** %7, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @TREE_OPERAND(i32 %261, i32 0)
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @instantiate_parameters_1(%struct.loop* %260, i32 %262, i32 %263, i32 %264, i32 %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @chrec_dont_know, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %259
  %271 = load i32, i32* @chrec_dont_know, align 4
  store i32 %271, i32* %6, align 4
  br label %564

272:                                              ; preds = %259
  %273 = load %struct.loop*, %struct.loop** %7, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @TREE_OPERAND(i32 %274, i32 1)
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @instantiate_parameters_1(%struct.loop* %273, i32 %275, i32 %276, i32 %277, i32 %278)
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* @chrec_dont_know, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %272
  %284 = load i32, i32* @chrec_dont_know, align 4
  store i32 %284, i32* %6, align 4
  br label %564

285:                                              ; preds = %272
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @TREE_OPERAND(i32 %286, i32 0)
  %288 = load i32, i32* %13, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @TREE_OPERAND(i32 %291, i32 1)
  %293 = load i32, i32* %14, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %308

295:                                              ; preds = %290, %285
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* @NULL_TREE, align 4
  %299 = call i32 @chrec_convert(i32 %296, i32 %297, i32 %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* @NULL_TREE, align 4
  %303 = call i32 @chrec_convert(i32 %300, i32 %301, i32 %302)
  store i32 %303, i32* %14, align 4
  %304 = load i32, i32* %18, align 4
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %14, align 4
  %307 = call i32 @chrec_fold_minus(i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %8, align 4
  br label %308

308:                                              ; preds = %295, %290
  %309 = load i32, i32* %8, align 4
  store i32 %309, i32* %6, align 4
  br label %564

310:                                              ; preds = %39
  %311 = load %struct.loop*, %struct.loop** %7, align 8
  %312 = load i32, i32* %8, align 4
  %313 = call i32 @TREE_OPERAND(i32 %312, i32 0)
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* %11, align 4
  %317 = call i32 @instantiate_parameters_1(%struct.loop* %311, i32 %313, i32 %314, i32 %315, i32 %316)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* @chrec_dont_know, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %310
  %322 = load i32, i32* @chrec_dont_know, align 4
  store i32 %322, i32* %6, align 4
  br label %564

323:                                              ; preds = %310
  %324 = load %struct.loop*, %struct.loop** %7, align 8
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @TREE_OPERAND(i32 %325, i32 1)
  %327 = load i32, i32* %9, align 4
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* %11, align 4
  %330 = call i32 @instantiate_parameters_1(%struct.loop* %324, i32 %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %14, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* @chrec_dont_know, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %323
  %335 = load i32, i32* @chrec_dont_know, align 4
  store i32 %335, i32* %6, align 4
  br label %564

336:                                              ; preds = %323
  %337 = load i32, i32* %8, align 4
  %338 = call i32 @TREE_OPERAND(i32 %337, i32 0)
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %338, %339
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = load i32, i32* %8, align 4
  %343 = call i32 @TREE_OPERAND(i32 %342, i32 1)
  %344 = load i32, i32* %14, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %359

346:                                              ; preds = %341, %336
  %347 = load i32, i32* %18, align 4
  %348 = load i32, i32* %13, align 4
  %349 = load i32, i32* @NULL_TREE, align 4
  %350 = call i32 @chrec_convert(i32 %347, i32 %348, i32 %349)
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* %14, align 4
  %353 = load i32, i32* @NULL_TREE, align 4
  %354 = call i32 @chrec_convert(i32 %351, i32 %352, i32 %353)
  store i32 %354, i32* %14, align 4
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* %14, align 4
  %358 = call i32 @chrec_fold_multiply(i32 %355, i32 %356, i32 %357)
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %346, %341
  %360 = load i32, i32* %8, align 4
  store i32 %360, i32* %6, align 4
  br label %564

361:                                              ; preds = %39, %39, %39
  %362 = load %struct.loop*, %struct.loop** %7, align 8
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @TREE_OPERAND(i32 %363, i32 0)
  %365 = load i32, i32* %9, align 4
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* %11, align 4
  %368 = call i32 @instantiate_parameters_1(%struct.loop* %362, i32 %364, i32 %365, i32 %366, i32 %367)
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @chrec_dont_know, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %361
  %373 = load i32, i32* @chrec_dont_know, align 4
  store i32 %373, i32* %6, align 4
  br label %564

374:                                              ; preds = %361
  %375 = load i32, i32* %9, align 4
  %376 = load i32, i32* @FOLD_CONVERSIONS, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %374
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @TREE_TYPE(i32 %380)
  %382 = load i32, i32* %13, align 4
  %383 = call i32 @chrec_convert_aggressive(i32 %381, i32 %382)
  store i32 %383, i32* %19, align 4
  %384 = load i32, i32* %19, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %379
  %387 = load i32, i32* %19, align 4
  store i32 %387, i32* %6, align 4
  br label %564

388:                                              ; preds = %379
  br label %389

389:                                              ; preds = %388, %374
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %8, align 4
  %392 = call i32 @TREE_OPERAND(i32 %391, i32 0)
  %393 = icmp eq i32 %390, %392
  br i1 %393, label %394, label %396

394:                                              ; preds = %389
  %395 = load i32, i32* %8, align 4
  store i32 %395, i32* %6, align 4
  br label %564

396:                                              ; preds = %389
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* @FOLD_CONVERSIONS, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %396
  %402 = load i32, i32* %8, align 4
  %403 = call i32 @TREE_TYPE(i32 %402)
  %404 = load i32, i32* %13, align 4
  %405 = call i32 @fold_convert(i32 %403, i32 %404)
  store i32 %405, i32* %6, align 4
  br label %564

406:                                              ; preds = %396
  %407 = load i32, i32* %8, align 4
  %408 = call i32 @TREE_TYPE(i32 %407)
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* @NULL_TREE, align 4
  %411 = call i32 @chrec_convert(i32 %408, i32 %409, i32 %410)
  store i32 %411, i32* %6, align 4
  br label %564

412:                                              ; preds = %39
  %413 = load i32, i32* @chrec_dont_know, align 4
  store i32 %413, i32* %6, align 4
  br label %564

414:                                              ; preds = %39
  %415 = load i32, i32* @chrec_known, align 4
  store i32 %415, i32* %6, align 4
  br label %564

416:                                              ; preds = %39
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %8, align 4
  %419 = call i32 @TREE_CODE(i32 %418)
  %420 = call i32 @TREE_CODE_LENGTH(i32 %419)
  switch i32 %420, label %561 [
    i32 3, label %421
    i32 2, label %486
    i32 1, label %532
    i32 0, label %559
  ]

421:                                              ; preds = %417
  %422 = load %struct.loop*, %struct.loop** %7, align 8
  %423 = load i32, i32* %8, align 4
  %424 = call i32 @TREE_OPERAND(i32 %423, i32 0)
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %10, align 4
  %427 = load i32, i32* %11, align 4
  %428 = call i32 @instantiate_parameters_1(%struct.loop* %422, i32 %424, i32 %425, i32 %426, i32 %427)
  store i32 %428, i32* %13, align 4
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* @chrec_dont_know, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %421
  %433 = load i32, i32* @chrec_dont_know, align 4
  store i32 %433, i32* %6, align 4
  br label %564

434:                                              ; preds = %421
  %435 = load %struct.loop*, %struct.loop** %7, align 8
  %436 = load i32, i32* %8, align 4
  %437 = call i32 @TREE_OPERAND(i32 %436, i32 1)
  %438 = load i32, i32* %9, align 4
  %439 = load i32, i32* %10, align 4
  %440 = load i32, i32* %11, align 4
  %441 = call i32 @instantiate_parameters_1(%struct.loop* %435, i32 %437, i32 %438, i32 %439, i32 %440)
  store i32 %441, i32* %14, align 4
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* @chrec_dont_know, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %434
  %446 = load i32, i32* @chrec_dont_know, align 4
  store i32 %446, i32* %6, align 4
  br label %564

447:                                              ; preds = %434
  %448 = load %struct.loop*, %struct.loop** %7, align 8
  %449 = load i32, i32* %8, align 4
  %450 = call i32 @TREE_OPERAND(i32 %449, i32 2)
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %10, align 4
  %453 = load i32, i32* %11, align 4
  %454 = call i32 @instantiate_parameters_1(%struct.loop* %448, i32 %450, i32 %451, i32 %452, i32 %453)
  store i32 %454, i32* %15, align 4
  %455 = load i32, i32* %15, align 4
  %456 = load i32, i32* @chrec_dont_know, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %460

458:                                              ; preds = %447
  %459 = load i32, i32* @chrec_dont_know, align 4
  store i32 %459, i32* %6, align 4
  br label %564

460:                                              ; preds = %447
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @TREE_OPERAND(i32 %462, i32 0)
  %464 = icmp eq i32 %461, %463
  br i1 %464, label %465, label %477

465:                                              ; preds = %460
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* %8, align 4
  %468 = call i32 @TREE_OPERAND(i32 %467, i32 1)
  %469 = icmp eq i32 %466, %468
  br i1 %469, label %470, label %477

470:                                              ; preds = %465
  %471 = load i32, i32* %15, align 4
  %472 = load i32, i32* %8, align 4
  %473 = call i32 @TREE_OPERAND(i32 %472, i32 2)
  %474 = icmp eq i32 %471, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %470
  %476 = load i32, i32* %8, align 4
  store i32 %476, i32* %6, align 4
  br label %564

477:                                              ; preds = %470, %465, %460
  %478 = load i32, i32* %8, align 4
  %479 = call i32 @TREE_CODE(i32 %478)
  %480 = load i32, i32* %8, align 4
  %481 = call i32 @TREE_TYPE(i32 %480)
  %482 = load i32, i32* %13, align 4
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %15, align 4
  %485 = call i32 @fold_build3(i32 %479, i32 %481, i32 %482, i32 %483, i32 %484)
  store i32 %485, i32* %6, align 4
  br label %564

486:                                              ; preds = %417
  %487 = load %struct.loop*, %struct.loop** %7, align 8
  %488 = load i32, i32* %8, align 4
  %489 = call i32 @TREE_OPERAND(i32 %488, i32 0)
  %490 = load i32, i32* %9, align 4
  %491 = load i32, i32* %10, align 4
  %492 = load i32, i32* %11, align 4
  %493 = call i32 @instantiate_parameters_1(%struct.loop* %487, i32 %489, i32 %490, i32 %491, i32 %492)
  store i32 %493, i32* %13, align 4
  %494 = load i32, i32* %13, align 4
  %495 = load i32, i32* @chrec_dont_know, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %499

497:                                              ; preds = %486
  %498 = load i32, i32* @chrec_dont_know, align 4
  store i32 %498, i32* %6, align 4
  br label %564

499:                                              ; preds = %486
  %500 = load %struct.loop*, %struct.loop** %7, align 8
  %501 = load i32, i32* %8, align 4
  %502 = call i32 @TREE_OPERAND(i32 %501, i32 1)
  %503 = load i32, i32* %9, align 4
  %504 = load i32, i32* %10, align 4
  %505 = load i32, i32* %11, align 4
  %506 = call i32 @instantiate_parameters_1(%struct.loop* %500, i32 %502, i32 %503, i32 %504, i32 %505)
  store i32 %506, i32* %14, align 4
  %507 = load i32, i32* %14, align 4
  %508 = load i32, i32* @chrec_dont_know, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %512

510:                                              ; preds = %499
  %511 = load i32, i32* @chrec_dont_know, align 4
  store i32 %511, i32* %6, align 4
  br label %564

512:                                              ; preds = %499
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %8, align 4
  %515 = call i32 @TREE_OPERAND(i32 %514, i32 0)
  %516 = icmp eq i32 %513, %515
  br i1 %516, label %517, label %524

517:                                              ; preds = %512
  %518 = load i32, i32* %14, align 4
  %519 = load i32, i32* %8, align 4
  %520 = call i32 @TREE_OPERAND(i32 %519, i32 1)
  %521 = icmp eq i32 %518, %520
  br i1 %521, label %522, label %524

522:                                              ; preds = %517
  %523 = load i32, i32* %8, align 4
  store i32 %523, i32* %6, align 4
  br label %564

524:                                              ; preds = %517, %512
  %525 = load i32, i32* %8, align 4
  %526 = call i32 @TREE_CODE(i32 %525)
  %527 = load i32, i32* %8, align 4
  %528 = call i32 @TREE_TYPE(i32 %527)
  %529 = load i32, i32* %13, align 4
  %530 = load i32, i32* %14, align 4
  %531 = call i32 @fold_build2(i32 %526, i32 %528, i32 %529, i32 %530)
  store i32 %531, i32* %6, align 4
  br label %564

532:                                              ; preds = %417
  %533 = load %struct.loop*, %struct.loop** %7, align 8
  %534 = load i32, i32* %8, align 4
  %535 = call i32 @TREE_OPERAND(i32 %534, i32 0)
  %536 = load i32, i32* %9, align 4
  %537 = load i32, i32* %10, align 4
  %538 = load i32, i32* %11, align 4
  %539 = call i32 @instantiate_parameters_1(%struct.loop* %533, i32 %535, i32 %536, i32 %537, i32 %538)
  store i32 %539, i32* %13, align 4
  %540 = load i32, i32* %13, align 4
  %541 = load i32, i32* @chrec_dont_know, align 4
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %545

543:                                              ; preds = %532
  %544 = load i32, i32* @chrec_dont_know, align 4
  store i32 %544, i32* %6, align 4
  br label %564

545:                                              ; preds = %532
  %546 = load i32, i32* %13, align 4
  %547 = load i32, i32* %8, align 4
  %548 = call i32 @TREE_OPERAND(i32 %547, i32 0)
  %549 = icmp eq i32 %546, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %545
  %551 = load i32, i32* %8, align 4
  store i32 %551, i32* %6, align 4
  br label %564

552:                                              ; preds = %545
  %553 = load i32, i32* %8, align 4
  %554 = call i32 @TREE_CODE(i32 %553)
  %555 = load i32, i32* %8, align 4
  %556 = call i32 @TREE_TYPE(i32 %555)
  %557 = load i32, i32* %13, align 4
  %558 = call i32 @fold_build1(i32 %554, i32 %556, i32 %557)
  store i32 %558, i32* %6, align 4
  br label %564

559:                                              ; preds = %417
  %560 = load i32, i32* %8, align 4
  store i32 %560, i32* %6, align 4
  br label %564

561:                                              ; preds = %417
  br label %562

562:                                              ; preds = %561
  %563 = load i32, i32* @chrec_dont_know, align 4
  store i32 %563, i32* %6, align 4
  br label %564

564:                                              ; preds = %562, %559, %552, %550, %543, %524, %522, %510, %497, %477, %475, %458, %445, %432, %414, %412, %406, %401, %394, %386, %372, %359, %334, %321, %308, %283, %270, %257, %232, %219, %206, %183, %170, %149, %88, %66, %58, %37, %27
  %565 = load i32, i32* %6, align 4
  ret i32 %565
}

declare dso_local i32 @chrec_type(i32) #1

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i64 @automatically_generated_chrec_p(i32) #1

declare dso_local i64 @is_gimple_min_invariant(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local %struct.TYPE_5__* @bb_for_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(%struct.loop*, %struct.TYPE_5__*) #1

declare dso_local i32 @get_instantiated_value(i32, i32) #1

declare dso_local i32 @set_instantiated_value(i32, i32, i32) #1

declare dso_local i32 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @analyze_scalar_evolution(%struct.loop*, i32) #1

declare dso_local %struct.TYPE_6__* @loop_containing_stmt(i32) #1

declare dso_local i32 @loop_closed_phi_def(i32) #1

declare dso_local i32 @bitmap_clear_bit(i32, i32) #1

declare dso_local i32 @CHREC_LEFT(i32) #1

declare dso_local i32 @CHREC_RIGHT(i32) #1

declare dso_local i32 @chrec_convert(i32, i32, i32) #1

declare dso_local i32 @build_polynomial_chrec(i32, i32, i32) #1

declare dso_local i32 @CHREC_VARIABLE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @chrec_fold_plus(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_minus(i32, i32, i32) #1

declare dso_local i32 @chrec_fold_multiply(i32, i32, i32) #1

declare dso_local i32 @chrec_convert_aggressive(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @fold_build3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_build1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
