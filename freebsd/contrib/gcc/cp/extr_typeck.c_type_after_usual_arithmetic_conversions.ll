; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_type_after_usual_arithmetic_conversions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_type_after_usual_arithmetic_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@VECTOR_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@REAL_TYPE = common dso_local global i32 0, align 4
@long_long_unsigned_type_node = common dso_local global i64 0, align 8
@long_long_integer_type_node = common dso_local global i64 0, align 8
@long_unsigned_type_node = common dso_local global i64 0, align 8
@long_integer_type_node = common dso_local global i64 0, align 8
@long_double_type_node = common dso_local global i64 0, align 8
@double_type_node = common dso_local global i64 0, align 8
@float_type_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @type_after_usual_arithmetic_conversions(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @TREE_CODE(i64 %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ARITHMETIC_TYPE_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @TREE_CODE(i64 %24)
  %26 = load i64, i64* @VECTOR_TYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @ENUMERAL_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %23, %2
  %34 = phi i1 [ true, %23 ], [ true, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @ARITHMETIC_TYPE_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @VECTOR_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_CODE(i64 %46)
  %48 = load i64, i64* @ENUMERAL_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %45, %40, %33
  %51 = phi i1 [ true, %40 ], [ true, %33 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @gcc_assert(i32 %52)
  %54 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 %54(i64 %55, i64 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @COMPLEX_TYPE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @COMPLEX_TYPE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %119

65:                                               ; preds = %61, %50
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @COMPLEX_TYPE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @TREE_TYPE(i64 %70)
  br label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  store i64 %75, i64* %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @COMPLEX_TYPE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @TREE_TYPE(i64 %80)
  br label %84

82:                                               ; preds = %74
  %83 = load i64, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi i64 [ %81, %79 ], [ %83, %82 ]
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i64 @type_after_usual_arithmetic_conversions(i64 %86, i64 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @COMPLEX_TYPE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_TYPE(i64 %93)
  %95 = load i64, i64* %11, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @build_type_attribute_variant(i64 %98, i64 %99)
  store i64 %100, i64* %3, align 8
  br label %378

101:                                              ; preds = %92, %84
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @COMPLEX_TYPE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @TREE_TYPE(i64 %106)
  %108 = load i64, i64* %11, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @build_type_attribute_variant(i64 %111, i64 %112)
  store i64 %113, i64* %3, align 8
  br label %378

114:                                              ; preds = %105, %101
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @build_complex_type(i64 %115)
  %117 = load i64, i64* %8, align 8
  %118 = call i64 @build_type_attribute_variant(i64 %116, i64 %117)
  store i64 %118, i64* %3, align 8
  br label %378

119:                                              ; preds = %61
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* @VECTOR_TYPE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @TYPE_UNSIGNED(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @build_type_attribute_variant(i64 %129, i64 %130)
  store i64 %131, i64* %3, align 8
  br label %378

132:                                              ; preds = %124
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i64 @build_type_attribute_variant(i64 %133, i64 %134)
  store i64 %135, i64* %3, align 8
  br label %378

136:                                              ; preds = %119
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @REAL_TYPE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @REAL_TYPE, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i64 @build_type_attribute_variant(i64 %145, i64 %146)
  store i64 %147, i64* %3, align 8
  br label %378

148:                                              ; preds = %140, %136
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @REAL_TYPE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @REAL_TYPE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i64 @build_type_attribute_variant(i64 %157, i64 %158)
  store i64 %159, i64* %3, align 8
  br label %378

160:                                              ; preds = %152, %148
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* @REAL_TYPE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load i64, i64* %4, align 8
  %166 = call i64 @type_promotes_to(i64 %165)
  store i64 %166, i64* %4, align 8
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @type_promotes_to(i64 %167)
  store i64 %168, i64* %5, align 8
  br label %169

169:                                              ; preds = %164, %160
  %170 = load i64, i64* %4, align 8
  %171 = call i64 @TYPE_PRECISION(i64 %170)
  %172 = load i64, i64* %5, align 8
  %173 = call i64 @TYPE_PRECISION(i64 %172)
  %174 = icmp sgt i64 %171, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @build_type_attribute_variant(i64 %176, i64 %177)
  store i64 %178, i64* %3, align 8
  br label %378

179:                                              ; preds = %169
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @TYPE_PRECISION(i64 %180)
  %182 = load i64, i64* %4, align 8
  %183 = call i64 @TYPE_PRECISION(i64 %182)
  %184 = icmp sgt i64 %181, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i64 @build_type_attribute_variant(i64 %186, i64 %187)
  store i64 %188, i64* %3, align 8
  br label %378

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189
  %191 = load i64, i64* %4, align 8
  %192 = call i64 @TYPE_MAIN_VARIANT(i64 %191)
  %193 = load i64, i64* %5, align 8
  %194 = call i64 @TYPE_MAIN_VARIANT(i64 %193)
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* %8, align 8
  %199 = call i64 @build_type_attribute_variant(i64 %197, i64 %198)
  store i64 %199, i64* %3, align 8
  br label %378

200:                                              ; preds = %190
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @REAL_TYPE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %326

204:                                              ; preds = %200
  %205 = load i64, i64* %4, align 8
  %206 = call i64 @TYPE_IS_SIZETYPE(i64 %205)
  %207 = load i64, i64* %5, align 8
  %208 = call i64 @TYPE_IS_SIZETYPE(i64 %207)
  %209 = icmp sgt i64 %206, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i64, i64* %4, align 8
  %212 = load i64, i64* %8, align 8
  %213 = call i64 @build_type_attribute_variant(i64 %211, i64 %212)
  store i64 %213, i64* %3, align 8
  br label %378

214:                                              ; preds = %204
  %215 = load i64, i64* %5, align 8
  %216 = call i64 @TYPE_IS_SIZETYPE(i64 %215)
  %217 = load i64, i64* %4, align 8
  %218 = call i64 @TYPE_IS_SIZETYPE(i64 %217)
  %219 = icmp sgt i64 %216, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i64, i64* %5, align 8
  %222 = load i64, i64* %8, align 8
  %223 = call i64 @build_type_attribute_variant(i64 %221, i64 %222)
  store i64 %223, i64* %3, align 8
  br label %378

224:                                              ; preds = %214
  %225 = load i64, i64* %4, align 8
  %226 = call i64 @TYPE_MAIN_VARIANT(i64 %225)
  %227 = load i64, i64* @long_long_unsigned_type_node, align 8
  %228 = call i64 @same_type_p(i64 %226, i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load i64, i64* %5, align 8
  %232 = call i64 @TYPE_MAIN_VARIANT(i64 %231)
  %233 = load i64, i64* @long_long_unsigned_type_node, align 8
  %234 = call i64 @same_type_p(i64 %232, i64 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %230, %224
  %237 = load i64, i64* @long_long_unsigned_type_node, align 8
  %238 = load i64, i64* %8, align 8
  %239 = call i64 @build_type_attribute_variant(i64 %237, i64 %238)
  store i64 %239, i64* %3, align 8
  br label %378

240:                                              ; preds = %230
  %241 = load i64, i64* %4, align 8
  %242 = call i64 @TYPE_MAIN_VARIANT(i64 %241)
  %243 = load i64, i64* @long_long_integer_type_node, align 8
  %244 = call i64 @same_type_p(i64 %242, i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %240
  %247 = load i64, i64* %5, align 8
  %248 = call i64 @TYPE_MAIN_VARIANT(i64 %247)
  %249 = load i64, i64* @long_long_integer_type_node, align 8
  %250 = call i64 @same_type_p(i64 %248, i64 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %246, %240
  %253 = load i64, i64* %4, align 8
  %254 = call i64 @TYPE_UNSIGNED(i64 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load i64, i64* %5, align 8
  %258 = call i64 @TYPE_UNSIGNED(i64 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256, %252
  %261 = load i64, i64* @long_long_unsigned_type_node, align 8
  br label %264

262:                                              ; preds = %256
  %263 = load i64, i64* @long_long_integer_type_node, align 8
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i64 [ %261, %260 ], [ %263, %262 ]
  store i64 %265, i64* %12, align 8
  %266 = load i64, i64* %12, align 8
  %267 = load i64, i64* %8, align 8
  %268 = call i64 @build_type_attribute_variant(i64 %266, i64 %267)
  store i64 %268, i64* %3, align 8
  br label %378

269:                                              ; preds = %246
  %270 = load i64, i64* %4, align 8
  %271 = call i64 @TYPE_MAIN_VARIANT(i64 %270)
  %272 = load i64, i64* @long_unsigned_type_node, align 8
  %273 = call i64 @same_type_p(i64 %271, i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %269
  %276 = load i64, i64* %5, align 8
  %277 = call i64 @TYPE_MAIN_VARIANT(i64 %276)
  %278 = load i64, i64* @long_unsigned_type_node, align 8
  %279 = call i64 @same_type_p(i64 %277, i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %275, %269
  %282 = load i64, i64* @long_unsigned_type_node, align 8
  %283 = load i64, i64* %8, align 8
  %284 = call i64 @build_type_attribute_variant(i64 %282, i64 %283)
  store i64 %284, i64* %3, align 8
  br label %378

285:                                              ; preds = %275
  %286 = load i64, i64* %4, align 8
  %287 = call i64 @TYPE_MAIN_VARIANT(i64 %286)
  %288 = load i64, i64* @long_integer_type_node, align 8
  %289 = call i64 @same_type_p(i64 %287, i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %285
  %292 = load i64, i64* %5, align 8
  %293 = call i64 @TYPE_MAIN_VARIANT(i64 %292)
  %294 = load i64, i64* @long_integer_type_node, align 8
  %295 = call i64 @same_type_p(i64 %293, i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %314

297:                                              ; preds = %291, %285
  %298 = load i64, i64* %4, align 8
  %299 = call i64 @TYPE_UNSIGNED(i64 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %297
  %302 = load i64, i64* %5, align 8
  %303 = call i64 @TYPE_UNSIGNED(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %301, %297
  %306 = load i64, i64* @long_unsigned_type_node, align 8
  br label %309

307:                                              ; preds = %301
  %308 = load i64, i64* @long_integer_type_node, align 8
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i64 [ %306, %305 ], [ %308, %307 ]
  store i64 %310, i64* %13, align 8
  %311 = load i64, i64* %13, align 8
  %312 = load i64, i64* %8, align 8
  %313 = call i64 @build_type_attribute_variant(i64 %311, i64 %312)
  store i64 %313, i64* %3, align 8
  br label %378

314:                                              ; preds = %291
  %315 = load i64, i64* %4, align 8
  %316 = call i64 @TYPE_UNSIGNED(i64 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load i64, i64* %4, align 8
  %320 = load i64, i64* %8, align 8
  %321 = call i64 @build_type_attribute_variant(i64 %319, i64 %320)
  store i64 %321, i64* %3, align 8
  br label %378

322:                                              ; preds = %314
  %323 = load i64, i64* %5, align 8
  %324 = load i64, i64* %8, align 8
  %325 = call i64 @build_type_attribute_variant(i64 %323, i64 %324)
  store i64 %325, i64* %3, align 8
  br label %378

326:                                              ; preds = %200
  %327 = load i64, i64* %4, align 8
  %328 = call i64 @TYPE_MAIN_VARIANT(i64 %327)
  %329 = load i64, i64* @long_double_type_node, align 8
  %330 = call i64 @same_type_p(i64 %328, i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load i64, i64* %5, align 8
  %334 = call i64 @TYPE_MAIN_VARIANT(i64 %333)
  %335 = load i64, i64* @long_double_type_node, align 8
  %336 = call i64 @same_type_p(i64 %334, i64 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %332, %326
  %339 = load i64, i64* @long_double_type_node, align 8
  %340 = load i64, i64* %8, align 8
  %341 = call i64 @build_type_attribute_variant(i64 %339, i64 %340)
  store i64 %341, i64* %3, align 8
  br label %378

342:                                              ; preds = %332
  %343 = load i64, i64* %4, align 8
  %344 = call i64 @TYPE_MAIN_VARIANT(i64 %343)
  %345 = load i64, i64* @double_type_node, align 8
  %346 = call i64 @same_type_p(i64 %344, i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %342
  %349 = load i64, i64* %5, align 8
  %350 = call i64 @TYPE_MAIN_VARIANT(i64 %349)
  %351 = load i64, i64* @double_type_node, align 8
  %352 = call i64 @same_type_p(i64 %350, i64 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348, %342
  %355 = load i64, i64* @double_type_node, align 8
  %356 = load i64, i64* %8, align 8
  %357 = call i64 @build_type_attribute_variant(i64 %355, i64 %356)
  store i64 %357, i64* %3, align 8
  br label %378

358:                                              ; preds = %348
  %359 = load i64, i64* %4, align 8
  %360 = call i64 @TYPE_MAIN_VARIANT(i64 %359)
  %361 = load i64, i64* @float_type_node, align 8
  %362 = call i64 @same_type_p(i64 %360, i64 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %358
  %365 = load i64, i64* %5, align 8
  %366 = call i64 @TYPE_MAIN_VARIANT(i64 %365)
  %367 = load i64, i64* @float_type_node, align 8
  %368 = call i64 @same_type_p(i64 %366, i64 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %364, %358
  %371 = load i64, i64* @float_type_node, align 8
  %372 = load i64, i64* %8, align 8
  %373 = call i64 @build_type_attribute_variant(i64 %371, i64 %372)
  store i64 %373, i64* %3, align 8
  br label %378

374:                                              ; preds = %364
  %375 = load i64, i64* %4, align 8
  %376 = load i64, i64* %8, align 8
  %377 = call i64 @build_type_attribute_variant(i64 %375, i64 %376)
  store i64 %377, i64* %3, align 8
  br label %378

378:                                              ; preds = %374, %370, %354, %338, %322, %318, %309, %281, %264, %236, %220, %210, %196, %185, %175, %156, %144, %132, %128, %114, %110, %97
  %379 = load i64, i64* %3, align 8
  ret i64 %379
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @ARITHMETIC_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

declare dso_local i64 @build_complex_type(i64) #1

declare dso_local i64 @TYPE_UNSIGNED(i64) #1

declare dso_local i64 @type_promotes_to(i64) #1

declare dso_local i64 @TYPE_PRECISION(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
