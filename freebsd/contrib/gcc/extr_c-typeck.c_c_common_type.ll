; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_common_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_c_common_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@TYPE_UNQUALIFIED = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@VECTOR_TYPE = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@REAL_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"can%'t mix operands of decimal float and vector types\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"can%'t mix operands of decimal float and complex types\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"can%'t mix operands of decimal float and other float types\00", align 1
@dfloat128_type_node = common dso_local global i64 0, align 8
@dfloat64_type_node = common dso_local global i64 0, align 8
@dfloat32_type_node = common dso_local global i64 0, align 8
@long_long_unsigned_type_node = common dso_local global i64 0, align 8
@long_long_integer_type_node = common dso_local global i64 0, align 8
@long_unsigned_type_node = common dso_local global i64 0, align 8
@long_integer_type_node = common dso_local global i64 0, align 8
@long_double_type_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @c_common_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c_common_type(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @error_mark_node, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %394

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %3, align 8
  br label %394

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @TYPE_QUALS(i64 %23)
  %25 = load i64, i64* @TYPE_UNQUALIFIED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TYPE_MAIN_VARIANT(i64 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TYPE_QUALS(i64 %31)
  %33 = load i64, i64* @TYPE_UNQUALIFIED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TYPE_MAIN_VARIANT(i64 %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TYPE_ATTRIBUTES(i64 %39)
  %41 = load i64, i64* @NULL_TREE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @NULL_TREE, align 8
  %46 = call i64 @build_type_attribute_variant(i64 %44, i64 %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @TYPE_ATTRIBUTES(i64 %48)
  %50 = load i64, i64* @NULL_TREE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @NULL_TREE, align 8
  %55 = call i64 @build_type_attribute_variant(i64 %53, i64 %54)
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %3, align 8
  br label %394

62:                                               ; preds = %56
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @TREE_CODE(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @TREE_CODE(i64 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @VECTOR_TYPE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @COMPLEX_TYPE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @REAL_TYPE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @INTEGER_TYPE, align 4
  %81 = icmp eq i32 %79, %80
  br label %82

82:                                               ; preds = %78, %74, %70, %62
  %83 = phi i1 [ true, %74 ], [ true, %70 ], [ true, %62 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @gcc_assert(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @VECTOR_TYPE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @COMPLEX_TYPE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @REAL_TYPE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @INTEGER_TYPE, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %97, %93, %89, %82
  %102 = phi i1 [ true, %93 ], [ true, %89 ], [ true, %82 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @gcc_assert(i32 %103)
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @DECIMAL_FLOAT_TYPE_P(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @DECIMAL_FLOAT_TYPE_P(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %108, %101
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @DECIMAL_FLOAT_TYPE_P(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @DECIMAL_FLOAT_TYPE_P(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %154, label %120

120:                                              ; preds = %116, %112
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @VECTOR_TYPE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @VECTOR_TYPE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %120
  %129 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %130 = load i64, i64* @error_mark_node, align 8
  store i64 %130, i64* %3, align 8
  br label %394

131:                                              ; preds = %124
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @COMPLEX_TYPE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @COMPLEX_TYPE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %131
  %140 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i64, i64* @error_mark_node, align 8
  store i64 %141, i64* %3, align 8
  br label %394

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @REAL_TYPE, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @REAL_TYPE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i64, i64* @error_mark_node, align 8
  store i64 %152, i64* %3, align 8
  br label %394

153:                                              ; preds = %146, %142
  br label %154

154:                                              ; preds = %153, %116, %108
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @VECTOR_TYPE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %3, align 8
  br label %394

160:                                              ; preds = %154
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @VECTOR_TYPE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i64, i64* %5, align 8
  store i64 %165, i64* %3, align 8
  br label %394

166:                                              ; preds = %160
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @COMPLEX_TYPE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @COMPLEX_TYPE, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %222

174:                                              ; preds = %170, %166
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @COMPLEX_TYPE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i64, i64* %4, align 8
  %180 = call i64 @TREE_TYPE(i64 %179)
  br label %183

181:                                              ; preds = %174
  %182 = load i64, i64* %4, align 8
  br label %183

183:                                              ; preds = %181, %178
  %184 = phi i64 [ %180, %178 ], [ %182, %181 ]
  store i64 %184, i64* %8, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @COMPLEX_TYPE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i64, i64* %5, align 8
  %190 = call i64 @TREE_TYPE(i64 %189)
  br label %193

191:                                              ; preds = %183
  %192 = load i64, i64* %5, align 8
  br label %193

193:                                              ; preds = %191, %188
  %194 = phi i64 [ %190, %188 ], [ %192, %191 ]
  store i64 %194, i64* %9, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %9, align 8
  %197 = call i64 @c_common_type(i64 %195, i64 %196)
  store i64 %197, i64* %10, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @COMPLEX_TYPE, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load i64, i64* %4, align 8
  %203 = call i64 @TREE_TYPE(i64 %202)
  %204 = load i64, i64* %10, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i64, i64* %4, align 8
  store i64 %207, i64* %3, align 8
  br label %394

208:                                              ; preds = %201, %193
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @COMPLEX_TYPE, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i64, i64* %5, align 8
  %214 = call i64 @TREE_TYPE(i64 %213)
  %215 = load i64, i64* %10, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i64, i64* %5, align 8
  store i64 %218, i64* %3, align 8
  br label %394

219:                                              ; preds = %212, %208
  %220 = load i64, i64* %10, align 8
  %221 = call i64 @build_complex_type(i64 %220)
  store i64 %221, i64* %3, align 8
  br label %394

222:                                              ; preds = %170
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @REAL_TYPE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %222
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @REAL_TYPE, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i64, i64* %4, align 8
  store i64 %231, i64* %3, align 8
  br label %394

232:                                              ; preds = %226, %222
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @REAL_TYPE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @REAL_TYPE, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i64, i64* %5, align 8
  store i64 %241, i64* %3, align 8
  br label %394

242:                                              ; preds = %236, %232
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @REAL_TYPE, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %289

246:                                              ; preds = %242
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @REAL_TYPE, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %289

250:                                              ; preds = %246
  %251 = load i64, i64* %4, align 8
  %252 = call i64 @TYPE_MAIN_VARIANT(i64 %251)
  %253 = load i64, i64* @dfloat128_type_node, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i64, i64* %5, align 8
  %257 = call i64 @TYPE_MAIN_VARIANT(i64 %256)
  %258 = load i64, i64* @dfloat128_type_node, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255, %250
  %261 = load i64, i64* @dfloat128_type_node, align 8
  store i64 %261, i64* %3, align 8
  br label %394

262:                                              ; preds = %255
  %263 = load i64, i64* %4, align 8
  %264 = call i64 @TYPE_MAIN_VARIANT(i64 %263)
  %265 = load i64, i64* @dfloat64_type_node, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %272, label %267

267:                                              ; preds = %262
  %268 = load i64, i64* %5, align 8
  %269 = call i64 @TYPE_MAIN_VARIANT(i64 %268)
  %270 = load i64, i64* @dfloat64_type_node, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %267, %262
  %273 = load i64, i64* @dfloat64_type_node, align 8
  store i64 %273, i64* %3, align 8
  br label %394

274:                                              ; preds = %267
  %275 = load i64, i64* %4, align 8
  %276 = call i64 @TYPE_MAIN_VARIANT(i64 %275)
  %277 = load i64, i64* @dfloat32_type_node, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = load i64, i64* %5, align 8
  %281 = call i64 @TYPE_MAIN_VARIANT(i64 %280)
  %282 = load i64, i64* @dfloat32_type_node, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %279, %274
  %285 = load i64, i64* @dfloat32_type_node, align 8
  store i64 %285, i64* %3, align 8
  br label %394

286:                                              ; preds = %279
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288, %246, %242
  %290 = load i64, i64* %4, align 8
  %291 = call i64 @TYPE_PRECISION(i64 %290)
  %292 = load i64, i64* %5, align 8
  %293 = call i64 @TYPE_PRECISION(i64 %292)
  %294 = icmp sgt i64 %291, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = load i64, i64* %4, align 8
  store i64 %296, i64* %3, align 8
  br label %394

297:                                              ; preds = %289
  %298 = load i64, i64* %5, align 8
  %299 = call i64 @TYPE_PRECISION(i64 %298)
  %300 = load i64, i64* %4, align 8
  %301 = call i64 @TYPE_PRECISION(i64 %300)
  %302 = icmp sgt i64 %299, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  %304 = load i64, i64* %5, align 8
  store i64 %304, i64* %3, align 8
  br label %394

305:                                              ; preds = %297
  br label %306

306:                                              ; preds = %305
  %307 = load i64, i64* %4, align 8
  %308 = call i64 @TYPE_MAIN_VARIANT(i64 %307)
  %309 = load i64, i64* @long_long_unsigned_type_node, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %316, label %311

311:                                              ; preds = %306
  %312 = load i64, i64* %5, align 8
  %313 = call i64 @TYPE_MAIN_VARIANT(i64 %312)
  %314 = load i64, i64* @long_long_unsigned_type_node, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %311, %306
  %317 = load i64, i64* @long_long_unsigned_type_node, align 8
  store i64 %317, i64* %3, align 8
  br label %394

318:                                              ; preds = %311
  %319 = load i64, i64* %4, align 8
  %320 = call i64 @TYPE_MAIN_VARIANT(i64 %319)
  %321 = load i64, i64* @long_long_integer_type_node, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %328, label %323

323:                                              ; preds = %318
  %324 = load i64, i64* %5, align 8
  %325 = call i64 @TYPE_MAIN_VARIANT(i64 %324)
  %326 = load i64, i64* @long_long_integer_type_node, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %340

328:                                              ; preds = %323, %318
  %329 = load i64, i64* %4, align 8
  %330 = call i64 @TYPE_UNSIGNED(i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load i64, i64* %5, align 8
  %334 = call i64 @TYPE_UNSIGNED(i64 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %332, %328
  %337 = load i64, i64* @long_long_unsigned_type_node, align 8
  store i64 %337, i64* %3, align 8
  br label %394

338:                                              ; preds = %332
  %339 = load i64, i64* @long_long_integer_type_node, align 8
  store i64 %339, i64* %3, align 8
  br label %394

340:                                              ; preds = %323
  %341 = load i64, i64* %4, align 8
  %342 = call i64 @TYPE_MAIN_VARIANT(i64 %341)
  %343 = load i64, i64* @long_unsigned_type_node, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %350, label %345

345:                                              ; preds = %340
  %346 = load i64, i64* %5, align 8
  %347 = call i64 @TYPE_MAIN_VARIANT(i64 %346)
  %348 = load i64, i64* @long_unsigned_type_node, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %345, %340
  %351 = load i64, i64* @long_unsigned_type_node, align 8
  store i64 %351, i64* %3, align 8
  br label %394

352:                                              ; preds = %345
  %353 = load i64, i64* %4, align 8
  %354 = call i64 @TYPE_MAIN_VARIANT(i64 %353)
  %355 = load i64, i64* @long_integer_type_node, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %362, label %357

357:                                              ; preds = %352
  %358 = load i64, i64* %5, align 8
  %359 = call i64 @TYPE_MAIN_VARIANT(i64 %358)
  %360 = load i64, i64* @long_integer_type_node, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %374

362:                                              ; preds = %357, %352
  %363 = load i64, i64* %4, align 8
  %364 = call i64 @TYPE_UNSIGNED(i64 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = load i64, i64* %5, align 8
  %368 = call i64 @TYPE_UNSIGNED(i64 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %366, %362
  %371 = load i64, i64* @long_unsigned_type_node, align 8
  store i64 %371, i64* %3, align 8
  br label %394

372:                                              ; preds = %366
  %373 = load i64, i64* @long_integer_type_node, align 8
  store i64 %373, i64* %3, align 8
  br label %394

374:                                              ; preds = %357
  %375 = load i64, i64* %4, align 8
  %376 = call i64 @TYPE_MAIN_VARIANT(i64 %375)
  %377 = load i64, i64* @long_double_type_node, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %384, label %379

379:                                              ; preds = %374
  %380 = load i64, i64* %5, align 8
  %381 = call i64 @TYPE_MAIN_VARIANT(i64 %380)
  %382 = load i64, i64* @long_double_type_node, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %379, %374
  %385 = load i64, i64* @long_double_type_node, align 8
  store i64 %385, i64* %3, align 8
  br label %394

386:                                              ; preds = %379
  %387 = load i64, i64* %4, align 8
  %388 = call i64 @TYPE_UNSIGNED(i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = load i64, i64* %4, align 8
  store i64 %391, i64* %3, align 8
  br label %394

392:                                              ; preds = %386
  %393 = load i64, i64* %5, align 8
  store i64 %393, i64* %3, align 8
  br label %394

394:                                              ; preds = %392, %390, %384, %372, %370, %350, %338, %336, %316, %303, %295, %284, %272, %260, %240, %230, %219, %217, %206, %164, %158, %150, %139, %128, %60, %20, %14
  %395 = load i64, i64* %3, align 8
  ret i64 %395
}

declare dso_local i64 @TYPE_QUALS(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECIMAL_FLOAT_TYPE_P(i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build_complex_type(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
