; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_comptypes_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_comptypes_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }

@ERROR_MARK = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@INTEGER_CST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @comptypes_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comptypes_internal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @TREE_CODE(i64 %30)
  %32 = load i32, i32* @ERROR_MARK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @TREE_CODE(i64 %35)
  %37 = load i32, i32* @ERROR_MARK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %26, %23, %2
  store i32 1, i32* %3, align 4
  br label %391

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @TREE_CODE(i64 %41)
  %43 = load i32, i32* @INTEGER_TYPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @TYPE_IS_SIZETYPE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %54)
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %53, %49, %45, %40
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @TREE_CODE(i64 %57)
  %59 = load i32, i32* @INTEGER_TYPE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @TYPE_IS_SIZETYPE(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %70)
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %69, %65, %61, %56
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @TREE_CODE(i64 %73)
  %75 = icmp eq i32 %74, 133
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @TREE_CODE(i64 %77)
  %79 = icmp ne i32 %78, 133
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @TYPE_PRECISION(i64 %81)
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @TYPE_UNSIGNED(i64 %83)
  %85 = call i64 @c_common_type_for_size(i32 %82, i32 %84)
  store i64 %85, i64* %6, align 8
  br label %101

86:                                               ; preds = %76, %72
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @TREE_CODE(i64 %87)
  %89 = icmp eq i32 %88, 133
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @TREE_CODE(i64 %91)
  %93 = icmp ne i32 %92, 133
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @TYPE_PRECISION(i64 %95)
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @TYPE_UNSIGNED(i64 %97)
  %99 = call i64 @c_common_type_for_size(i32 %96, i32 %98)
  store i64 %99, i64* %7, align 8
  br label %100

100:                                              ; preds = %94, %90, %86
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %391

106:                                              ; preds = %101
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @TREE_CODE(i64 %107)
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @TREE_CODE(i64 %109)
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %391

113:                                              ; preds = %106
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @TYPE_QUALS(i64 %114)
  %116 = load i64, i64* %7, align 8
  %117 = call i64 @TYPE_QUALS(i64 %116)
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %391

120:                                              ; preds = %113
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @TREE_CODE(i64 %121)
  %123 = icmp ne i32 %122, 135
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @TYPE_MAIN_VARIANT(i64 %125)
  %127 = load i64, i64* %7, align 8
  %128 = call i64 @TYPE_MAIN_VARIANT(i64 %127)
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %391

131:                                              ; preds = %124, %120
  %132 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = call i32 %132(i64 %133, i64 %134)
  store i32 %135, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %391

138:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @TREE_CODE(i64 %139)
  switch i32 %140, label %379 [
    i32 134, label %141
    i32 131, label %155
    i32 132, label %183
    i32 135, label %187
    i32 133, label %328
    i32 130, label %328
    i32 129, label %328
    i32 128, label %363
  ]

141:                                              ; preds = %138
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @TREE_CODE(i64 %142)
  %144 = icmp eq i32 %143, 134
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i64, i64* %6, align 8
  %147 = call i64 @TREE_TYPE(i64 %146)
  %148 = load i64, i64* %7, align 8
  %149 = call i64 @TREE_TYPE(i64 %148)
  %150 = call i32 @types_are_block_compatible(i64 %147, i64 %149)
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %145, %141
  %153 = phi i1 [ false, %141 ], [ %151, %145 ]
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %9, align 4
  br label %380

155:                                              ; preds = %138
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @TYPE_MODE(i64 %156)
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @TYPE_MODE(i64 %158)
  %160 = icmp ne i32 %157, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i64 %162)
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i64 %164)
  %166 = icmp ne i32 %163, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161, %155
  br label %380

168:                                              ; preds = %161
  %169 = load i64, i64* %6, align 8
  %170 = call i64 @TREE_TYPE(i64 %169)
  %171 = load i64, i64* %7, align 8
  %172 = call i64 @TREE_TYPE(i64 %171)
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %181

175:                                              ; preds = %168
  %176 = load i64, i64* %6, align 8
  %177 = call i64 @TREE_TYPE(i64 %176)
  %178 = load i64, i64* %7, align 8
  %179 = call i64 @TREE_TYPE(i64 %178)
  %180 = call i32 @comptypes_internal(i64 %177, i64 %179)
  br label %181

181:                                              ; preds = %175, %174
  %182 = phi i32 [ 1, %174 ], [ %180, %175 ]
  store i32 %182, i32* %9, align 4
  br label %380

183:                                              ; preds = %138
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @function_types_compatible_p(i64 %184, i64 %185)
  store i32 %186, i32* %9, align 4
  br label %380

