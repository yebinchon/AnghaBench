; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_offset_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_analyze_offset_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@ssizetype = common dso_local global i32 0, align 4
@chrec_dont_know = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"\0ANot binary expression \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MIN_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.loop*, i64*, i64*, i64*, i64*)* @analyze_offset_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_offset_expr(i64 %0, %struct.loop* %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.loop*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store %struct.loop* %1, %struct.loop** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %28 = call i64 @ssize_int(i32 0)
  store i64 %28, i64* %16, align 8
  %29 = call i64 @ssize_int(i32 0)
  store i64 %29, i64* %17, align 8
  %30 = call i64 @ssize_int(i32 0)
  store i64 %30, i64* %18, align 8
  %31 = call i64 @ssize_int(i32 0)
  store i64 %31, i64* %19, align 8
  %32 = call i64 @ssize_int(i32 0)
  store i64 %32, i64* %20, align 8
  %33 = call i64 @ssize_int(i32 0)
  store i64 %33, i64* %21, align 8
  %34 = load i64, i64* @NULL_TREE, align 8
  store i64 %34, i64* %25, align 8
  %35 = load i64, i64* @NULL_TREE, align 8
  store i64 %35, i64* %26, align 8
  %36 = load i64, i64* @NULL_TREE, align 8
  %37 = load i64*, i64** %13, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* @NULL_TREE, align 8
  %41 = load i64*, i64** %12, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* @NULL_TREE, align 8
  %43 = load i64*, i64** %10, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @strip_conversion(i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %315

49:                                               ; preds = %6
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @INTEGER_CST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* @ssizetype, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @fold_convert(i32 %55, i64 %56)
  %58 = load i64*, i64** %10, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* @ssizetype, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @fold_convert(i32 %59, i64 %60)
  %62 = load i64*, i64** %11, align 8
  store i64 %61, i64* %62, align 8
  %63 = call i64 @ssize_int(i32 0)
  %64 = load i64*, i64** %13, align 8
  store i64 %63, i64* %64, align 8
  store i32 1, i32* %7, align 4
  br label %315

65:                                               ; preds = %49
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @SSA_VAR_P(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %65
  %70 = load %struct.loop*, %struct.loop** %9, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @analyze_scalar_evolution(%struct.loop* %70, i64 %71)
  store i64 %72, i64* %27, align 8
  %73 = load i64, i64* %27, align 8
  %74 = load i64, i64* @chrec_dont_know, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %315

77:                                               ; preds = %69
  %78 = load i64, i64* %27, align 8
  %79 = load %struct.loop*, %struct.loop** %9, align 8
  %80 = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @initial_condition_in_loop_num(i64 %78, i32 %81)
  store i64 %82, i64* %23, align 8
  %83 = load %struct.loop*, %struct.loop** %9, align 8
  %84 = load i64, i64* %23, align 8
  %85 = call i32 @expr_invariant_in_loop_p(%struct.loop* %83, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  store i32 0, i32* %7, align 4
  br label %315

88:                                               ; preds = %77
  %89 = load i64, i64* %27, align 8
  %90 = load %struct.loop*, %struct.loop** %9, align 8
  %91 = getelementptr inbounds %struct.loop, %struct.loop* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @evolution_part_in_loop_num(i64 %89, i32 %92)
  store i64 %93, i64* %24, align 8
  %94 = load i64, i64* %24, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load i64, i64* %24, align 8
  %98 = call i64 @TREE_CODE(i64 %97)
  %99 = load i64, i64* @INTEGER_CST, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %315

102:                                              ; preds = %96, %88
  %103 = load i64, i64* %23, align 8
  %104 = call i64 @TREE_CODE(i64 %103)
  %105 = load i64, i64* @INTEGER_CST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @ssizetype, align 4
  %109 = load i64, i64* %23, align 8
  %110 = call i64 @fold_convert(i32 %108, i64 %109)
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  br label %115

112:                                              ; preds = %102
  %113 = load i64, i64* @NULL_TREE, align 8
  %114 = load i64*, i64** %11, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @ssizetype, align 4
  %117 = load i64, i64* %23, align 8
  %118 = call i64 @fold_convert(i32 %116, i64 %117)
  %119 = load i64*, i64** %10, align 8
  store i64 %118, i64* %119, align 8
  %120 = load i64, i64* %24, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @ssizetype, align 4
  %124 = load i64, i64* %24, align 8
  %125 = call i64 @fold_convert(i32 %123, i64 %124)
  br label %128

126:                                              ; preds = %115
  %127 = call i64 @ssize_int(i32 0)
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i64 [ %125, %122 ], [ %127, %126 ]
  %130 = load i64*, i64** %13, align 8
  store i64 %129, i64* %130, align 8
  store i32 1, i32* %7, align 4
  br label %315

131:                                              ; preds = %65
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @BINARY_CLASS_P(i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* @dump_file, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load i32, i32* @dump_flags, align 4
  %140 = load i32, i32* @TDF_DETAILS, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i64, i64* @dump_file, align 8
  %145 = call i32 @fprintf(i64 %144, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %146 = load i64, i64* @dump_file, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* @TDF_SLIM, align 4
  %149 = call i32 @print_generic_expr(i64 %146, i64 %147, i32 %148)
  %150 = load i64, i64* @dump_file, align 8
  %151 = call i32 @fprintf(i64 %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %143, %138, %135
  store i32 0, i32* %7, align 4
  br label %315

153:                                              ; preds = %131
  %154 = load i64, i64* %8, align 8
  %155 = call i64 @TREE_OPERAND(i64 %154, i32 0)
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %8, align 8
  %157 = call i64 @TREE_OPERAND(i64 %156, i32 1)
  store i64 %157, i64* %15, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load %struct.loop*, %struct.loop** %9, align 8
  %160 = call i32 @analyze_offset_expr(i64 %158, %struct.loop* %159, i64* %16, i64* %18, i64* %25, i64* %20)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = load i64, i64* %15, align 8
  %164 = load %struct.loop*, %struct.loop** %9, align 8
  %165 = call i32 @analyze_offset_expr(i64 %163, %struct.loop* %164, i64* %17, i64* %19, i64* %26, i64* %21)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %162, %153
  store i32 0, i32* %7, align 4
  br label %315

168:                                              ; preds = %162
  %169 = load i64, i64* %8, align 8
  %170 = call i64 @TREE_CODE(i64 %169)
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %22, align 4
  switch i32 %172, label %303 [
    i32 129, label %173
    i32 128, label %236
    i32 130, label %236
  ]

173:                                              ; preds = %168
  %174 = load i64, i64* %17, align 8
  %175 = call i64 @TREE_CODE(i64 %174)
  %176 = load i64, i64* @INTEGER_CST, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store i32 0, i32* %7, align 4
  br label %315

179:                                              ; preds = %173
  %180 = load i64, i64* %16, align 8
  %181 = call i64 @strip_conversion(i64 %180)
  store i64 %181, i64* %16, align 8
  %182 = load i64, i64* %16, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %315

185:                                              ; preds = %179
  %186 = load i64, i64* %16, align 8
  %187 = call i64 @SSA_VAR_P(i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i64, i64* @NULL_TREE, align 8
  %191 = load i64*, i64** %11, align 8
  store i64 %190, i64* %191, align 8
  %192 = load i64, i64* %17, align 8
  %193 = call i32 @highest_pow2_factor(i64 %192)
  %194 = call i64 @ssize_int(i32 %193)
  %195 = load i64*, i64** %12, align 8
  store i64 %194, i64* %195, align 8
  br label %231

196:                                              ; preds = %185
  %197 = load i64, i64* %18, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %227

199:                                              ; preds = %196
  %200 = load i32, i32* %22, align 4
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* %19, align 8
  %203 = call i64 @size_binop(i32 %200, i64 %201, i64 %202)
  %204 = load i64*, i64** %11, align 8
  store i64 %203, i64* %204, align 8
  %205 = load i64, i64* %25, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %199
  %208 = load i64, i64* %26, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i32, i32* @MIN_EXPR, align 4
  %212 = load i64, i64* %25, align 8
  %213 = load i64, i64* %26, align 8
  %214 = call i64 @size_binop(i32 %211, i64 %212, i64 %213)
  %215 = load i64*, i64** %12, align 8
  store i64 %214, i64* %215, align 8
  br label %226

216:                                              ; preds = %207, %199
  %217 = load i64, i64* %25, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i64, i64* %25, align 8
  br label %223

221:                                              ; preds = %216
  %222 = load i64, i64* %26, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  %225 = load i64*, i64** %12, align 8
  store i64 %224, i64* %225, align 8
  br label %226

226:                                              ; preds = %223, %210
  br label %230

227:                                              ; preds = %196
  %228 = load i64, i64* @NULL_TREE, align 8
  %229 = load i64*, i64** %11, align 8
  store i64 %228, i64* %229, align 8
  br label %230

230:                                              ; preds = %227, %226
  br label %231

231:                                              ; preds = %230, %189
  %232 = load i64, i64* %20, align 8
  %233 = load i64, i64* %17, align 8
  %234 = call i64 @size_binop(i32 129, i64 %232, i64 %233)
  %235 = load i64*, i64** %13, align 8
  store i64 %234, i64* %235, align 8
  br label %305

236:                                              ; preds = %168, %168
  %237 = load i32, i32* %22, align 4
  %238 = load i64, i64* %20, align 8
  %239 = load i64, i64* %21, align 8
  %240 = call i64 @size_binop(i32 %237, i64 %238, i64 %239)
  %241 = load i64*, i64** %13, align 8
  store i64 %240, i64* %241, align 8
  %242 = load i64, i64* %18, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %236
  %245 = load i64, i64* %25, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244, %236
  %248 = load i64, i64* %19, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %247
  %251 = load i64, i64* %26, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %250, %244
  %254 = load i64, i64* @NULL_TREE, align 8
  %255 = load i64*, i64** %11, align 8
  store i64 %254, i64* %255, align 8
  %256 = load i64, i64* @NULL_TREE, align 8
  %257 = load i64*, i64** %12, align 8
  store i64 %256, i64* %257, align 8
  br label %305

258:                                              ; preds = %250, %247
  %259 = load i64, i64* %18, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load i64, i64* %19, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32, i32* %22, align 4
  %266 = load i64, i64* %18, align 8
  %267 = load i64, i64* %19, align 8
  %268 = call i64 @size_binop(i32 %265, i64 %266, i64 %267)
  %269 = load i64*, i64** %11, align 8
  store i64 %268, i64* %269, align 8
  br label %280

270:                                              ; preds = %261, %258
  %271 = load i64, i64* %18, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i64, i64* %18, align 8
  br label %277

275:                                              ; preds = %270
  %276 = load i64, i64* %19, align 8
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi i64 [ %274, %273 ], [ %276, %275 ]
  %279 = load i64*, i64** %11, align 8
  store i64 %278, i64* %279, align 8
  br label %280

280:                                              ; preds = %277, %264
  %281 = load i64, i64* %25, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load i64, i64* %26, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load i32, i32* @MIN_EXPR, align 4
  %288 = load i64, i64* %25, align 8
  %289 = load i64, i64* %26, align 8
  %290 = call i64 @size_binop(i32 %287, i64 %288, i64 %289)
  %291 = load i64*, i64** %12, align 8
  store i64 %290, i64* %291, align 8
  br label %302

292:                                              ; preds = %283, %280
  %293 = load i64, i64* %25, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i64, i64* %25, align 8
  br label %299

297:                                              ; preds = %292
  %298 = load i64, i64* %26, align 8
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i64 [ %296, %295 ], [ %298, %297 ]
  %301 = load i64*, i64** %12, align 8
  store i64 %300, i64* %301, align 8
  br label %302

302:                                              ; preds = %299, %286
  br label %305

303:                                              ; preds = %168
  %304 = call i32 (...) @gcc_unreachable()
  br label %305

305:                                              ; preds = %303, %302, %253, %231
  %306 = load i32, i32* @ssizetype, align 4
  %307 = load i32, i32* %22, align 4
  %308 = load i64, i64* %16, align 8
  %309 = call i32 @TREE_TYPE(i64 %308)
  %310 = load i64, i64* %16, align 8
  %311 = load i64, i64* %17, align 8
  %312 = call i64 @fold_build2(i32 %307, i32 %309, i64 %310, i64 %311)
  %313 = call i64 @fold_convert(i32 %306, i64 %312)
  %314 = load i64*, i64** %10, align 8
  store i64 %313, i64* %314, align 8
  store i32 1, i32* %7, align 4
  br label %315

315:                                              ; preds = %305, %184, %178, %167, %152, %128, %101, %87, %76, %54, %48
  %316 = load i32, i32* %7, align 4
  ret i32 %316
}

declare dso_local i64 @ssize_int(i32) #1

declare dso_local i64 @strip_conversion(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @fold_convert(i32, i64) #1

declare dso_local i64 @SSA_VAR_P(i64) #1

declare dso_local i64 @analyze_scalar_evolution(%struct.loop*, i64) #1

declare dso_local i64 @initial_condition_in_loop_num(i64, i32) #1

declare dso_local i32 @expr_invariant_in_loop_p(%struct.loop*, i64) #1

declare dso_local i64 @evolution_part_in_loop_num(i64, i32) #1

declare dso_local i32 @BINARY_CLASS_P(i64) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_expr(i64, i64, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @highest_pow2_factor(i64) #1

declare dso_local i64 @size_binop(i32, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @fold_build2(i32, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
