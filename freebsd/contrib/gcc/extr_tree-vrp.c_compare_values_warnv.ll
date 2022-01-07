; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_values_warnv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_compare_values_warnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i64 0, align 8
@MINUS_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@NEGATE_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@boolean_type_node = common dso_local global i32 0, align 4
@boolean_true_node = common dso_local global i64 0, align 8
@GT_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @compare_values_warnv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_values_warnv(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %388

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @TREE_TYPE(i64 %20)
  %22 = call i64 @POINTER_TYPE_P(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @TREE_TYPE(i64 %23)
  %25 = call i64 @POINTER_TYPE_P(i32 %24)
  %26 = icmp eq i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @SSA_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %19
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @PLUS_EXPR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @MINUS_EXPR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %282

43:                                               ; preds = %38, %33, %19
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @TREE_CODE(i64 %44)
  %46 = load i64, i64* @SSA_NAME, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @PLUS_EXPR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @MINUS_EXPR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %282

58:                                               ; preds = %53, %48, %43
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @SSA_NAME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i64, i64* @SSA_NAME, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* @NULL_TREE, align 8
  store i64 %67, i64* %9, align 8
  br label %106

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  %70 = call i64 @TREE_CODE(i64 %69)
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TREE_OPERAND(i64 %72, i32 0)
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @TREE_OPERAND(i64 %74, i32 1)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @tree_int_cst_sgn(i64 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %105

79:                                               ; preds = %68
  %80 = load i64, i64* %9, align 8
  %81 = call i64 @is_negative_overflow_infinity(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -2, i32* %4, align 4
  br label %388

84:                                               ; preds = %79
  %85 = load i32, i32* @NEGATE_EXPR, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @TREE_TYPE(i64 %86)
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @fold_unary_to_constant(i32 %85, i32 %87, i64 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  store i32 -2, i32* %4, align 4
  br label %388

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* @MINUS_EXPR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* @PLUS_EXPR, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @MINUS_EXPR, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %68
  br label %106

106:                                              ; preds = %105, %63
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @TREE_CODE(i64 %107)
  %109 = load i64, i64* @SSA_NAME, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* @SSA_NAME, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* @NULL_TREE, align 8
  store i64 %115, i64* %11, align 8
  br label %154

116:                                              ; preds = %106
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @TREE_CODE(i64 %117)
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @TREE_OPERAND(i64 %120, i32 0)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @TREE_OPERAND(i64 %122, i32 1)
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @tree_int_cst_sgn(i64 %124)
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %153

127:                                              ; preds = %116
  %128 = load i64, i64* %11, align 8
  %129 = call i64 @is_negative_overflow_infinity(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 -2, i32* %4, align 4
  br label %388

132:                                              ; preds = %127
  %133 = load i32, i32* @NEGATE_EXPR, align 4
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @TREE_TYPE(i64 %134)
  %136 = load i64, i64* %11, align 8
  %137 = call i64 @fold_unary_to_constant(i32 %133, i32 %135, i64 %136)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  store i32 -2, i32* %4, align 4
  br label %388

141:                                              ; preds = %132
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = load i64, i64* @MINUS_EXPR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i64, i64* @PLUS_EXPR, align 8
  br label %150

148:                                              ; preds = %141
  %149 = load i64, i64* @MINUS_EXPR, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i64 [ %147, %146 ], [ %149, %148 ]
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %150, %116
  br label %154

154:                                              ; preds = %153, %111
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 -2, i32* %4, align 4
  br label %388

159:                                              ; preds = %154
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* @SSA_NAME, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* @SSA_NAME, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 0, i32* %4, align 4
  br label %388

170:                                              ; preds = %164, %159
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @TREE_TYPE(i64 %171)
  %173 = call i32 @TYPE_OVERFLOW_UNDEFINED(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  store i32 -2, i32* %4, align 4
  br label %388

176:                                              ; preds = %170
  %177 = load i32*, i32** %7, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load i32, i32* %12, align 4
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* @SSA_NAME, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = load i64, i64* %5, align 8
  %186 = call i32 @TREE_NO_WARNING(i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %199, label %188

188:                                              ; preds = %184, %179
  %189 = load i32, i32* %13, align 4
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* @SSA_NAME, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %188
  %194 = load i64, i64* %6, align 8
  %195 = call i32 @TREE_NO_WARNING(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193, %188
  %198 = load i32*, i32** %7, align 8
  store i32 1, i32* %198, align 4
  br label %199

199:                                              ; preds = %197, %193, %184, %176
  %200 = load i32, i32* %12, align 4
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* @SSA_NAME, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* @PLUS_EXPR, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 -1, i32* %4, align 4
  br label %388

210:                                              ; preds = %204
  %211 = load i32, i32* %13, align 4
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* @MINUS_EXPR, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 1, i32* %4, align 4
  br label %388

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %216
  br label %280

218:                                              ; preds = %199
  %219 = load i32, i32* %12, align 4
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* @PLUS_EXPR, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %248

223:                                              ; preds = %218
  %224 = load i32, i32* %13, align 4
  %225 = zext i32 %224 to i64
  %226 = load i64, i64* @SSA_NAME, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  store i32 1, i32* %4, align 4
  br label %388

229:                                              ; preds = %223
  %230 = load i32, i32* %13, align 4
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* @PLUS_EXPR, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i32*, i32** %7, align 8
  %238 = call i32 @compare_values_warnv(i64 %235, i64 %236, i32* %237)
  store i32 %238, i32* %4, align 4
  br label %388

239:                                              ; preds = %229
  %240 = load i32, i32* %13, align 4
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* @MINUS_EXPR, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %388

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  br label %279

248:                                              ; preds = %218
  %249 = load i32, i32* %12, align 4
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* @MINUS_EXPR, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %278

253:                                              ; preds = %248
  %254 = load i32, i32* %13, align 4
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* @SSA_NAME, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  store i32 -1, i32* %4, align 4
  br label %388

259:                                              ; preds = %253
  %260 = load i32, i32* %13, align 4
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* @PLUS_EXPR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  store i32 -1, i32* %4, align 4
  br label %388

265:                                              ; preds = %259
  %266 = load i32, i32* %13, align 4
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* @MINUS_EXPR, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i64, i64* %11, align 8
  %272 = load i64, i64* %9, align 8
  %273 = load i32*, i32** %7, align 8
  %274 = call i32 @compare_values_warnv(i64 %271, i64 %272, i32* %273)
  store i32 %274, i32* %4, align 4
  br label %388

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277, %248
  br label %279

279:                                              ; preds = %278, %247
  br label %280

280:                                              ; preds = %279, %217
  %281 = call i32 (...) @gcc_unreachable()
  br label %282

282:                                              ; preds = %280, %53, %38
  %283 = load i64, i64* %5, align 8
  %284 = call i32 @is_gimple_min_invariant(i64 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %282
  %287 = load i64, i64* %6, align 8
  %288 = call i32 @is_gimple_min_invariant(i64 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %286, %282
  store i32 -2, i32* %4, align 4
  br label %388

291:                                              ; preds = %286
  %292 = load i64, i64* %5, align 8
  %293 = call i32 @TREE_TYPE(i64 %292)
  %294 = call i64 @POINTER_TYPE_P(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %347, label %296

296:                                              ; preds = %291
  %297 = load i64, i64* %5, align 8
  %298 = call i64 @TREE_OVERFLOW(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %296
  %301 = load i64, i64* %6, align 8
  %302 = call i64 @TREE_OVERFLOW(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %343

304:                                              ; preds = %300, %296
  %305 = load i32*, i32** %7, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = load i32*, i32** %7, align 8
  store i32 1, i32* %308, align 4
  br label %309

309:                                              ; preds = %307, %304
  %310 = load i64, i64* %5, align 8
  %311 = call i64 @is_negative_overflow_infinity(i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %309
  %314 = load i64, i64* %6, align 8
  %315 = call i64 @is_negative_overflow_infinity(i64 %314)
  %316 = icmp ne i64 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 0, i32 -1
  store i32 %318, i32* %4, align 4
  br label %388

319:                                              ; preds = %309
  %320 = load i64, i64* %6, align 8
  %321 = call i64 @is_negative_overflow_infinity(i64 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  store i32 1, i32* %4, align 4
  br label %388

324:                                              ; preds = %319
  %325 = load i64, i64* %5, align 8
  %326 = call i64 @is_positive_overflow_infinity(i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %324
  %329 = load i64, i64* %6, align 8
  %330 = call i64 @is_positive_overflow_infinity(i64 %329)
  %331 = icmp ne i64 %330, 0
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 0, i32 1
  store i32 %333, i32* %4, align 4
  br label %388

334:                                              ; preds = %324
  %335 = load i64, i64* %6, align 8
  %336 = call i64 @is_positive_overflow_infinity(i64 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %334
  store i32 -1, i32* %4, align 4
  br label %388

339:                                              ; preds = %334
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  store i32 -2, i32* %4, align 4
  br label %388

343:                                              ; preds = %300
  %344 = load i64, i64* %5, align 8
  %345 = load i64, i64* %6, align 8
  %346 = call i32 @tree_int_cst_compare(i64 %344, i64 %345)
  store i32 %346, i32* %4, align 4
  br label %388

347:                                              ; preds = %291
  %348 = load i64, i64* %5, align 8
  %349 = load i64, i64* %6, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %356, label %351

351:                                              ; preds = %347
  %352 = load i64, i64* %5, align 8
  %353 = load i64, i64* %6, align 8
  %354 = call i64 @operand_equal_p(i64 %352, i64 %353, i32 0)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351, %347
  store i32 0, i32* %4, align 4
  br label %388

357:                                              ; preds = %351
  %358 = load i32, i32* @LT_EXPR, align 4
  %359 = load i32, i32* @boolean_type_node, align 4
  %360 = load i64, i64* %5, align 8
  %361 = load i64, i64* %6, align 8
  %362 = call i64 @fold_binary(i32 %358, i32 %359, i64 %360, i64 %361)
  store i64 %362, i64* %14, align 8
  %363 = load i64, i64* %14, align 8
  %364 = load i64, i64* @boolean_true_node, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %357
  store i32 -1, i32* %4, align 4
  br label %388

367:                                              ; preds = %357
  %368 = load i32, i32* @GT_EXPR, align 4
  %369 = load i32, i32* @boolean_type_node, align 4
  %370 = load i64, i64* %5, align 8
  %371 = load i64, i64* %6, align 8
  %372 = call i64 @fold_binary(i32 %368, i32 %369, i64 %370, i64 %371)
  store i64 %372, i64* %14, align 8
  %373 = load i64, i64* %14, align 8
  %374 = load i64, i64* @boolean_true_node, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %367
  store i32 1, i32* %4, align 4
  br label %388

377:                                              ; preds = %367
  %378 = load i32, i32* @NE_EXPR, align 4
  %379 = load i32, i32* @boolean_type_node, align 4
  %380 = load i64, i64* %5, align 8
  %381 = load i64, i64* %6, align 8
  %382 = call i64 @fold_binary(i32 %378, i32 %379, i64 %380, i64 %381)
  store i64 %382, i64* %14, align 8
  %383 = load i64, i64* %14, align 8
  %384 = load i64, i64* @boolean_true_node, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %377
  store i32 2, i32* %4, align 4
  br label %388

387:                                              ; preds = %377
  store i32 -2, i32* %4, align 4
  br label %388

388:                                              ; preds = %387, %386, %376, %366, %356, %343, %342, %338, %328, %323, %313, %290, %270, %264, %258, %244, %234, %228, %215, %209, %175, %169, %158, %140, %131, %92, %83, %18
  %389 = load i32, i32* %4, align 4
  ret i32 %389
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @tree_int_cst_sgn(i64) #1

declare dso_local i64 @is_negative_overflow_infinity(i64) #1

declare dso_local i64 @fold_unary_to_constant(i32, i32, i64) #1

declare dso_local i32 @TYPE_OVERFLOW_UNDEFINED(i32) #1

declare dso_local i32 @TREE_NO_WARNING(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @is_gimple_min_invariant(i64) #1

declare dso_local i64 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @is_positive_overflow_infinity(i64) #1

declare dso_local i32 @tree_int_cst_compare(i64, i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i64 @fold_binary(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