187:                                              ; preds = %138
  %188 = load i64, i64* %6, align 8
  %189 = call i64 @TYPE_DOMAIN(i64 %188)
  store i64 %189, i64* %10, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i64 @TYPE_DOMAIN(i64 %190)
  store i64 %191, i64* %11, align 8
  store i32 1, i32* %9, align 4
  %192 = load i64, i64* %6, align 8
  %193 = call i64 @TREE_TYPE(i64 %192)
  %194 = load i64, i64* %7, align 8
  %195 = call i64 @TREE_TYPE(i64 %194)
  %196 = icmp ne i64 %193, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %187
  %198 = load i64, i64* %6, align 8
  %199 = call i64 @TREE_TYPE(i64 %198)
  %200 = load i64, i64* %7, align 8
  %201 = call i64 @TREE_TYPE(i64 %200)
  %202 = call i32 @comptypes_internal(i64 %199, i64 %201)
  store i32 %202, i32* %9, align 4
  %203 = icmp eq i32 0, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %391

205:                                              ; preds = %197, %187
  %206 = load i64, i64* %10, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %205
  %209 = load i64, i64* %11, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %11, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211, %208, %205
  br label %380

216:                                              ; preds = %211
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @TYPE_MAX_VALUE(i64 %217)
  %219 = icmp ne i64 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %14, align 4
  %222 = load i64, i64* %11, align 8
  %223 = call i64 @TYPE_MAX_VALUE(i64 %222)
  %224 = icmp ne i64 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %216
  %230 = load i64, i64* %10, align 8
  %231 = call i64 @TYPE_MIN_VALUE(i64 %230)
  %232 = call i32 @TREE_CODE(i64 %231)
  %233 = load i32, i32* @INTEGER_CST, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load i64, i64* %10, align 8
  %237 = call i64 @TYPE_MAX_VALUE(i64 %236)
  %238 = call i32 @TREE_CODE(i64 %237)
  %239 = load i32, i32* @INTEGER_CST, align 4
  %240 = icmp ne i32 %238, %239
  br label %241

241:                                              ; preds = %235, %229
  %242 = phi i1 [ true, %229 ], [ %240, %235 ]
  br label %243

243:                                              ; preds = %241, %216
  %244 = phi i1 [ false, %216 ], [ %242, %241 ]
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %262, label %248

248:                                              ; preds = %243
  %249 = load i64, i64* %11, align 8
  %250 = call i64 @TYPE_MIN_VALUE(i64 %249)
  %251 = call i32 @TREE_CODE(i64 %250)
  %252 = load i32, i32* @INTEGER_CST, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = load i64, i64* %11, align 8
  %256 = call i64 @TYPE_MAX_VALUE(i64 %255)
  %257 = call i32 @TREE_CODE(i64 %256)
  %258 = load i32, i32* @INTEGER_CST, align 4
  %259 = icmp ne i32 %257, %258
  br label %260

260:                                              ; preds = %254, %248
  %261 = phi i1 [ true, %248 ], [ %259, %254 ]
  br label %262

262:                                              ; preds = %260, %243
  %263 = phi i1 [ false, %243 ], [ %261, %260 ]
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %13, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* %14, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load i64, i64* %6, align 8
  %272 = call i32 @c_vla_type_p(i64 %271)
  %273 = icmp ne i32 %272, 0
  br label %274

274:                                              ; preds = %270, %267
  %275 = phi i1 [ false, %267 ], [ %273, %270 ]
  br label %276

276:                                              ; preds = %274, %262
  %277 = phi i1 [ true, %262 ], [ %275, %274 ]
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %276
  %282 = load i32, i32* %15, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i64, i64* %7, align 8
  %286 = call i32 @c_vla_type_p(i64 %285)
  %287 = icmp ne i32 %286, 0
  br label %288

288:                                              ; preds = %284, %281
  %289 = phi i1 [ false, %281 ], [ %287, %284 ]
  br label %290

290:                                              ; preds = %288, %276
  %291 = phi i1 [ true, %276 ], [ %289, %288 ]
  %292 = zext i1 %291 to i32
  store i32 %292, i32* %13, align 4
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* %13, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %295, %290
  br label %380

299:                                              ; preds = %295
  %300 = load i32, i32* %14, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load i32, i32* %15, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %380

306:                                              ; preds = %302, %299
  %307 = load i32, i32* %14, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %326, label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %15, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %326, label %312

