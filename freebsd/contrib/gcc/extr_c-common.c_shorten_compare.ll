; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_shorten_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_shorten_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_TYPE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@NE_EXPR = common dso_local global i32 0, align 4
@truthvalue_true_node = common dso_local global i64 0, align 8
@EQ_EXPR = common dso_local global i32 0, align 4
@truthvalue_false_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"comparison is always false due to limited range of data type\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"comparison is always true due to limited range of data type\00", align 1
@COMPOUND_EXPR = common dso_local global i32 0, align 4
@extra_warnings = common dso_local global i32 0, align 4
@in_system_header = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"comparison of unsigned expression >= 0 is always true\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"comparison of unsigned expression < 0 is always false\00", align 1
@truthvalue_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @shorten_compare(i64* %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %19, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i64 @get_narrower(i64 %38, i32* %13)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @get_narrower(i64 %40, i32* %14)
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %4
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i32 @TYPE_UNSIGNED(i64 %53)
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %51, %45, %4
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %18, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @TREE_TYPE(i64 %60)
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = call i64 @TREE_TYPE(i64 %66)
  %68 = call i32 @TYPE_UNSIGNED(i64 %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %59, %55
  %70 = load i64, i64* %17, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @REAL_TYPE, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load i64, i64* %18, align 8
  %77 = call i64 @TREE_TYPE(i64 %76)
  %78 = call i64 @TREE_CODE(i64 %77)
  %79 = load i64, i64* @REAL_TYPE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = load i64, i64* %17, align 8
  %83 = call i64 @TREE_CONSTANT(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %69
  %86 = load i64, i64* %18, align 8
  %87 = call i64 @integer_zerop(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %119, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @real_zerop(i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %119, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %17, align 8
  store i64 %94, i64* %20, align 8
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %21, align 4
  %96 = load i64, i64* %18, align 8
  store i64 %96, i64* %17, align 8
  %97 = load i64, i64* %20, align 8
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %11, align 8
  store i64 %98, i64* %20, align 8
  %99 = load i64, i64* %12, align 8
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %20, align 8
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64*, i64** %6, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %21, align 4
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %21, align 4
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %19, align 4
  switch i32 %110, label %115 [
    i32 128, label %111
    i32 130, label %112
    i32 129, label %113
    i32 131, label %114
  ]

111:                                              ; preds = %93
  store i32 130, i32* %19, align 4
  br label %116

112:                                              ; preds = %93
  store i32 128, i32* %19, align 4
  br label %116

113:                                              ; preds = %93
  store i32 131, i32* %19, align 4
  br label %116

114:                                              ; preds = %93
  store i32 129, i32* %19, align 4
  br label %116

115:                                              ; preds = %93
  br label %116

116:                                              ; preds = %115, %114, %113, %112, %111
  %117 = load i32, i32* %19, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %89, %85, %69
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %370, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %370, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* %18, align 8
  %127 = call i64 @TREE_CODE(i64 %126)
  %128 = load i64, i64* @INTEGER_CST, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %370

130:                                              ; preds = %125
  %131 = load i64, i64* %17, align 8
  %132 = call i64 @TREE_TYPE(i64 %131)
  %133 = call i64 @TYPE_PRECISION(i64 %132)
  %134 = load i64*, i64** %8, align 8
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @TYPE_PRECISION(i64 %135)
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %370

138:                                              ; preds = %130
  %139 = load i64*, i64** %8, align 8
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @TYPE_UNSIGNED(i64 %140)
  store i32 %141, i32* %28, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i64, i64* %17, align 8
  %144 = call i64 @TREE_TYPE(i64 %143)
  %145 = call i64 @c_common_signed_or_unsigned_type(i32 %142, i64 %144)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @TYPE_MAX_VALUE(i64 %146)
  store i64 %147, i64* %26, align 8
  %148 = load i64, i64* %10, align 8
  %149 = call i64 @TYPE_MIN_VALUE(i64 %148)
  store i64 %149, i64* %27, align 8
  %150 = load i32, i32* %28, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %138
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = load i64*, i64** %8, align 8
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @c_common_signed_type(i64 %157)
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %155, %152, %138
  %161 = load i64, i64* %18, align 8
  %162 = call i64 @TREE_TYPE(i64 %161)
  %163 = load i64*, i64** %8, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %162, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %160
  %167 = load i64*, i64** %8, align 8
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %18, align 8
  %170 = call i32 @TREE_INT_CST_LOW(i64 %169)
  %171 = load i64, i64* %18, align 8
  %172 = call i32 @TREE_INT_CST_HIGH(i64 %171)
  %173 = call i64 @build_int_cst_wide(i64 %168, i32 %170, i32 %172)
  store i64 %173, i64* %30, align 8
  %174 = load i64, i64* %30, align 8
  %175 = load i64, i64* %18, align 8
  %176 = call i32 @TREE_OVERFLOW(i64 %175)
  %177 = load i64, i64* %18, align 8
  %178 = call i32 @TREE_CONSTANT_OVERFLOW(i64 %177)
  %179 = call i64 @force_fit_type(i64 %174, i32 0, i32 %176, i32 %178)
  store i64 %179, i64* %18, align 8
  br label %180

180:                                              ; preds = %166, %160
  %181 = load i64, i64* %10, align 8
  %182 = load i64*, i64** %8, align 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load i64*, i64** %8, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %27, align 8
  %189 = call i64 @convert(i64 %187, i64 %188)
  store i64 %189, i64* %27, align 8
  %190 = load i64*, i64** %8, align 8
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %26, align 8
  %193 = call i64 @convert(i64 %191, i64 %192)
  store i64 %193, i64* %26, align 8
  br label %194

194:                                              ; preds = %185, %180
  %195 = load i32, i32* %28, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* %27, align 8
  %203 = call i32 @INT_CST_LT_UNSIGNED(i64 %201, i64 %202)
  store i32 %203, i32* %22, align 4
  %204 = load i64, i64* %18, align 8
  %205 = load i64, i64* %26, align 8
  %206 = call i32 @INT_CST_LT_UNSIGNED(i64 %204, i64 %205)
  store i32 %206, i32* %23, align 4
  %207 = load i64, i64* %27, align 8
  %208 = load i64, i64* %18, align 8
  %209 = call i32 @INT_CST_LT_UNSIGNED(i64 %207, i64 %208)
  store i32 %209, i32* %24, align 4
  %210 = load i64, i64* %26, align 8
  %211 = load i64, i64* %18, align 8
  %212 = call i32 @INT_CST_LT_UNSIGNED(i64 %210, i64 %211)
  store i32 %212, i32* %25, align 4
  br label %226

213:                                              ; preds = %197, %194
  %214 = load i64, i64* %18, align 8
  %215 = load i64, i64* %27, align 8
  %216 = call i32 @INT_CST_LT(i64 %214, i64 %215)
  store i32 %216, i32* %22, align 4
  %217 = load i64, i64* %18, align 8
  %218 = load i64, i64* %26, align 8
  %219 = call i32 @INT_CST_LT(i64 %217, i64 %218)
  store i32 %219, i32* %23, align 4
  %220 = load i64, i64* %27, align 8
  %221 = load i64, i64* %18, align 8
  %222 = call i32 @INT_CST_LT(i64 %220, i64 %221)
  store i32 %222, i32* %24, align 4
  %223 = load i64, i64* %26, align 8
  %224 = load i64, i64* %18, align 8
  %225 = call i32 @INT_CST_LT(i64 %223, i64 %224)
  store i32 %225, i32* %25, align 4
  br label %226

226:                                              ; preds = %213, %200
  store i64 0, i64* %29, align 8
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* @NE_EXPR, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  %231 = load i32, i32* %25, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %22, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233, %230
  %237 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %237, i64* %29, align 8
  br label %238

238:                                              ; preds = %236, %233
  br label %313

239:                                              ; preds = %226
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* @EQ_EXPR, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i32, i32* %25, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %22, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %246, %243
  %250 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %250, i64* %29, align 8
  br label %251

251:                                              ; preds = %249, %246
  br label %312

252:                                              ; preds = %239
  %253 = load i32, i32* %19, align 4
  %254 = icmp eq i32 %253, 128
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* %25, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %259, i64* %29, align 8
  br label %260

260:                                              ; preds = %258, %255
  %261 = load i32, i32* %24, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %260
  %264 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %264, i64* %29, align 8
  br label %265

265:                                              ; preds = %263, %260
  br label %311

266:                                              ; preds = %252
  %267 = load i32, i32* %19, align 4
  %268 = icmp eq i32 %267, 130
  br i1 %268, label %269, label %280

269:                                              ; preds = %266
  %270 = load i32, i32* %22, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %273, i64* %29, align 8
  br label %274

274:                                              ; preds = %272, %269
  %275 = load i32, i32* %23, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %274
  %278 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %278, i64* %29, align 8
  br label %279

279:                                              ; preds = %277, %274
  br label %310

280:                                              ; preds = %266
  %281 = load i32, i32* %19, align 4
  %282 = icmp eq i32 %281, 129
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  %284 = load i32, i32* %23, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %287, i64* %29, align 8
  br label %288

288:                                              ; preds = %286, %283
  %289 = load i32, i32* %22, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %292, i64* %29, align 8
  br label %293

293:                                              ; preds = %291, %288
  br label %309

294:                                              ; preds = %280
  %295 = load i32, i32* %19, align 4
  %296 = icmp eq i32 %295, 131
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i32, i32* %24, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %301, i64* %29, align 8
  br label %302

302:                                              ; preds = %300, %297
  %303 = load i32, i32* %25, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %306, i64* %29, align 8
  br label %307

307:                                              ; preds = %305, %302
  br label %308

308:                                              ; preds = %307, %294
  br label %309

309:                                              ; preds = %308, %293
  br label %310

310:                                              ; preds = %309, %279
  br label %311

311:                                              ; preds = %310, %265
  br label %312

312:                                              ; preds = %311, %251
  br label %313

313:                                              ; preds = %312, %238
  %314 = load i32, i32* %28, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %313
  %317 = load i32, i32* %13, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %335, label %319

319:                                              ; preds = %316
  %320 = load i64, i64* %29, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %332

322:                                              ; preds = %319
  %323 = load i32, i32* %19, align 4
  switch i32 %323, label %330 [
    i32 128, label %324
    i32 131, label %324
    i32 129, label %327
    i32 130, label %327
  ]

324:                                              ; preds = %322, %322
  %325 = load i64, i64* %10, align 8
  %326 = call i64 @TYPE_MIN_VALUE(i64 %325)
  store i64 %326, i64* %18, align 8
  store i64 0, i64* %29, align 8
  br label %331

327:                                              ; preds = %322, %322
  %328 = load i64, i64* %10, align 8
  %329 = call i64 @TYPE_MAX_VALUE(i64 %328)
  store i64 %329, i64* %18, align 8
  store i64 0, i64* %29, align 8
  br label %331

330:                                              ; preds = %322
  br label %331

331:                                              ; preds = %330, %327, %324
  br label %332

332:                                              ; preds = %331, %319
  %333 = load i64, i64* %10, align 8
  %334 = call i64 @c_common_unsigned_type(i64 %333)
  store i64 %334, i64* %10, align 8
  br label %335

335:                                              ; preds = %332, %316, %313
  %336 = load i64, i64* %17, align 8
  %337 = call i64 @TREE_CODE(i64 %336)
  %338 = load i64, i64* @INTEGER_CST, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %353

340:                                              ; preds = %335
  %341 = load i64, i64* %29, align 8
  %342 = load i64, i64* @truthvalue_false_node, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = call i32 @warning(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %346

346:                                              ; preds = %344, %340
  %347 = load i64, i64* %29, align 8
  %348 = load i64, i64* @truthvalue_true_node, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = call i32 @warning(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %346
  br label %353

353:                                              ; preds = %352, %335
  %354 = load i64, i64* %29, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %353
  %357 = load i64, i64* %17, align 8
  %358 = call i64 @TREE_SIDE_EFFECTS(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %356
  %361 = load i32, i32* @COMPOUND_EXPR, align 4
  %362 = load i64, i64* %29, align 8
  %363 = call i64 @TREE_TYPE(i64 %362)
  %364 = load i64, i64* %17, align 8
  %365 = load i64, i64* %29, align 8
  %366 = call i64 @build2(i32 %361, i64 %363, i64 %364, i64 %365)
  store i64 %366, i64* %5, align 8
  br label %563

367:                                              ; preds = %356
  %368 = load i64, i64* %29, align 8
  store i64 %368, i64* %5, align 8
  br label %563

369:                                              ; preds = %353
  br label %552

370:                                              ; preds = %130, %125, %122, %119
  %371 = load i32, i32* %15, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %394

373:                                              ; preds = %370
  %374 = load i32, i32* %16, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %394

376:                                              ; preds = %373
  %377 = load i64, i64* %17, align 8
  %378 = call i64 @TREE_TYPE(i64 %377)
  %379 = call i32 @TYPE_MODE(i64 %378)
  %380 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = load i64, i64* %18, align 8
  %384 = call i64 @TREE_TYPE(i64 %383)
  %385 = call i32 @TYPE_MODE(i64 %384)
  %386 = call i64 @DECIMAL_FLOAT_MODE_P(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %382, %376
  %389 = load i64, i64* %17, align 8
  %390 = call i64 @TREE_TYPE(i64 %389)
  %391 = load i64, i64* %18, align 8
  %392 = call i64 @TREE_TYPE(i64 %391)
  %393 = call i64 @common_type(i64 %390, i64 %392)
  store i64 %393, i64* %10, align 8
  br label %551

394:                                              ; preds = %382, %373, %370
  %395 = load i32, i32* %15, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %411

397:                                              ; preds = %394
  %398 = load i32, i32* %16, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %411

400:                                              ; preds = %397
  %401 = load i64, i64* %17, align 8
  %402 = call i64 @TREE_TYPE(i64 %401)
  %403 = call i64 @TYPE_PRECISION(i64 %402)
  %404 = load i64, i64* %18, align 8
  %405 = call i64 @TREE_TYPE(i64 %404)
  %406 = call i64 @TYPE_PRECISION(i64 %405)
  %407 = icmp eq i64 %403, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %400
  %409 = load i64, i64* %17, align 8
  %410 = call i64 @TREE_TYPE(i64 %409)
  store i64 %410, i64* %10, align 8
  br label %550

411:                                              ; preds = %400, %397, %394
  %412 = load i32, i32* %13, align 4
  %413 = load i32, i32* %14, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %465

415:                                              ; preds = %411
  %416 = load i32, i32* %15, align 4
  %417 = load i32, i32* %16, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %465

419:                                              ; preds = %415
  %420 = load i64, i64* %17, align 8
  %421 = call i64 @TREE_TYPE(i64 %420)
  %422 = call i64 @TYPE_PRECISION(i64 %421)
  %423 = load i64*, i64** %8, align 8
  %424 = load i64, i64* %423, align 8
  %425 = call i64 @TYPE_PRECISION(i64 %424)
  %426 = icmp slt i64 %422, %425
  br i1 %426, label %427, label %465

427:                                              ; preds = %419
  %428 = load i64, i64* %18, align 8
  %429 = call i64 @TREE_TYPE(i64 %428)
  %430 = call i64 @TYPE_PRECISION(i64 %429)
  %431 = load i64*, i64** %8, align 8
  %432 = load i64, i64* %431, align 8
  %433 = call i64 @TYPE_PRECISION(i64 %432)
  %434 = icmp slt i64 %430, %433
  br i1 %434, label %435, label %465

435:                                              ; preds = %427
  %436 = load i64, i64* %17, align 8
  %437 = call i64 @TREE_TYPE(i64 %436)
  %438 = load i64, i64* %18, align 8
  %439 = call i64 @TREE_TYPE(i64 %438)
  %440 = call i64 @common_type(i64 %437, i64 %439)
  store i64 %440, i64* %10, align 8
  %441 = load i32, i32* %13, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %448, label %443

443:                                              ; preds = %435
  %444 = load i64*, i64** %8, align 8
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @TYPE_UNSIGNED(i64 %445)
  %447 = icmp ne i32 %446, 0
  br label %448

448:                                              ; preds = %443, %435
  %449 = phi i1 [ true, %435 ], [ %447, %443 ]
  %450 = zext i1 %449 to i32
  %451 = load i64, i64* %10, align 8
  %452 = call i64 @c_common_signed_or_unsigned_type(i32 %450, i64 %451)
  store i64 %452, i64* %10, align 8
  %453 = load i32, i32* %13, align 4
  %454 = load i64, i64* %17, align 8
  %455 = call i64 @TREE_TYPE(i64 %454)
  %456 = call i64 @c_common_signed_or_unsigned_type(i32 %453, i64 %455)
  %457 = load i64, i64* %17, align 8
  %458 = call i64 @convert(i64 %456, i64 %457)
  store i64 %458, i64* %17, align 8
  %459 = load i32, i32* %14, align 4
  %460 = load i64, i64* %18, align 8
  %461 = call i64 @TREE_TYPE(i64 %460)
  %462 = call i64 @c_common_signed_or_unsigned_type(i32 %459, i64 %461)
  %463 = load i64, i64* %18, align 8
  %464 = call i64 @convert(i64 %462, i64 %463)
  store i64 %464, i64* %18, align 8
  br label %549

465:                                              ; preds = %427, %419, %415, %411
  %466 = load i64*, i64** %8, align 8
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %10, align 8
  %468 = load i64, i64* %11, align 8
  store i64 %468, i64* %17, align 8
  %469 = load i64, i64* %12, align 8
  store i64 %469, i64* %18, align 8
  %470 = load i32, i32* %15, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %548, label %472

472:                                              ; preds = %465
  %473 = load i32, i32* %16, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %548, label %475

475:                                              ; preds = %472
  %476 = load i64, i64* %18, align 8
  %477 = call i64 @integer_zerop(i64 %476)
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %548

479:                                              ; preds = %475
  %480 = load i64*, i64** %8, align 8
  %481 = load i64, i64* %480, align 8
  %482 = call i32 @TYPE_UNSIGNED(i64 %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %548

484:                                              ; preds = %479
  store i64 0, i64* %31, align 8
  %485 = load i32, i32* %19, align 4
  switch i32 %485, label %530 [
    i32 131, label %486
    i32 128, label %508
  ]

486:                                              ; preds = %484
  %487 = load i32, i32* @extra_warnings, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %506

489:                                              ; preds = %486
  %490 = load i32, i32* @in_system_header, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %506, label %492

492:                                              ; preds = %489
  %493 = load i64, i64* %17, align 8
  %494 = call i64 @TREE_CODE(i64 %493)
  %495 = load i64, i64* @INTEGER_CST, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %504

497:                                              ; preds = %492
  %498 = load i64, i64* %10, align 8
  %499 = call i64 @c_common_signed_type(i64 %498)
  %500 = load i64, i64* %17, align 8
  %501 = call i64 @convert(i64 %499, i64 %500)
  %502 = call i32 @TREE_OVERFLOW(i64 %501)
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %497, %492
  %505 = call i32 @warning(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %506

506:                                              ; preds = %504, %497, %489, %486
  %507 = load i64, i64* @truthvalue_true_node, align 8
  store i64 %507, i64* %31, align 8
  br label %531

508:                                              ; preds = %484
  %509 = load i32, i32* @extra_warnings, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %528

511:                                              ; preds = %508
  %512 = load i32, i32* @in_system_header, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %528, label %514

514:                                              ; preds = %511
  %515 = load i64, i64* %17, align 8
  %516 = call i64 @TREE_CODE(i64 %515)
  %517 = load i64, i64* @INTEGER_CST, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %514
  %520 = load i64, i64* %10, align 8
  %521 = call i64 @c_common_signed_type(i64 %520)
  %522 = load i64, i64* %17, align 8
  %523 = call i64 @convert(i64 %521, i64 %522)
  %524 = call i32 @TREE_OVERFLOW(i64 %523)
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %519, %514
  %527 = call i32 @warning(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %528

528:                                              ; preds = %526, %519, %511, %508
  %529 = load i64, i64* @truthvalue_false_node, align 8
  store i64 %529, i64* %31, align 8
  br label %531

530:                                              ; preds = %484
  br label %531

531:                                              ; preds = %530, %528, %506
  %532 = load i64, i64* %31, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %547

534:                                              ; preds = %531
  %535 = load i64, i64* %17, align 8
  %536 = call i64 @TREE_SIDE_EFFECTS(i64 %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %534
  %539 = load i32, i32* @COMPOUND_EXPR, align 4
  %540 = load i64, i64* %31, align 8
  %541 = call i64 @TREE_TYPE(i64 %540)
  %542 = load i64, i64* %17, align 8
  %543 = load i64, i64* %31, align 8
  %544 = call i64 @build2(i32 %539, i64 %541, i64 %542, i64 %543)
  store i64 %544, i64* %5, align 8
  br label %563

545:                                              ; preds = %534
  %546 = load i64, i64* %31, align 8
  store i64 %546, i64* %5, align 8
  br label %563

547:                                              ; preds = %531
  br label %548

548:                                              ; preds = %547, %479, %475, %472, %465
  br label %549

549:                                              ; preds = %548, %448
  br label %550

550:                                              ; preds = %549, %408
  br label %551

551:                                              ; preds = %550, %388
  br label %552

552:                                              ; preds = %551, %369
  %553 = load i64, i64* %10, align 8
  %554 = load i64, i64* %17, align 8
  %555 = call i64 @convert(i64 %553, i64 %554)
  %556 = load i64*, i64** %6, align 8
  store i64 %555, i64* %556, align 8
  %557 = load i64, i64* %10, align 8
  %558 = load i64, i64* %18, align 8
  %559 = call i64 @convert(i64 %557, i64 %558)
  %560 = load i64*, i64** %7, align 8
  store i64 %559, i64* %560, align 8
  %561 = load i64, i64* @truthvalue_type_node, align 8
  %562 = load i64*, i64** %8, align 8
  store i64 %561, i64* %562, align 8
  store i64 0, i64* %5, align 8
  br label %563

563:                                              ; preds = %552, %545, %538, %367, %360
  %564 = load i64, i64* %5, align 8
  ret i64 %564
}

declare dso_local i64 @get_narrower(i64, i32*) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i32 @real_zerop(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @c_common_signed_or_unsigned_type(i32, i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @c_common_signed_type(i64) #1

declare dso_local i64 @build_int_cst_wide(i64, i32, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i64) #1

declare dso_local i64 @force_fit_type(i64, i32, i32, i32) #1

declare dso_local i32 @TREE_OVERFLOW(i64) #1

declare dso_local i32 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i64 @convert(i64, i64) #1

declare dso_local i32 @INT_CST_LT_UNSIGNED(i64, i64) #1

declare dso_local i32 @INT_CST_LT(i64, i64) #1

declare dso_local i64 @c_common_unsigned_type(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @build2(i32, i64, i64, i64) #1

declare dso_local i64 @DECIMAL_FLOAT_MODE_P(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @common_type(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
