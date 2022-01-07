; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_merge_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_merge_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EQ_EXPR = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@GT_EXPR = common dso_local global i32 0, align 4
@LT_EXPR = common dso_local global i32 0, align 4
@LE_EXPR = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i64, i64, i32, i64, i64)* @merge_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_ranges(i32* %0, i64* %1, i64* %2, i32 %3, i64 %4, i64 %5, i32 %6, i64 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %9
  %32 = load i64, i64* %18, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %9
  %35 = load i32, i32* @EQ_EXPR, align 4
  %36 = load i32, i32* @integer_type_node, align 4
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %18, align 8
  %39 = call i64 @range_binop(i32 %35, i32 %36, i64 %37, i32 0, i64 %38, i32 0)
  %40 = call i32 @integer_onep(i64 %39)
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %34, %31
  %43 = phi i1 [ true, %31 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %27, align 4
  %45 = load i64, i64* %16, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %19, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @EQ_EXPR, align 4
  %52 = load i32, i32* @integer_type_node, align 4
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %19, align 8
  %55 = call i64 @range_binop(i32 %51, i32 %52, i64 %53, i32 1, i64 %54, i32 1)
  %56 = call i32 @integer_onep(i64 %55)
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi i1 [ true, %47 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %28, align 4
  %61 = load i32, i32* @GT_EXPR, align 4
  %62 = load i32, i32* @integer_type_node, align 4
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %18, align 8
  %65 = call i64 @range_binop(i32 %61, i32 %62, i64 %63, i32 0, i64 %64, i32 0)
  %66 = call i32 @integer_onep(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %27, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* @GT_EXPR, align 4
  %73 = load i32, i32* @integer_type_node, align 4
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i64 @range_binop(i32 %72, i32 %73, i64 %74, i32 1, i64 %75, i32 1)
  %77 = call i32 @integer_onep(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71, %58
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %22, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i64, i64* %15, align 8
  store i64 %83, i64* %23, align 8
  %84 = load i64, i64* %18, align 8
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %23, align 8
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %16, align 8
  store i64 %86, i64* %23, align 8
  %87 = load i64, i64* %19, align 8
  store i64 %87, i64* %16, align 8
  %88 = load i64, i64* %23, align 8
  store i64 %88, i64* %19, align 8
  br label %89

89:                                               ; preds = %79, %71, %68
  %90 = load i32, i32* @LT_EXPR, align 4
  %91 = load i32, i32* @integer_type_node, align 4
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %18, align 8
  %94 = call i64 @range_binop(i32 %90, i32 %91, i64 %92, i32 1, i64 %93, i32 0)
  %95 = call i32 @integer_onep(i64 %94)
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* @LE_EXPR, align 4
  %97 = load i32, i32* @integer_type_node, align 4
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i64 @range_binop(i32 %96, i32 %97, i64 %98, i32 1, i64 %99, i32 1)
  %101 = call i32 @integer_onep(i64 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %89
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 0, i32* %24, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %25, align 8
  br label %121

111:                                              ; preds = %107
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  store i32 1, i32* %24, align 4
  %115 = load i64, i64* %18, align 8
  store i64 %115, i64* %25, align 8
  %116 = load i64, i64* %19, align 8
  store i64 %116, i64* %26, align 8
  br label %120

117:                                              ; preds = %111
  store i32 1, i32* %24, align 4
  %118 = load i64, i64* %18, align 8
  store i64 %118, i64* %25, align 8
  %119 = load i64, i64* %16, align 8
  store i64 %119, i64* %26, align 8
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %110
  br label %346

122:                                              ; preds = %104, %89
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %174

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %174, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  store i32 1, i32* %24, align 4
  %132 = load i64, i64* %15, align 8
  store i64 %132, i64* %25, align 8
  %133 = load i64, i64* %16, align 8
  store i64 %133, i64* %26, align 8
  br label %173

134:                                              ; preds = %128
  %135 = load i32, i32* %27, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %28, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 0, i32* %24, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %25, align 8
  br label %172

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32, i32* %27, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i64, i64* %19, align 8
  %149 = call i64 @range_successor(i64 %148)
  store i64 %149, i64* %25, align 8
  %150 = load i64, i64* %16, align 8
  store i64 %150, i64* %26, align 8
  store i32 1, i32* %24, align 4
  %151 = load i64, i64* %25, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 0, i32* %10, align 4
  br label %353

154:                                              ; preds = %147
  br label %171

155:                                              ; preds = %144, %141
  %156 = load i32, i32* %21, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %28, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158, %155
  %162 = load i64, i64* %15, align 8
  store i64 %162, i64* %25, align 8
  %163 = load i64, i64* %18, align 8
  %164 = call i64 @range_predecessor(i64 %163)
  store i64 %164, i64* %26, align 8
  store i32 1, i32* %24, align 4
  %165 = load i64, i64* %26, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  br label %353

168:                                              ; preds = %161
  br label %170

169:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  br label %353

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170, %154
  br label %172

172:                                              ; preds = %171, %140
  br label %173

173:                                              ; preds = %172, %131
  br label %345

174:                                              ; preds = %125, %122
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %203, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %177
  %181 = load i32, i32* %20, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  store i32 1, i32* %24, align 4
  %184 = load i64, i64* %18, align 8
  store i64 %184, i64* %25, align 8
  %185 = load i64, i64* %19, align 8
  store i64 %185, i64* %26, align 8
  br label %202

186:                                              ; preds = %180
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %28, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %186
  store i32 0, i32* %24, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %25, align 8
  br label %201

193:                                              ; preds = %189
  %194 = load i64, i64* %16, align 8
  %195 = call i64 @range_successor(i64 %194)
  store i64 %195, i64* %25, align 8
  %196 = load i64, i64* %19, align 8
  store i64 %196, i64* %26, align 8
  store i32 1, i32* %24, align 4
  %197 = load i64, i64* %25, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  store i32 0, i32* %10, align 4
  br label %353

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %192
  br label %202

202:                                              ; preds = %201, %183
  br label %344

203:                                              ; preds = %177, %174
  %204 = load i32, i32* %20, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %333

206:                                              ; preds = %203
  %207 = load i32, i32* @EQ_EXPR, align 4
  %208 = load i32, i32* @integer_type_node, align 4
  %209 = load i64, i64* %16, align 8
  %210 = call i64 @range_successor(i64 %209)
  %211 = load i64, i64* %18, align 8
  %212 = call i64 @range_binop(i32 %207, i32 %208, i64 %210, i32 1, i64 %211, i32 0)
  %213 = call i32 @integer_onep(i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %206
  store i32 0, i32* %24, align 4
  %216 = load i64, i64* %15, align 8
  store i64 %216, i64* %25, align 8
  %217 = load i64, i64* %19, align 8
  store i64 %217, i64* %26, align 8
  br label %332

218:                                              ; preds = %206
  %219 = load i64, i64* %15, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %263

221:                                              ; preds = %218
  %222 = load i64, i64* %15, align 8
  %223 = call i32 @TREE_CODE(i64 %222)
  %224 = load i32, i32* @INTEGER_CST, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %263

226:                                              ; preds = %221
  %227 = load i64, i64* %15, align 8
  %228 = call i64 @TREE_TYPE(i64 %227)
  %229 = call i32 @TREE_CODE(i64 %228)
  switch i32 %229, label %261 [
    i32 130, label %230
    i32 129, label %241
    i32 128, label %250
  ]

230:                                              ; preds = %226
  %231 = load i64, i64* %15, align 8
  %232 = call i64 @TREE_TYPE(i64 %231)
  %233 = call i32 @TYPE_PRECISION(i64 %232)
  %234 = load i64, i64* %15, align 8
  %235 = call i64 @TREE_TYPE(i64 %234)
  %236 = call i32 @TYPE_MODE(i64 %235)
  %237 = call i32 @GET_MODE_BITSIZE(i32 %236)
  %238 = icmp ne i32 %233, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %262

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %226, %240
  %242 = load i64, i64* %15, align 8
  %243 = load i64, i64* %15, align 8
  %244 = call i64 @TREE_TYPE(i64 %243)
  %245 = call i32 @TYPE_MIN_VALUE(i64 %244)
  %246 = call i32 @tree_int_cst_equal(i64 %242, i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  store i64 0, i64* %15, align 8
  br label %249

249:                                              ; preds = %248, %241
  br label %262

250:                                              ; preds = %226
  %251 = load i64, i64* %15, align 8
  %252 = call i64 @TREE_TYPE(i64 %251)
  %253 = call i32 @TYPE_UNSIGNED(i64 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i64, i64* %15, align 8
  %257 = call i32 @integer_zerop(i64 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store i64 0, i64* %15, align 8
  br label %260

260:                                              ; preds = %259, %255, %250
  br label %262

261:                                              ; preds = %226
  br label %262

262:                                              ; preds = %261, %260, %249, %239
  br label %263

263:                                              ; preds = %262, %221, %218
  %264 = load i64, i64* %19, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %312

266:                                              ; preds = %263
  %267 = load i64, i64* %19, align 8
  %268 = call i32 @TREE_CODE(i64 %267)
  %269 = load i32, i32* @INTEGER_CST, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %312

271:                                              ; preds = %266
  %272 = load i64, i64* %19, align 8
  %273 = call i64 @TREE_TYPE(i64 %272)
  %274 = call i32 @TREE_CODE(i64 %273)
  switch i32 %274, label %310 [
    i32 130, label %275
    i32 129, label %286
    i32 128, label %295
  ]

275:                                              ; preds = %271
  %276 = load i64, i64* %19, align 8
  %277 = call i64 @TREE_TYPE(i64 %276)
  %278 = call i32 @TYPE_PRECISION(i64 %277)
  %279 = load i64, i64* %19, align 8
  %280 = call i64 @TREE_TYPE(i64 %279)
  %281 = call i32 @TYPE_MODE(i64 %280)
  %282 = call i32 @GET_MODE_BITSIZE(i32 %281)
  %283 = icmp ne i32 %278, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %275
  br label %311

285:                                              ; preds = %275
  br label %286

286:                                              ; preds = %271, %285
  %287 = load i64, i64* %19, align 8
  %288 = load i64, i64* %19, align 8
  %289 = call i64 @TREE_TYPE(i64 %288)
  %290 = call i32 @TYPE_MAX_VALUE(i64 %289)
  %291 = call i32 @tree_int_cst_equal(i64 %287, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  store i64 0, i64* %19, align 8
  br label %294

294:                                              ; preds = %293, %286
  br label %311

295:                                              ; preds = %271
  %296 = load i64, i64* %19, align 8
  %297 = call i64 @TREE_TYPE(i64 %296)
  %298 = call i32 @TYPE_UNSIGNED(i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load i32, i32* @PLUS_EXPR, align 4
  %302 = load i32, i32* @NULL_TREE, align 4
  %303 = load i64, i64* %19, align 8
  %304 = load i64, i64* @integer_one_node, align 8
  %305 = call i64 @range_binop(i32 %301, i32 %302, i64 %303, i32 1, i64 %304, i32 1)
  %306 = call i32 @integer_zerop(i64 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %300
  store i64 0, i64* %19, align 8
  br label %309

309:                                              ; preds = %308, %300, %295
  br label %311

310:                                              ; preds = %271
  br label %311

311:                                              ; preds = %310, %309, %294, %284
  br label %312

312:                                              ; preds = %311, %266, %263
  %313 = load i64, i64* %15, align 8
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %330

315:                                              ; preds = %312
  %316 = load i64, i64* %19, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %330

318:                                              ; preds = %315
  %319 = load i64, i64* %16, align 8
  %320 = call i64 @range_successor(i64 %319)
  store i64 %320, i64* %25, align 8
  %321 = load i64, i64* %18, align 8
  %322 = call i64 @range_predecessor(i64 %321)
  store i64 %322, i64* %26, align 8
  %323 = load i64, i64* %25, align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %318
  %326 = load i64, i64* %26, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325, %318
  store i32 0, i32* %10, align 4
  br label %353

329:                                              ; preds = %325
  store i32 1, i32* %24, align 4
  br label %331

330:                                              ; preds = %315, %312
  store i32 0, i32* %10, align 4
  br label %353

331:                                              ; preds = %329
  br label %332

332:                                              ; preds = %331, %215
  br label %343

333:                                              ; preds = %203
  %334 = load i32, i32* %21, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  store i32 0, i32* %24, align 4
  %337 = load i64, i64* %15, align 8
  store i64 %337, i64* %25, align 8
  %338 = load i64, i64* %16, align 8
  store i64 %338, i64* %26, align 8
  br label %342

339:                                              ; preds = %333
  store i32 0, i32* %24, align 4
  %340 = load i64, i64* %15, align 8
  store i64 %340, i64* %25, align 8
  %341 = load i64, i64* %19, align 8
  store i64 %341, i64* %26, align 8
  br label %342

342:                                              ; preds = %339, %336
  br label %343

343:                                              ; preds = %342, %332
  br label %344

344:                                              ; preds = %343, %202
  br label %345

345:                                              ; preds = %344, %173
  br label %346

346:                                              ; preds = %345, %121
  %347 = load i32, i32* %24, align 4
  %348 = load i32*, i32** %11, align 8
  store i32 %347, i32* %348, align 4
  %349 = load i64, i64* %25, align 8
  %350 = load i64*, i64** %12, align 8
  store i64 %349, i64* %350, align 8
  %351 = load i64, i64* %26, align 8
  %352 = load i64*, i64** %13, align 8
  store i64 %351, i64* %352, align 8
  store i32 1, i32* %10, align 4
  br label %353

353:                                              ; preds = %346, %330, %328, %199, %169, %167, %153
  %354 = load i32, i32* %10, align 4
  ret i32 %354
}

declare dso_local i32 @integer_onep(i64) #1

declare dso_local i64 @range_binop(i32, i32, i64, i32, i64, i32) #1

declare dso_local i64 @range_successor(i64) #1

declare dso_local i64 @range_predecessor(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i32 @tree_int_cst_equal(i64, i32) #1

declare dso_local i32 @TYPE_MIN_VALUE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i32 @TYPE_MAX_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