312:                                              ; preds = %309
  %313 = load i64, i64* %10, align 8
  %314 = call i64 @TYPE_MIN_VALUE(i64 %313)
  %315 = load i64, i64* %11, align 8
  %316 = call i64 @TYPE_MIN_VALUE(i64 %315)
  %317 = call i32 @tree_int_cst_equal(i64 %314, i64 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %312
  %320 = load i64, i64* %10, align 8
  %321 = call i64 @TYPE_MAX_VALUE(i64 %320)
  %322 = load i64, i64* %11, align 8
  %323 = call i64 @TYPE_MAX_VALUE(i64 %322)
  %324 = call i32 @tree_int_cst_equal(i64 %321, i64 %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %319, %312, %309, %306
  store i32 0, i32* %9, align 4
  br label %327

327:                                              ; preds = %326, %319
  br label %380

328:                                              ; preds = %138, %138, %138
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %329, 1
  br i1 %330, label %331, label %362

331:                                              ; preds = %328
  %332 = load i64, i64* %6, align 8
  %333 = load i64, i64* %7, align 8
  %334 = call i32 @same_translation_unit_p(i64 %332, i64 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %362, label %336

336:                                              ; preds = %331
  %337 = load i64, i64* %6, align 8
  %338 = call i64 @TYPE_ATTRIBUTES(i64 %337)
  store i64 %338, i64* %16, align 8
  %339 = load i64, i64* %7, align 8
  %340 = call i64 @TYPE_ATTRIBUTES(i64 %339)
  store i64 %340, i64* %17, align 8
  %341 = load i64, i64* %16, align 8
  %342 = load i64, i64* %17, align 8
  %343 = call i32 @attribute_list_contained(i64 %341, i64 %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %336
  %346 = load i64, i64* %17, align 8
  %347 = load i64, i64* %16, align 8
  %348 = call i32 @attribute_list_contained(i64 %346, i64 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  br label %380

351:                                              ; preds = %345, %336
  %352 = load i32, i32* %8, align 4
  %353 = icmp ne i32 %352, 2
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load i64, i64* %6, align 8
  %356 = load i64, i64* %7, align 8
  %357 = call i32 @tagged_types_tu_compatible_p(i64 %355, i64 %356)
  store i32 %357, i32* %3, align 4
  br label %391

358:                                              ; preds = %351
  %359 = load i64, i64* %6, align 8
  %360 = load i64, i64* %7, align 8
  %361 = call i32 @tagged_types_tu_compatible_p(i64 %359, i64 %360)
  store i32 %361, i32* %9, align 4
  br label %362

362:                                              ; preds = %358, %331, %328
  br label %380

363:                                              ; preds = %138
  %364 = load i64, i64* %6, align 8
  %365 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %364)
  %366 = load i64, i64* %7, align 8
  %367 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %366)
  %368 = icmp eq i32 %365, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %363
  %370 = load i64, i64* %6, align 8
  %371 = call i64 @TREE_TYPE(i64 %370)
  %372 = load i64, i64* %7, align 8
  %373 = call i64 @TREE_TYPE(i64 %372)
  %374 = call i32 @comptypes_internal(i64 %371, i64 %373)
  %375 = icmp ne i32 %374, 0
  br label %376

376:                                              ; preds = %369, %363
  %377 = phi i1 [ false, %363 ], [ %375, %369 ]
  %378 = zext i1 %377 to i32
  store i32 %378, i32* %9, align 4
  br label %380

379:                                              ; preds = %138
  br label %380

380:                                              ; preds = %379, %376, %362, %350, %327, %305, %298, %215, %183, %181, %167, %152
  %381 = load i32, i32* %8, align 4
  %382 = icmp eq i32 %381, 2
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = load i32, i32* %9, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  br label %389

387:                                              ; preds = %383, %380
  %388 = load i32, i32* %9, align 4
  br label %389

389:                                              ; preds = %387, %386
  %390 = phi i32 [ 2, %386 ], [ %388, %387 ]
  store i32 %390, i32* %3, align 4
  br label %391

391:                                              ; preds = %389, %354, %204, %137, %130, %119, %112, %105, %39
  %392 = load i32, i32* %3, align 4
  ret i32 %392
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i64 @TYPE_ORIG_SIZE_TYPE(i64) #1

declare dso_local i64 @c_common_type_for_size(i32, i32) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @TYPE_QUALS(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @types_are_block_compatible(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i32 @TYPE_REF_CAN_ALIAS_ALL(i64) #1

declare dso_local i32 @function_types_compatible_p(i64, i64) #1

declare dso_local i64 @TYPE_DOMAIN(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i32 @c_vla_type_p(i64) #1

declare dso_local i32 @tree_int_cst_equal(i64, i64) #1

declare dso_local i32 @same_translation_unit_p(i64, i64) #1

declare dso_local i64 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i32 @attribute_list_contained(i64, i64) #1

declare dso_local i32 @tagged_types_tu_compatible_p(i64, i64) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
