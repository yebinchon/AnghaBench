; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comptypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_comptypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i32 0, align 4
@COMPARE_STRICT = common dso_local global i32 0, align 4
@COMPARE_BASE = common dso_local global i32 0, align 4
@COMPARE_DERIVED = common dso_local global i32 0, align 4
@COMPARE_REDECLARATION = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comptypes(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %404

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @error_mark_node, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %404

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @TYPE_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @TYPE_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @TREE_CODE(i64 %37)
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @resolve_typename_type(i64 %41, i32 1)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @error_mark_node, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @TREE_CODE(i64 %50)
  %52 = icmp eq i32 %51, 131
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @resolve_typename_type(i64 %54, i32 1)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @error_mark_node, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @TREE_CODE(i64 %63)
  %65 = load i32, i32* @INTEGER_TYPE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @TYPE_IS_SIZETYPE(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %76)
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %75, %71, %67, %62
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @TREE_CODE(i64 %79)
  %81 = load i32, i32* @INTEGER_TYPE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @TYPE_IS_SIZETYPE(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @TYPE_ORIG_SIZE_TYPE(i64 %92)
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %91, %87, %83, %78
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @TYPE_PTRMEMFUNC_P(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %99)
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @TYPE_PTRMEMFUNC_P(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64 %106)
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @TREE_CODE(i64 %109)
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @TREE_CODE(i64 %111)
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %404

115:                                              ; preds = %108
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @TREE_CODE(i64 %116)
  %118 = icmp ne i32 %117, 143
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @TYPE_QUALS(i64 %120)
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @TYPE_QUALS(i64 %122)
  %124 = icmp ne i64 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %404

126:                                              ; preds = %119, %115
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @TYPE_FOR_JAVA(i64 %127)
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @TYPE_FOR_JAVA(i64 %129)
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %404

133:                                              ; preds = %126
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @TREE_CODE(i64 %134)
  %136 = icmp ne i32 %135, 143
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i64, i64* %5, align 8
  %139 = call i64 @TYPE_MAIN_VARIANT(i64 %138)
  %140 = load i64, i64* %6, align 8
  %141 = call i64 @TYPE_MAIN_VARIANT(i64 %140)
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %4, align 4
  br label %404

144:                                              ; preds = %137, %133
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @TREE_CODE(i64 %145)
  switch i32 %146, label %398 [
    i32 133, label %147
    i32 141, label %147
    i32 135, label %177
    i32 129, label %177
    i32 137, label %227
    i32 142, label %248
    i32 136, label %274
    i32 134, label %274
    i32 138, label %295
    i32 139, label %295
    i32 143, label %312
    i32 132, label %326
    i32 131, label %340
    i32 130, label %357
    i32 140, label %374
    i32 128, label %383
  ]

147:                                              ; preds = %144, %144
  %148 = load i64, i64* %5, align 8
  %149 = call i32 @TEMPLATE_TYPE_IDX(i64 %148)
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @TEMPLATE_TYPE_IDX(i64 %150)
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %147
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @TEMPLATE_TYPE_LEVEL(i64 %154)
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @TEMPLATE_TYPE_LEVEL(i64 %156)
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153, %147
  store i32 0, i32* %4, align 4
  br label %404

160:                                              ; preds = %153
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL(i64 %161)
  %163 = call i32 @DECL_TEMPLATE_PARMS(i32 %162)
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL(i64 %164)
  %166 = call i32 @DECL_TEMPLATE_PARMS(i32 %165)
  %167 = call i32 @comp_template_parms(i32 %163, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %404

170:                                              ; preds = %160
  %171 = load i64, i64* %5, align 8
  %172 = call i32 @TREE_CODE(i64 %171)
  %173 = icmp eq i32 %172, 133
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %399

175:                                              ; preds = %170
  %176 = load i32, i32* @COMPARE_STRICT, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %144, %144, %175
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @TYPE_TEMPLATE_INFO(i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load i64, i64* %6, align 8
  %183 = call i32 @TYPE_TEMPLATE_INFO(i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load i64, i64* %5, align 8
  %187 = call i32 @TYPE_TI_TEMPLATE(i64 %186)
  %188 = load i64, i64* %6, align 8
  %189 = call i32 @TYPE_TI_TEMPLATE(i64 %188)
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %185
  %192 = load i64, i64* %5, align 8
  %193 = call i32 @TREE_CODE(i64 %192)
  %194 = icmp eq i32 %193, 141
  br i1 %194, label %195, label %203

195:                                              ; preds = %191, %185
  %196 = load i64, i64* %5, align 8
  %197 = call i32 @TYPE_TI_ARGS(i64 %196)
  %198 = load i64, i64* %6, align 8
  %199 = call i32 @TYPE_TI_ARGS(i64 %198)
  %200 = call i32 @comp_template_args(i32 %197, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %399

203:                                              ; preds = %195, %191, %181, %177
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @COMPARE_BASE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i64, i64* %5, align 8
  %210 = load i64, i64* %6, align 8
  %211 = call i32 @DERIVED_FROM_P(i64 %209, i64 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %399

214:                                              ; preds = %208, %203
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @COMPARE_DERIVED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load i64, i64* %6, align 8
  %221 = load i64, i64* %5, align 8
  %222 = call i32 @DERIVED_FROM_P(i64 %220, i64 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %399

225:                                              ; preds = %219, %214
  br label %226

226:                                              ; preds = %225
  store i32 0, i32* %4, align 4
  br label %404

227:                                              ; preds = %144
  %228 = load i64, i64* %5, align 8
  %229 = call i64 @TYPE_OFFSET_BASETYPE(i64 %228)
  %230 = load i64, i64* %6, align 8
  %231 = call i64 @TYPE_OFFSET_BASETYPE(i64 %230)
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @COMPARE_REDECLARATION, align 4
  %234 = xor i32 %233, -1
  %235 = and i32 %232, %234
  %236 = call i32 @comptypes(i64 %229, i64 %231, i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  br label %404

239:                                              ; preds = %227
  %240 = load i64, i64* %5, align 8
  %241 = call i64 @TREE_TYPE(i64 %240)
  %242 = load i64, i64* %6, align 8
  %243 = call i64 @TREE_TYPE(i64 %242)
  %244 = call i32 @same_type_p(i64 %241, i64 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %404

247:                                              ; preds = %239
  br label %399

248:                                              ; preds = %144
  %249 = load i64, i64* %6, align 8
  %250 = call i32 @TREE_CODE(i64 %249)
  %251 = icmp eq i32 %250, 142
  br i1 %251, label %252, label %273

252:                                              ; preds = %248
  %253 = load i64, i64* %5, align 8
  %254 = call i64 @TREE_TYPE(i64 %253)
  store i64 %254, i64* %10, align 8
  %255 = load i64, i64* %6, align 8
  %256 = call i64 @TREE_TYPE(i64 %255)
  store i64 %256, i64* %11, align 8
  %257 = load i64, i64* %10, align 8
  %258 = call i64 @TREE_TYPE(i64 %257)
  %259 = load i64, i64* %11, align 8
  %260 = call i64 @TREE_TYPE(i64 %259)
  %261 = call i32 @same_type_ignoring_top_level_qualifiers_p(i64 %258, i64 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %252
  store i32 0, i32* %4, align 4
  br label %404

264:                                              ; preds = %252
  %265 = load i64, i64* %10, align 8
  %266 = call i32 @TYPE_ARG_TYPES(i64 %265)
  %267 = load i64, i64* %11, align 8
  %268 = call i32 @TYPE_ARG_TYPES(i64 %267)
  %269 = call i32 @compparms(i32 %266, i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %264
  store i32 0, i32* %4, align 4
  br label %404

272:                                              ; preds = %264
  br label %399

273:                                              ; preds = %248
  br label %274

274:                                              ; preds = %144, %144, %273
  %275 = load i64, i64* %5, align 8
  %276 = call i32 @TYPE_MODE(i64 %275)
  %277 = load i64, i64* %6, align 8
  %278 = call i32 @TYPE_MODE(i64 %277)
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %293, label %280

280:                                              ; preds = %274
  %281 = load i64, i64* %5, align 8
  %282 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i64 %281)
  %283 = load i64, i64* %6, align 8
  %284 = call i32 @TYPE_REF_CAN_ALIAS_ALL(i64 %283)
  %285 = icmp ne i32 %282, %284
  br i1 %285, label %293, label %286

286:                                              ; preds = %280
  %287 = load i64, i64* %5, align 8
  %288 = call i64 @TREE_TYPE(i64 %287)
  %289 = load i64, i64* %6, align 8
  %290 = call i64 @TREE_TYPE(i64 %289)
  %291 = call i32 @same_type_p(i64 %288, i64 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %286, %280, %274
  store i32 0, i32* %4, align 4
  br label %404

294:                                              ; preds = %286
  br label %399

295:                                              ; preds = %144, %144
  %296 = load i64, i64* %5, align 8
  %297 = call i64 @TREE_TYPE(i64 %296)
  %298 = load i64, i64* %6, align 8
  %299 = call i64 @TREE_TYPE(i64 %298)
  %300 = call i32 @same_type_p(i64 %297, i64 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %295
  store i32 0, i32* %4, align 4
  br label %404

303:                                              ; preds = %295
  %304 = load i64, i64* %5, align 8
  %305 = call i32 @TYPE_ARG_TYPES(i64 %304)
  %306 = load i64, i64* %6, align 8
  %307 = call i32 @TYPE_ARG_TYPES(i64 %306)
  %308 = call i32 @compparms(i32 %305, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %303
  store i32 0, i32* %4, align 4
  br label %404

311:                                              ; preds = %303
  br label %399

312:                                              ; preds = %144
  %313 = load i64, i64* %5, align 8
  %314 = load i64, i64* %6, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load i32, i32* @COMPARE_REDECLARATION, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  %319 = xor i1 %318, true
  %320 = xor i1 %319, true
  %321 = zext i1 %320 to i32
  %322 = call i32 @comp_array_types(i64 %313, i64 %314, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %312
  store i32 0, i32* %4, align 4
  br label %404

325:                                              ; preds = %312
  br label %399

326:                                              ; preds = %144
  %327 = load i64, i64* %5, align 8
  %328 = call i32 @TEMPLATE_TYPE_IDX(i64 %327)
  %329 = load i64, i64* %6, align 8
  %330 = call i32 @TEMPLATE_TYPE_IDX(i64 %329)
  %331 = icmp ne i32 %328, %330
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load i64, i64* %5, align 8
  %334 = call i32 @TEMPLATE_TYPE_LEVEL(i64 %333)
  %335 = load i64, i64* %6, align 8
  %336 = call i32 @TEMPLATE_TYPE_LEVEL(i64 %335)
  %337 = icmp ne i32 %334, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %332, %326
  store i32 0, i32* %4, align 4
  br label %404

339:                                              ; preds = %332
  br label %399

340:                                              ; preds = %144
  %341 = load i64, i64* %5, align 8
  %342 = call i32 @TYPENAME_TYPE_FULLNAME(i64 %341)
  %343 = load i64, i64* %6, align 8
  %344 = call i32 @TYPENAME_TYPE_FULLNAME(i64 %343)
  %345 = call i32 @cp_tree_equal(i32 %342, i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %340
  store i32 0, i32* %4, align 4
  br label %404

348:                                              ; preds = %340
  %349 = load i64, i64* %5, align 8
  %350 = call i64 @TYPE_CONTEXT(i64 %349)
  %351 = load i64, i64* %6, align 8
  %352 = call i64 @TYPE_CONTEXT(i64 %351)
  %353 = call i32 @same_type_p(i64 %350, i64 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %348
  store i32 0, i32* %4, align 4
  br label %404

356:                                              ; preds = %348
  br label %399

357:                                              ; preds = %144
  %358 = load i64, i64* %5, align 8
  %359 = call i32 @TYPE_IDENTIFIER(i64 %358)
  %360 = load i64, i64* %6, align 8
  %361 = call i32 @TYPE_IDENTIFIER(i64 %360)
  %362 = call i32 @cp_tree_equal(i32 %359, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %357
  store i32 0, i32* %4, align 4
  br label %404

365:                                              ; preds = %357
  %366 = load i64, i64* %5, align 8
  %367 = call i64 @TYPE_CONTEXT(i64 %366)
  %368 = load i64, i64* %6, align 8
  %369 = call i64 @TYPE_CONTEXT(i64 %368)
  %370 = call i32 @same_type_p(i64 %367, i64 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %365
  store i32 0, i32* %4, align 4
  br label %404

373:                                              ; preds = %365
  br label %399

374:                                              ; preds = %144
  %375 = load i64, i64* %5, align 8
  %376 = call i64 @TREE_TYPE(i64 %375)
  %377 = load i64, i64* %6, align 8
  %378 = call i64 @TREE_TYPE(i64 %377)
  %379 = call i32 @same_type_p(i64 %376, i64 %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %374
  store i32 0, i32* %4, align 4
  br label %404

382:                                              ; preds = %374
  br label %399

383:                                              ; preds = %144
  %384 = load i64, i64* %5, align 8
  %385 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %384)
  %386 = load i64, i64* %6, align 8
  %387 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %386)
  %388 = icmp ne i32 %385, %387
  br i1 %388, label %396, label %389

389:                                              ; preds = %383
  %390 = load i64, i64* %5, align 8
  %391 = call i64 @TREE_TYPE(i64 %390)
  %392 = load i64, i64* %6, align 8
  %393 = call i64 @TREE_TYPE(i64 %392)
  %394 = call i32 @same_type_p(i64 %391, i64 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %389, %383
  store i32 0, i32* %4, align 4
  br label %404

397:                                              ; preds = %389
  br label %399

398:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %404

399:                                              ; preds = %397, %382, %373, %356, %339, %325, %311, %294, %272, %247, %224, %213, %202, %174
  %400 = load i32 (i64, i64)*, i32 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %401 = load i64, i64* %5, align 8
  %402 = load i64, i64* %6, align 8
  %403 = call i32 %400(i64 %401, i64 %402)
  store i32 %403, i32* %4, align 4
  br label %404

404:                                              ; preds = %399, %398, %396, %381, %372, %364, %355, %347, %338, %324, %310, %302, %293, %271, %263, %246, %238, %226, %169, %159, %143, %132, %125, %114, %24, %15
  %405 = load i32, i32* %4, align 4
  ret i32 %405
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @resolve_typename_type(i64, i32) #1

declare dso_local i64 @TYPE_IS_SIZETYPE(i64) #1

declare dso_local i64 @TYPE_ORIG_SIZE_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_FN_TYPE(i64) #1

declare dso_local i64 @TYPE_QUALS(i64) #1

declare dso_local i64 @TYPE_FOR_JAVA(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @TEMPLATE_TYPE_IDX(i64) #1

declare dso_local i32 @TEMPLATE_TYPE_LEVEL(i64) #1

declare dso_local i32 @comp_template_parms(i32, i32) #1

declare dso_local i32 @DECL_TEMPLATE_PARMS(i32) #1

declare dso_local i32 @TEMPLATE_TEMPLATE_PARM_TEMPLATE_DECL(i64) #1

declare dso_local i32 @TYPE_TEMPLATE_INFO(i64) #1

declare dso_local i32 @TYPE_TI_TEMPLATE(i64) #1

declare dso_local i32 @comp_template_args(i32, i32) #1

declare dso_local i32 @TYPE_TI_ARGS(i64) #1

declare dso_local i32 @DERIVED_FROM_P(i64, i64) #1

declare dso_local i64 @TYPE_OFFSET_BASETYPE(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i32 @compparms(i32, i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i32 @TYPE_REF_CAN_ALIAS_ALL(i64) #1

declare dso_local i32 @comp_array_types(i64, i64, i32) #1

declare dso_local i32 @cp_tree_equal(i32, i32) #1

declare dso_local i32 @TYPENAME_TYPE_FULLNAME(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

declare dso_local i32 @TYPE_IDENTIFIER(i64) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
