; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_subscript_affine_affine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_subscript_affine_affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@integer_zero_node = common dso_local global i64 0, align 8
@chrec_dont_know = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"(analyze_subscript_affine_affine \0A\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"affine-affine test failed: missing iteration counts.\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"affine-affine test failed: too many variables.\0A\00", align 1
@chrec_known = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"affine-affine test failed: unimplemented.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"  (overlaps_a = \00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c")\0A  (overlaps_b = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*, i64*)* @analyze_subscript_affine_affine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_subscript_affine_affine(i64 %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32**, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @eq_evolutions_p(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %5
  %48 = load i64, i64* @integer_zero_node, align 8
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @integer_zero_node, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @chrec_dont_know, align 8
  %53 = load i64*, i64** %10, align 8
  store i64 %52, i64* %53, align 8
  br label %572

54:                                               ; preds = %5
  %55 = load i64, i64* @dump_file, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* @dump_flags, align 4
  %59 = load i32, i32* @TDF_DETAILS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* @dump_file, align 8
  %64 = call i32 @fprintf(i64 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %57, %54
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @nb_vars_in_chrec(i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @nb_vars_in_chrec(i64 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %70, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32** @lambda_matrix_new(i32 %73, i32 %74)
  store i32** %75, i32*** %21, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32** @lambda_matrix_new(i32 %76, i32 1)
  store i32** %77, i32*** %20, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32** @lambda_matrix_new(i32 %78, i32 1)
  store i32** %79, i32*** %22, align 8
  %80 = load i32**, i32*** %20, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @initialize_matrix_A(i32** %80, i64 %81, i32 0, i32 1)
  store i32 %82, i32* %14, align 4
  %83 = load i32**, i32*** %20, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @initialize_matrix_A(i32** %83, i64 %84, i32 %85, i32 -1)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %198

92:                                               ; preds = %65
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %151

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %151

98:                                               ; preds = %95
  %99 = load i64, i64* %6, align 8
  %100 = call i32 @CHREC_VARIABLE(i64 %99)
  %101 = call i64 @get_number_of_iters_for_loop(i32 %100)
  store i64 %101, i64* %28, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @CHREC_VARIABLE(i64 %102)
  %104 = call i64 @get_number_of_iters_for_loop(i32 %103)
  store i64 %104, i64* %29, align 8
  %105 = load i64, i64* %28, align 8
  %106 = load i64, i64* @NULL_TREE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = load i64, i64* %29, align 8
  %110 = load i64, i64* @NULL_TREE, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108, %98
  %113 = load i64, i64* @dump_file, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* @dump_flags, align 4
  %117 = load i32, i32* @TDF_DETAILS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i64, i64* @dump_file, align 8
  %122 = call i32 @fprintf(i64 %121, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %115, %112
  %124 = load i64, i64* @chrec_dont_know, align 8
  %125 = load i64*, i64** %8, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* @chrec_dont_know, align 8
  %127 = load i64*, i64** %9, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* @chrec_dont_know, align 8
  %129 = load i64*, i64** %10, align 8
  store i64 %128, i64* %129, align 8
  br label %547

130:                                              ; preds = %108
  %131 = load i64, i64* %28, align 8
  %132 = call i32 @int_cst_value(i64 %131)
  store i32 %132, i32* %26, align 4
  %133 = load i64, i64* %29, align 8
  %134 = call i32 @int_cst_value(i64 %133)
  store i32 %134, i32* %27, align 4
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* %27, align 4
  %137 = call i32 @MIN(i32 %135, i32 %136)
  store i32 %137, i32* %25, align 4
  %138 = load i64, i64* %6, align 8
  %139 = call i64 @CHREC_RIGHT(i64 %138)
  %140 = call i32 @int_cst_value(i64 %139)
  store i32 %140, i32* %23, align 4
  %141 = load i64, i64* %7, align 8
  %142 = call i64 @CHREC_RIGHT(i64 %141)
  %143 = call i32 @int_cst_value(i64 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %24, align 4
  %147 = load i64*, i64** %8, align 8
  %148 = load i64*, i64** %9, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = call i32 @compute_overlap_steps_for_affine_univar(i32 %144, i32 %145, i32 %146, i64* %147, i64* %148, i64* %149, i32 1)
  br label %197

151:                                              ; preds = %95, %92
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = load i64*, i64** %8, align 8
  %161 = load i64*, i64** %9, align 8
  %162 = load i64*, i64** %10, align 8
  %163 = call i32 @compute_overlap_steps_for_affine_1_2(i64 %158, i64 %159, i64* %160, i64* %161, i64* %162)
  br label %196

164:                                              ; preds = %154, %151
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load i64*, i64** %9, align 8
  %174 = load i64*, i64** %8, align 8
  %175 = load i64*, i64** %10, align 8
  %176 = call i32 @compute_overlap_steps_for_affine_1_2(i64 %171, i64 %172, i64* %173, i64* %174, i64* %175)
  br label %195

177:                                              ; preds = %167, %164
  %178 = load i64, i64* @dump_file, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %177
  %181 = load i32, i32* @dump_flags, align 4
  %182 = load i32, i32* @TDF_DETAILS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i64, i64* @dump_file, align 8
  %187 = call i32 @fprintf(i64 %186, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180, %177
  %189 = load i64, i64* @chrec_dont_know, align 8
  %190 = load i64*, i64** %8, align 8
  store i64 %189, i64* %190, align 8
  %191 = load i64, i64* @chrec_dont_know, align 8
  %192 = load i64*, i64** %9, align 8
  store i64 %191, i64* %192, align 8
  %193 = load i64, i64* @chrec_dont_know, align 8
  %194 = load i64*, i64** %10, align 8
  store i64 %193, i64* %194, align 8
  br label %195

195:                                              ; preds = %188, %170
  br label %196

196:                                              ; preds = %195, %157
  br label %197

197:                                              ; preds = %196, %130
  br label %547

198:                                              ; preds = %65
  %199 = load i32**, i32*** %20, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load i32**, i32*** %22, align 8
  %202 = load i32**, i32*** %21, align 8
  %203 = call i32 @lambda_matrix_right_hermite(i32** %199, i32 %200, i32 1, i32** %201, i32** %202)
  %204 = load i32**, i32*** %22, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %198
  %211 = load i32**, i32*** %22, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %215, -1
  store i32 %216, i32* %214, align 4
  %217 = load i32**, i32*** %21, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @lambda_matrix_row_negate(i32** %217, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %210, %198
  %221 = load i32**, i32*** %22, align 8
  %222 = getelementptr inbounds i32*, i32** %221, i64 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = load i64, i64* @chrec_dont_know, align 8
  %230 = load i64*, i64** %8, align 8
  store i64 %229, i64* %230, align 8
  %231 = load i64, i64* @chrec_dont_know, align 8
  %232 = load i64*, i64** %9, align 8
  store i64 %231, i64* %232, align 8
  %233 = load i64, i64* @chrec_dont_know, align 8
  %234 = load i64*, i64** %10, align 8
  store i64 %233, i64* %234, align 8
  br label %547

235:                                              ; preds = %220
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @int_divides_p(i32 %236, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %235
  %241 = load i64, i64* @chrec_known, align 8
  %242 = load i64*, i64** %8, align 8
  store i64 %241, i64* %242, align 8
  %243 = load i64, i64* @chrec_known, align 8
  %244 = load i64*, i64** %9, align 8
  store i64 %243, i64* %244, align 8
  %245 = load i64, i64* @integer_zero_node, align 8
  %246 = load i64*, i64** %10, align 8
  store i64 %245, i64* %246, align 8
  br label %546

247:                                              ; preds = %235
  %248 = load i32, i32* %11, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %527

250:                                              ; preds = %247
  %251 = load i32, i32* %12, align 4
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %253, label %527

253:                                              ; preds = %250
  %254 = load i32**, i32*** %20, align 8
  %255 = getelementptr inbounds i32*, i32** %254, i64 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %253
  %261 = load i32**, i32*** %20, align 8
  %262 = getelementptr inbounds i32*, i32** %261, i64 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 0, %265
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %283, label %268

268:                                              ; preds = %260, %253
  %269 = load i32**, i32*** %20, align 8
  %270 = getelementptr inbounds i32*, i32** %269, i64 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %508

275:                                              ; preds = %268
  %276 = load i32**, i32*** %20, align 8
  %277 = getelementptr inbounds i32*, i32** %276, i64 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 0, %280
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %508

283:                                              ; preds = %275, %260
  %284 = load i64, i64* %6, align 8
  %285 = call i32 @CHREC_VARIABLE(i64 %284)
  %286 = call i64 @get_number_of_iters_for_loop(i32 %285)
  store i64 %286, i64* %39, align 8
  %287 = load i64, i64* %7, align 8
  %288 = call i32 @CHREC_VARIABLE(i64 %287)
  %289 = call i64 @get_number_of_iters_for_loop(i32 %288)
  store i64 %289, i64* %40, align 8
  %290 = load i64, i64* %39, align 8
  %291 = load i64, i64* @NULL_TREE, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %297, label %293

293:                                              ; preds = %283
  %294 = load i64, i64* %40, align 8
  %295 = load i64, i64* @NULL_TREE, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %293, %283
  %298 = load i64, i64* @dump_file, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %297
  %301 = load i32, i32* @dump_flags, align 4
  %302 = load i32, i32* @TDF_DETAILS, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load i64, i64* @dump_file, align 8
  %307 = call i32 @fprintf(i64 %306, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %300, %297
  %309 = load i64, i64* @chrec_dont_know, align 8
  %310 = load i64*, i64** %8, align 8
  store i64 %309, i64* %310, align 8
  %311 = load i64, i64* @chrec_dont_know, align 8
  %312 = load i64*, i64** %9, align 8
  store i64 %311, i64* %312, align 8
  %313 = load i64, i64* @chrec_dont_know, align 8
  %314 = load i64*, i64** %10, align 8
  store i64 %313, i64* %314, align 8
  br label %547

315:                                              ; preds = %293
  %316 = load i64, i64* %39, align 8
  %317 = call i32 @int_cst_value(i64 %316)
  store i32 %317, i32* %37, align 4
  %318 = load i64, i64* %40, align 8
  %319 = call i32 @int_cst_value(i64 %318)
  store i32 %319, i32* %38, align 4
  %320 = load i32, i32* %37, align 4
  %321 = load i32, i32* %38, align 4
  %322 = call i32 @MIN(i32 %320, i32 %321)
  store i32 %322, i32* %36, align 4
  %323 = load i32**, i32*** %21, align 8
  %324 = getelementptr inbounds i32*, i32** %323, i64 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %16, align 4
  %329 = mul nsw i32 %327, %328
  %330 = load i32, i32* %17, align 4
  %331 = sdiv i32 %329, %330
  store i32 %331, i32* %30, align 4
  %332 = load i32**, i32*** %21, align 8
  %333 = getelementptr inbounds i32*, i32** %332, i64 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %16, align 4
  %338 = mul nsw i32 %336, %337
  %339 = load i32, i32* %17, align 4
  %340 = sdiv i32 %338, %339
  store i32 %340, i32* %31, align 4
  %341 = load i32**, i32*** %21, align 8
  %342 = getelementptr inbounds i32*, i32** %341, i64 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %32, align 4
  %346 = load i32**, i32*** %21, align 8
  %347 = getelementptr inbounds i32*, i32** %346, i64 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load i32, i32* %349, align 4
  store i32 %350, i32* %33, align 4
  %351 = load i32, i32* %32, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %315
  %354 = load i32, i32* %30, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %353, %315
  %357 = load i32, i32* %33, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %356
  %360 = load i32, i32* %31, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %359, %353
  %363 = load i64, i64* @chrec_known, align 8
  %364 = load i64*, i64** %8, align 8
  store i64 %363, i64* %364, align 8
  %365 = load i64, i64* @chrec_known, align 8
  %366 = load i64*, i64** %9, align 8
  store i64 %365, i64* %366, align 8
  %367 = load i64, i64* @integer_zero_node, align 8
  %368 = load i64*, i64** %10, align 8
  store i64 %367, i64* %368, align 8
  br label %507

369:                                              ; preds = %359, %356
  %370 = load i32, i32* %32, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %488

372:                                              ; preds = %369
  %373 = load i32, i32* %30, align 4
  %374 = sub nsw i32 0, %373
  %375 = load i32, i32* %32, align 4
  %376 = call i32 @CEIL(i32 %374, i32 %375)
  store i32 %376, i32* %18, align 4
  %377 = load i32, i32* %36, align 4
  %378 = load i32, i32* %30, align 4
  %379 = sub nsw i32 %377, %378
  %380 = load i32, i32* %32, align 4
  %381 = call i32 @FLOOR_DIV(i32 %379, i32 %380)
  store i32 %381, i32* %19, align 4
  %382 = load i32, i32* %33, align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %469

384:                                              ; preds = %372
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* %31, align 4
  %387 = sub nsw i32 0, %386
  %388 = load i32, i32* %33, align 4
  %389 = call i32 @CEIL(i32 %387, i32 %388)
  %390 = call i32 @MAX(i32 %385, i32 %389)
  store i32 %390, i32* %18, align 4
  %391 = load i32, i32* %19, align 4
  %392 = load i32, i32* %36, align 4
  %393 = load i32, i32* %31, align 4
  %394 = sub nsw i32 %392, %393
  %395 = load i32, i32* %33, align 4
  %396 = call i32 @FLOOR_DIV(i32 %394, i32 %395)
  %397 = call i32 @MIN(i32 %391, i32 %396)
  store i32 %397, i32* %19, align 4
  %398 = load i32, i32* %32, align 4
  %399 = load i32, i32* %18, align 4
  %400 = mul nsw i32 %398, %399
  %401 = load i32, i32* %30, align 4
  %402 = add nsw i32 %400, %401
  store i32 %402, i32* %34, align 4
  %403 = load i32, i32* %33, align 4
  %404 = load i32, i32* %18, align 4
  %405 = mul nsw i32 %403, %404
  %406 = load i32, i32* %31, align 4
  %407 = add nsw i32 %405, %406
  store i32 %407, i32* %35, align 4
  %408 = load i32, i32* %34, align 4
  %409 = load i32, i32* %32, align 4
  %410 = sdiv i32 %408, %409
  %411 = load i32, i32* %35, align 4
  %412 = load i32, i32* %33, align 4
  %413 = sdiv i32 %411, %412
  %414 = call i32 @MIN(i32 %410, i32 %413)
  store i32 %414, i32* %42, align 4
  %415 = load i32, i32* %32, align 4
  %416 = load i32, i32* %42, align 4
  %417 = mul nsw i32 %415, %416
  %418 = load i32, i32* %34, align 4
  %419 = sub nsw i32 %418, %417
  store i32 %419, i32* %34, align 4
  %420 = load i32, i32* %33, align 4
  %421 = load i32, i32* %42, align 4
  %422 = mul nsw i32 %420, %421
  %423 = load i32, i32* %35, align 4
  %424 = sub nsw i32 %423, %422
  store i32 %424, i32* %35, align 4
  %425 = load i32, i32* %34, align 4
  %426 = load i32, i32* %30, align 4
  %427 = sub nsw i32 %425, %426
  %428 = load i32, i32* %32, align 4
  %429 = sdiv i32 %427, %428
  store i32 %429, i32* %18, align 4
  %430 = load i32, i32* %19, align 4
  %431 = load i32, i32* %18, align 4
  %432 = sub nsw i32 %430, %431
  store i32 %432, i32* %41, align 4
  %433 = load i32, i32* %34, align 4
  %434 = load i32, i32* %36, align 4
  %435 = icmp sgt i32 %433, %434
  br i1 %435, label %440, label %436

436:                                              ; preds = %384
  %437 = load i32, i32* %35, align 4
  %438 = load i32, i32* %36, align 4
  %439 = icmp sgt i32 %437, %438
  br i1 %439, label %440, label %447

440:                                              ; preds = %436, %384
  %441 = load i64, i64* @chrec_known, align 8
  %442 = load i64*, i64** %8, align 8
  store i64 %441, i64* %442, align 8
  %443 = load i64, i64* @chrec_known, align 8
  %444 = load i64*, i64** %9, align 8
  store i64 %443, i64* %444, align 8
  %445 = load i64, i64* @integer_zero_node, align 8
  %446 = load i64*, i64** %10, align 8
  store i64 %445, i64* %446, align 8
  br label %468

447:                                              ; preds = %436
  %448 = load i64, i64* @NULL_TREE, align 8
  %449 = load i32, i32* %34, align 4
  %450 = call i64 @build_int_cst(i64 %448, i32 %449)
  %451 = load i64, i64* @NULL_TREE, align 8
  %452 = load i32, i32* %32, align 4
  %453 = call i64 @build_int_cst(i64 %451, i32 %452)
  %454 = call i64 @build_polynomial_chrec(i32 1, i64 %450, i64 %453)
  %455 = load i64*, i64** %8, align 8
  store i64 %454, i64* %455, align 8
  %456 = load i64, i64* @NULL_TREE, align 8
  %457 = load i32, i32* %35, align 4
  %458 = call i64 @build_int_cst(i64 %456, i32 %457)
  %459 = load i64, i64* @NULL_TREE, align 8
  %460 = load i32, i32* %33, align 4
  %461 = call i64 @build_int_cst(i64 %459, i32 %460)
  %462 = call i64 @build_polynomial_chrec(i32 1, i64 %458, i64 %461)
  %463 = load i64*, i64** %9, align 8
  store i64 %462, i64* %463, align 8
  %464 = load i64, i64* @NULL_TREE, align 8
  %465 = load i32, i32* %41, align 4
  %466 = call i64 @build_int_cst(i64 %464, i32 %465)
  %467 = load i64*, i64** %10, align 8
  store i64 %466, i64* %467, align 8
  br label %468

468:                                              ; preds = %447, %440
  br label %487

469:                                              ; preds = %372
  %470 = load i64, i64* @dump_file, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %469
  %473 = load i32, i32* @dump_flags, align 4
  %474 = load i32, i32* @TDF_DETAILS, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %472
  %478 = load i64, i64* @dump_file, align 8
  %479 = call i32 @fprintf(i64 %478, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %480

480:                                              ; preds = %477, %472, %469
  %481 = load i64, i64* @chrec_dont_know, align 8
  %482 = load i64*, i64** %8, align 8
  store i64 %481, i64* %482, align 8
  %483 = load i64, i64* @chrec_dont_know, align 8
  %484 = load i64*, i64** %9, align 8
  store i64 %483, i64* %484, align 8
  %485 = load i64, i64* @chrec_dont_know, align 8
  %486 = load i64*, i64** %10, align 8
  store i64 %485, i64* %486, align 8
  br label %487

487:                                              ; preds = %480, %468
  br label %506

488:                                              ; preds = %369
  %489 = load i64, i64* @dump_file, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %499

491:                                              ; preds = %488
  %492 = load i32, i32* @dump_flags, align 4
  %493 = load i32, i32* @TDF_DETAILS, align 4
  %494 = and i32 %492, %493
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %491
  %497 = load i64, i64* @dump_file, align 8
  %498 = call i32 @fprintf(i64 %497, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %499

499:                                              ; preds = %496, %491, %488
  %500 = load i64, i64* @chrec_dont_know, align 8
  %501 = load i64*, i64** %8, align 8
  store i64 %500, i64* %501, align 8
  %502 = load i64, i64* @chrec_dont_know, align 8
  %503 = load i64*, i64** %9, align 8
  store i64 %502, i64* %503, align 8
  %504 = load i64, i64* @chrec_dont_know, align 8
  %505 = load i64*, i64** %10, align 8
  store i64 %504, i64* %505, align 8
  br label %506

506:                                              ; preds = %499, %487
  br label %507

507:                                              ; preds = %506, %362
  br label %526

508:                                              ; preds = %275, %268
  %509 = load i64, i64* @dump_file, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %519

511:                                              ; preds = %508
  %512 = load i32, i32* @dump_flags, align 4
  %513 = load i32, i32* @TDF_DETAILS, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = load i64, i64* @dump_file, align 8
  %518 = call i32 @fprintf(i64 %517, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %519

519:                                              ; preds = %516, %511, %508
  %520 = load i64, i64* @chrec_dont_know, align 8
  %521 = load i64*, i64** %8, align 8
  store i64 %520, i64* %521, align 8
  %522 = load i64, i64* @chrec_dont_know, align 8
  %523 = load i64*, i64** %9, align 8
  store i64 %522, i64* %523, align 8
  %524 = load i64, i64* @chrec_dont_know, align 8
  %525 = load i64*, i64** %10, align 8
  store i64 %524, i64* %525, align 8
  br label %526

526:                                              ; preds = %519, %507
  br label %545

527:                                              ; preds = %250, %247
  %528 = load i64, i64* @dump_file, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %538

530:                                              ; preds = %527
  %531 = load i32, i32* @dump_flags, align 4
  %532 = load i32, i32* @TDF_DETAILS, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %538

535:                                              ; preds = %530
  %536 = load i64, i64* @dump_file, align 8
  %537 = call i32 @fprintf(i64 %536, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %538

538:                                              ; preds = %535, %530, %527
  %539 = load i64, i64* @chrec_dont_know, align 8
  %540 = load i64*, i64** %8, align 8
  store i64 %539, i64* %540, align 8
  %541 = load i64, i64* @chrec_dont_know, align 8
  %542 = load i64*, i64** %9, align 8
  store i64 %541, i64* %542, align 8
  %543 = load i64, i64* @chrec_dont_know, align 8
  %544 = load i64*, i64** %10, align 8
  store i64 %543, i64* %544, align 8
  br label %545

545:                                              ; preds = %538, %526
  br label %546

546:                                              ; preds = %545, %240
  br label %547

547:                                              ; preds = %546, %308, %228, %197, %123
  %548 = load i64, i64* @dump_file, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %572

550:                                              ; preds = %547
  %551 = load i32, i32* @dump_flags, align 4
  %552 = load i32, i32* @TDF_DETAILS, align 4
  %553 = and i32 %551, %552
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %572

555:                                              ; preds = %550
  %556 = load i64, i64* @dump_file, align 8
  %557 = call i32 @fprintf(i64 %556, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %558 = load i64, i64* @dump_file, align 8
  %559 = load i64*, i64** %8, align 8
  %560 = load i64, i64* %559, align 8
  %561 = call i32 @print_generic_expr(i64 %558, i64 %560, i32 0)
  %562 = load i64, i64* @dump_file, align 8
  %563 = call i32 @fprintf(i64 %562, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %564 = load i64, i64* @dump_file, align 8
  %565 = load i64*, i64** %9, align 8
  %566 = load i64, i64* %565, align 8
  %567 = call i32 @print_generic_expr(i64 %564, i64 %566, i32 0)
  %568 = load i64, i64* @dump_file, align 8
  %569 = call i32 @fprintf(i64 %568, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %570 = load i64, i64* @dump_file, align 8
  %571 = call i32 @fprintf(i64 %570, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %572

572:                                              ; preds = %47, %555, %550, %547
  ret void
}

declare dso_local i64 @eq_evolutions_p(i64, i64) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @nb_vars_in_chrec(i64) #1

declare dso_local i32** @lambda_matrix_new(i32, i32) #1

declare dso_local i32 @initialize_matrix_A(i32**, i64, i32, i32) #1

declare dso_local i64 @get_number_of_iters_for_loop(i32) #1

declare dso_local i32 @CHREC_VARIABLE(i64) #1

declare dso_local i32 @int_cst_value(i64) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @CHREC_RIGHT(i64) #1

declare dso_local i32 @compute_overlap_steps_for_affine_univar(i32, i32, i32, i64*, i64*, i64*, i32) #1

declare dso_local i32 @compute_overlap_steps_for_affine_1_2(i64, i64, i64*, i64*, i64*) #1

declare dso_local i32 @lambda_matrix_right_hermite(i32**, i32, i32, i32**, i32**) #1

declare dso_local i32 @lambda_matrix_row_negate(i32**, i32, i32) #1

declare dso_local i32 @int_divides_p(i32, i32) #1

declare dso_local i32 @CEIL(i32, i32) #1

declare dso_local i32 @FLOOR_DIV(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @build_polynomial_chrec(i32, i64, i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
