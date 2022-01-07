; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_compute_auxillary_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_lambda-code.c_lambda_compute_auxillary_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lambda_compute_auxillary_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lambda_compute_auxillary_space(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @LN_DEPTH(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @LN_INVARIANTS(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32** @lambda_matrix_new(i32 128, i32 %24)
  store i32** %25, i32*** %5, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32** @lambda_matrix_new(i32 128, i32 %26)
  store i32** %27, i32*** %6, align 8
  %28 = call i32* @lambda_vector_new(i32 128)
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32** @lambda_matrix_new(i32 128, i32 %29)
  store i32** %30, i32*** %7, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32** @lambda_matrix_new(i32 128, i32 %31)
  store i32** %32, i32*** %8, align 8
  %33 = call i32* @lambda_vector_new(i32 128)
  store i32* %33, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %262, %2
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %265

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32* @LN_LOOPS(i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i64 @LL_STEP(i32 %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %17, align 4
  %50 = call i32* @LL_LOWER_BOUND(i32 %49)
  store i32* %50, i32** %18, align 8
  br label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %17, align 4
  %53 = call i32* @LL_UPPER_BOUND(i32 %52)
  store i32* %53, i32** %18, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %153, %54
  %56 = load i32*, i32** %18, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %156

58:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load i32*, i32** %18, align 8
  %65 = call i32* @LLE_COEFFICIENTS(i32* %64)
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32**, i32*** %5, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %69, i32* %77, align 4
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %16, align 4
  br label %59

81:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %101, %81
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load i32*, i32** %18, align 8
  %88 = call i32* @LLE_INVARIANT_COEFFICIENTS(i32* %87)
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %92, i32* %100, align 4
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load i32*, i32** %18, align 8
  %106 = call i32 @LLE_CONSTANT(i32* %105)
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = call i32 @LLE_DENOMINATOR(i32* %111)
  %113 = mul nsw i32 -1, %112
  %114 = load i32**, i32*** %5, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %113, i32* %121, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, -1
  store i32 %127, i32* %125, align 4
  store i32 0, i32* %16, align 4
  br label %128

128:                                              ; preds = %143, %104
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load i32**, i32*** %6, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %128

146:                                              ; preds = %128
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp sle i32 %149, 127
  %151 = zext i1 %150 to i32
  %152 = call i32 @gcc_assert(i32 %151)
  br label %153

153:                                              ; preds = %146
  %154 = load i32*, i32** %18, align 8
  %155 = call i32* @LLE_NEXT(i32* %154)
  store i32* %155, i32** %18, align 8
  br label %55

156:                                              ; preds = %55
  %157 = load i32, i32* %17, align 4
  %158 = call i64 @LL_STEP(i32 %157)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %17, align 4
  %162 = call i32* @LL_UPPER_BOUND(i32 %161)
  store i32* %162, i32** %18, align 8
  br label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %17, align 4
  %165 = call i32* @LL_LOWER_BOUND(i32 %164)
  store i32* %165, i32** %18, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %258, %166
  %168 = load i32*, i32** %18, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %261

170:                                              ; preds = %167
  store i32 0, i32* %16, align 4
  br label %171

171:                                              ; preds = %190, %170
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %193

175:                                              ; preds = %171
  %176 = load i32*, i32** %18, align 8
  %177 = call i32* @LLE_COEFFICIENTS(i32* %176)
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32**, i32*** %5, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %181, i32* %189, align 4
  br label %190

190:                                              ; preds = %175
  %191 = load i32, i32* %16, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %16, align 4
  br label %171

193:                                              ; preds = %171
  store i32 0, i32* %16, align 4
  br label %194

194:                                              ; preds = %213, %193
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load i32*, i32** %18, align 8
  %200 = call i32* @LLE_INVARIANT_COEFFICIENTS(i32* %199)
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32**, i32*** %6, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %204, i32* %212, align 4
  br label %213

213:                                              ; preds = %198
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %194

216:                                              ; preds = %194
  %217 = load i32*, i32** %18, align 8
  %218 = call i32 @LLE_CONSTANT(i32* %217)
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %218, i32* %222, align 4
  store i32 0, i32* %16, align 4
  br label %223

223:                                              ; preds = %238, %216
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = load i32**, i32*** %5, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %236, -1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %227
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %223

241:                                              ; preds = %223
  %242 = load i32*, i32** %18, align 8
  %243 = call i32 @LLE_DENOMINATOR(i32* %242)
  %244 = load i32**, i32*** %5, align 8
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %243, i32* %251, align 4
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %14, align 4
  %254 = load i32, i32* %14, align 4
  %255 = icmp sle i32 %254, 127
  %256 = zext i1 %255 to i32
  %257 = call i32 @gcc_assert(i32 %256)
  br label %258

258:                                              ; preds = %241
  %259 = load i32*, i32** %18, align 8
  %260 = call i32* @LLE_NEXT(i32* %259)
  store i32* %260, i32** %18, align 8
  br label %167

261:                                              ; preds = %167
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %15, align 4
  br label %34

265:                                              ; preds = %34
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @lambda_lattice_compute_base(i32 %266)
  store i32 %267, i32* %19, align 4
  %268 = load i32**, i32*** %5, align 8
  %269 = load i32, i32* %19, align 4
  %270 = call i32** @LATTICE_BASE(i32 %269)
  %271 = load i32**, i32*** %7, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @lambda_matrix_mult(i32** %268, i32** %270, i32** %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32**, i32*** %5, align 8
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @LATTICE_ORIGIN(i32 %279)
  %281 = load i32*, i32** %10, align 8
  %282 = call i32 @lambda_matrix_vector_mult(i32** %276, i32 %277, i32 %278, i32 %280, i32* %281)
  %283 = load i32*, i32** %9, align 8
  %284 = load i32*, i32** %10, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @lambda_vector_add_mc(i32* %283, i32 1, i32* %284, i32 -1, i32* %285, i32 %286)
  %288 = load i32**, i32*** %5, align 8
  %289 = load i32, i32* %19, align 4
  %290 = call i32** @LATTICE_ORIGIN_INVARIANTS(i32 %289)
  %291 = load i32**, i32*** %8, align 8
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @lambda_matrix_mult(i32** %288, i32** %290, i32** %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32**, i32*** %6, align 8
  %297 = load i32**, i32*** %8, align 8
  %298 = load i32**, i32*** %8, align 8
  %299 = load i32, i32* %14, align 4
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @lambda_matrix_add_mc(i32** %296, i32 1, i32** %297, i32 -1, i32** %298, i32 %299, i32 %300)
  %302 = load i32, i32* %12, align 4
  %303 = load i32, i32* %12, align 4
  %304 = call i32** @lambda_matrix_new(i32 %302, i32 %303)
  store i32** %304, i32*** %11, align 8
  %305 = load i32, i32* %4, align 4
  %306 = call i32 @LTM_MATRIX(i32 %305)
  %307 = load i32**, i32*** %11, align 8
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @lambda_matrix_inverse(i32 %306, i32** %307, i32 %308)
  %310 = load i32**, i32*** %7, align 8
  %311 = load i32**, i32*** %11, align 8
  %312 = load i32**, i32*** %5, align 8
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @lambda_matrix_mult(i32** %310, i32** %311, i32** %312, i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* %13, align 4
  %320 = load i32**, i32*** %5, align 8
  %321 = load i32**, i32*** %8, align 8
  %322 = load i32*, i32** %10, align 8
  %323 = call i32 @compute_nest_using_fourier_motzkin(i32 %317, i32 %318, i32 %319, i32** %320, i32** %321, i32* %322)
  ret i32 %323
}

declare dso_local i32 @LN_DEPTH(i32) #1

declare dso_local i32 @LN_INVARIANTS(i32) #1

declare dso_local i32** @lambda_matrix_new(i32, i32) #1

declare dso_local i32* @lambda_vector_new(i32) #1

declare dso_local i32* @LN_LOOPS(i32) #1

declare dso_local i64 @LL_STEP(i32) #1

declare dso_local i32* @LL_LOWER_BOUND(i32) #1

declare dso_local i32* @LL_UPPER_BOUND(i32) #1

declare dso_local i32* @LLE_COEFFICIENTS(i32*) #1

declare dso_local i32* @LLE_INVARIANT_COEFFICIENTS(i32*) #1

declare dso_local i32 @LLE_CONSTANT(i32*) #1

declare dso_local i32 @LLE_DENOMINATOR(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @LLE_NEXT(i32*) #1

declare dso_local i32 @lambda_lattice_compute_base(i32) #1

declare dso_local i32 @lambda_matrix_mult(i32**, i32**, i32**, i32, i32, i32) #1

declare dso_local i32** @LATTICE_BASE(i32) #1

declare dso_local i32 @lambda_matrix_vector_mult(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @LATTICE_ORIGIN(i32) #1

declare dso_local i32 @lambda_vector_add_mc(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32** @LATTICE_ORIGIN_INVARIANTS(i32) #1

declare dso_local i32 @lambda_matrix_add_mc(i32**, i32, i32**, i32, i32**, i32, i32) #1

declare dso_local i32 @lambda_matrix_inverse(i32, i32**, i32) #1

declare dso_local i32 @LTM_MATRIX(i32) #1

declare dso_local i32 @compute_nest_using_fourier_motzkin(i32, i32, i32, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
