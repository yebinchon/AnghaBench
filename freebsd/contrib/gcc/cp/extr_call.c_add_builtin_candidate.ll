; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_builtin_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_builtin_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }

@integer_zero_node = common dso_local global i64 0, align 8
@integer_type_node = common dso_local global i64 0, align 8
@BOOLEAN_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@ptrdiff_type_node = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_candidate**, i32, i32, i64, i64, i64, i64*, i64*, i32)* @add_builtin_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_builtin_candidate(%struct.z_candidate** %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64* %7, i32 %8) #0 {
  %10 = alloca %struct.z_candidate**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %27 [
    i32 134, label %22
    i32 135, label %22
  ]

22:                                               ; preds = %9, %9
  %23 = load i64, i64* @integer_zero_node, align 8
  %24 = load i64*, i64** %16, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @integer_type_node, align 8
  store i64 %26, i64* %15, align 8
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %410 [
    i32 135, label %30
    i32 133, label %30
    i32 134, label %37
    i32 132, label %37
    i32 149, label %49
    i32 128, label %66
    i32 139, label %73
    i32 155, label %79
    i32 144, label %85
    i32 143, label %119
    i32 140, label %139
    i32 130, label %139
    i32 152, label %149
    i32 138, label %149
    i32 146, label %191
    i32 150, label %191
    i32 148, label %191
    i32 151, label %191
    i32 145, label %191
    i32 142, label %191
    i32 136, label %253
    i32 158, label %263
    i32 129, label %284
    i32 157, label %284
    i32 156, label %284
    i32 154, label %284
    i32 147, label %284
    i32 131, label %284
    i32 141, label %294
    i32 153, label %383
  ]

30:                                               ; preds = %28, %28
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @BOOLEAN_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %486

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %28, %28, %36
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @ARITHMETIC_TYPE_P(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %14, align 8
  %43 = call i32 @TYPE_PTROB_P(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %14, align 8
  %47 = call i64 @build_reference_type(i64 %46)
  store i64 %47, i64* %14, align 8
  br label %412

48:                                               ; preds = %41
  br label %486

49:                                               ; preds = %28
  %50 = load i64, i64* %14, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @POINTER_TYPE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @TYPE_PTROB_P(i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  %60 = call i64 @TREE_TYPE(i64 %59)
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @FUNCTION_TYPE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %54
  br label %412

65:                                               ; preds = %58, %49
  br label %486

66:                                               ; preds = %28
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @TREE_CODE(i64 %67)
  %69 = load i64, i64* @POINTER_TYPE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %412

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %28, %72
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @ARITHMETIC_TYPE_P(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %412

78:                                               ; preds = %73
  br label %486

79:                                               ; preds = %28
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @INTEGRAL_TYPE_P(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %412

84:                                               ; preds = %79
  br label %486

85:                                               ; preds = %28
  %86 = load i64, i64* %14, align 8
  %87 = call i64 @TREE_CODE(i64 %86)
  %88 = load i64, i64* @POINTER_TYPE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %85
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @TYPE_PTR_TO_MEMBER_P(i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load i64, i64* %14, align 8
  %96 = call i64 @TREE_TYPE(i64 %95)
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i64 @TYPE_PTRMEM_CLASS_TYPE(i64 %97)
  store i64 %98, i64* %20, align 8
  %99 = load i64, i64* %19, align 8
  %100 = call i64 @IS_AGGR_TYPE(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %94
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @DERIVED_FROM_P(i64 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i64, i64* %15, align 8
  %109 = call i64 @TYPE_PTRMEMFUNC_P(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %112)
  %114 = call i32 @is_complete(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %107
  br label %412

117:                                              ; preds = %111, %102, %94
  br label %118

118:                                              ; preds = %117, %90, %85
  br label %486

119:                                              ; preds = %28
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @TYPE_PTROB_P(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i64, i64* %15, align 8
  %125 = call i32 @TYPE_PTROB_P(i64 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %412

128:                                              ; preds = %123, %119
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @TYPE_PTROB_P(i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @INTEGRAL_TYPE_P(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* @ptrdiff_type_node, align 8
  store i64 %137, i64* %15, align 8
  br label %412

138:                                              ; preds = %132, %128
  br label %139

139:                                              ; preds = %28, %28, %138
  %140 = load i64, i64* %14, align 8
  %141 = call i32 @ARITHMETIC_TYPE_P(i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i64, i64* %15, align 8
  %145 = call i32 @ARITHMETIC_TYPE_P(i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %412

148:                                              ; preds = %143, %139
  br label %486

149:                                              ; preds = %28, %28
  %150 = load i64, i64* %14, align 8
  %151 = call i64 @TYPE_PTRMEMFUNC_P(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, i64* %15, align 8
  %155 = call i64 @TYPE_PTRMEMFUNC_P(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %153, %149
  %158 = load i64, i64* %14, align 8
  %159 = call i64 @TYPE_PTRMEM_P(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i64, i64* %15, align 8
  %163 = call i64 @TYPE_PTRMEM_P(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161, %153
  br label %412

166:                                              ; preds = %161, %157
  %167 = load i64, i64* %14, align 8
  %168 = call i32 @TYPE_PTR_TO_MEMBER_P(i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load i64*, i64** %16, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @null_ptr_cst_p(i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i64, i64* %14, align 8
  store i64 %177, i64* %15, align 8
  br label %412

178:                                              ; preds = %170, %166
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @TYPE_PTR_TO_MEMBER_P(i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load i64*, i64** %16, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @null_ptr_cst_p(i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i64, i64* %15, align 8
  store i64 %189, i64* %14, align 8
  br label %412

190:                                              ; preds = %182, %178
  br label %191

191:                                              ; preds = %28, %28, %28, %28, %28, %28, %190
  %192 = load i64, i64* %14, align 8
  %193 = call i32 @ARITHMETIC_TYPE_P(i64 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i64, i64* %15, align 8
  %197 = call i32 @ARITHMETIC_TYPE_P(i64 %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %412

200:                                              ; preds = %195, %191
  %201 = load i64, i64* %14, align 8
  %202 = call i64 @TYPE_PTR_P(i64 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i64, i64* %15, align 8
  %206 = call i64 @TYPE_PTR_P(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %412

209:                                              ; preds = %204, %200
  %210 = load i64, i64* %14, align 8
  %211 = call i64 @TREE_CODE(i64 %210)
  %212 = load i64, i64* @ENUMERAL_TYPE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i64, i64* %15, align 8
  %216 = call i64 @TREE_CODE(i64 %215)
  %217 = load i64, i64* @ENUMERAL_TYPE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %412

220:                                              ; preds = %214, %209
  %221 = load i64, i64* %14, align 8
  %222 = call i64 @TYPE_PTR_P(i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %236

224:                                              ; preds = %220
  %225 = load i64*, i64** %16, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 1
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @null_ptr_cst_p(i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load i64, i64* %14, align 8
  %232 = call i32 @uses_template_parms(i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %230
  %235 = load i64, i64* %14, align 8
  store i64 %235, i64* %15, align 8
  br label %412

236:                                              ; preds = %230, %224, %220
  %237 = load i64*, i64** %16, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @null_ptr_cst_p(i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %236
  %243 = load i64, i64* %15, align 8
  %244 = call i64 @TYPE_PTR_P(i64 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = load i64, i64* %15, align 8
  %248 = call i32 @uses_template_parms(i64 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %246
  %251 = load i64, i64* %15, align 8
  store i64 %251, i64* %14, align 8
  br label %412

252:                                              ; preds = %246, %242, %236
  br label %486

253:                                              ; preds = %28
  %254 = load i64, i64* %14, align 8
  %255 = call i32 @ARITHMETIC_TYPE_P(i64 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load i64, i64* %15, align 8
  %259 = call i32 @ARITHMETIC_TYPE_P(i64 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  br label %412

262:                                              ; preds = %257, %253
  br label %263

263:                                              ; preds = %28, %262
  %264 = load i64, i64* %14, align 8
  %265 = call i32 @INTEGRAL_TYPE_P(i64 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = load i64, i64* %15, align 8
  %269 = call i32 @TYPE_PTROB_P(i64 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load i64, i64* @ptrdiff_type_node, align 8
  store i64 %272, i64* %14, align 8
  br label %412

273:                                              ; preds = %267, %263
  %274 = load i64, i64* %14, align 8
  %275 = call i32 @TYPE_PTROB_P(i64 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %273
  %278 = load i64, i64* %15, align 8
  %279 = call i32 @INTEGRAL_TYPE_P(i64 %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %277
  %282 = load i64, i64* @ptrdiff_type_node, align 8
  store i64 %282, i64* %15, align 8
  br label %412

283:                                              ; preds = %277, %273
  br label %486

284:                                              ; preds = %28, %28, %28, %28, %28, %28
  %285 = load i64, i64* %14, align 8
  %286 = call i32 @INTEGRAL_TYPE_P(i64 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i64, i64* %15, align 8
  %290 = call i32 @INTEGRAL_TYPE_P(i64 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  br label %412

293:                                              ; preds = %288, %284
  br label %486

294:                                              ; preds = %28
  %295 = load i32, i32* %12, align 4
  switch i32 %295, label %378 [
    i32 136, label %296
    i32 143, label %296
    i32 140, label %307
    i32 130, label %307
    i32 129, label %317
    i32 157, label %317
    i32 156, label %317
    i32 154, label %317
    i32 147, label %317
    i32 131, label %317
    i32 137, label %327
  ]

296:                                              ; preds = %294, %294
  %297 = load i64, i64* %14, align 8
  %298 = call i32 @TYPE_PTROB_P(i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = load i64, i64* %15, align 8
  %302 = call i32 @INTEGRAL_TYPE_P(i64 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i64, i64* @ptrdiff_type_node, align 8
  store i64 %305, i64* %15, align 8
  br label %380

306:                                              ; preds = %300, %296
  br label %307

307:                                              ; preds = %294, %294, %306
  %308 = load i64, i64* %14, align 8
  %309 = call i32 @ARITHMETIC_TYPE_P(i64 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = load i64, i64* %15, align 8
  %313 = call i32 @ARITHMETIC_TYPE_P(i64 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  br label %380

316:                                              ; preds = %311, %307
  br label %486

317:                                              ; preds = %294, %294, %294, %294, %294, %294
  %318 = load i64, i64* %14, align 8
  %319 = call i32 @INTEGRAL_TYPE_P(i64 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load i64, i64* %15, align 8
  %323 = call i32 @INTEGRAL_TYPE_P(i64 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %380

326:                                              ; preds = %321, %317
  br label %486

327:                                              ; preds = %294
  %328 = load i64, i64* %14, align 8
  %329 = call i32 @ARITHMETIC_TYPE_P(i64 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %327
  %332 = load i64, i64* %15, align 8
  %333 = call i32 @ARITHMETIC_TYPE_P(i64 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  br label %380

336:                                              ; preds = %331, %327
  %337 = load i64, i64* %14, align 8
  %338 = call i64 @TYPE_PTRMEMFUNC_P(i64 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i64, i64* %15, align 8
  %342 = call i64 @TYPE_PTRMEMFUNC_P(i64 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %375, label %344

344:                                              ; preds = %340, %336
  %345 = load i64, i64* %14, align 8
  %346 = call i64 @TYPE_PTR_P(i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load i64, i64* %15, align 8
  %350 = call i64 @TYPE_PTR_P(i64 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %375, label %352

352:                                              ; preds = %348, %344
  %353 = load i64, i64* %14, align 8
  %354 = call i64 @TYPE_PTRMEM_P(i64 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = load i64, i64* %15, align 8
  %358 = call i64 @TYPE_PTRMEM_P(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %375, label %360

360:                                              ; preds = %356, %352
  %361 = load i64, i64* %14, align 8
  %362 = call i64 @TYPE_PTRMEMFUNC_P(i64 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %360
  %365 = load i64, i64* %14, align 8
  %366 = call i64 @TREE_CODE(i64 %365)
  %367 = load i64, i64* @POINTER_TYPE, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %377

369:                                              ; preds = %364, %360
  %370 = load i64*, i64** %16, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 1
  %372 = load i64, i64* %371, align 8
  %373 = call i32 @null_ptr_cst_p(i64 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %369, %356, %348, %340
  %376 = load i64, i64* %14, align 8
  store i64 %376, i64* %15, align 8
  br label %380

377:                                              ; preds = %369, %364
  br label %486

378:                                              ; preds = %294
  %379 = call i32 (...) @gcc_unreachable()
  br label %380

380:                                              ; preds = %378, %375, %335, %325, %315, %304
  %381 = load i64, i64* %14, align 8
  %382 = call i64 @build_reference_type(i64 %381)
  store i64 %382, i64* %14, align 8
  br label %412

383:                                              ; preds = %28
  %384 = load i64, i64* %14, align 8
  %385 = call i32 @promoted_arithmetic_type_p(i64 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %383
  %388 = load i64, i64* %15, align 8
  %389 = call i32 @promoted_arithmetic_type_p(i64 %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  br label %412

392:                                              ; preds = %387, %383
  %393 = load i64, i64* %14, align 8
  %394 = call i64 @TYPE_PTR_P(i64 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = load i64, i64* %14, align 8
  %398 = call i32 @TYPE_PTR_TO_MEMBER_P(i64 %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %396, %392
  %401 = load i64, i64* %15, align 8
  %402 = call i64 @TYPE_PTR_P(i64 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %409, label %404

404:                                              ; preds = %400
  %405 = load i64, i64* %15, align 8
  %406 = call i32 @TYPE_PTR_TO_MEMBER_P(i64 %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %404, %396
  br label %486

409:                                              ; preds = %404, %400
  br label %412

410:                                              ; preds = %28
  %411 = call i32 (...) @gcc_unreachable()
  br label %412

412:                                              ; preds = %410, %409, %391, %380, %292, %281, %271, %261, %250, %234, %219, %208, %199, %188, %176, %165, %147, %136, %127, %116, %83, %77, %71, %64, %45
  %413 = load i64, i64* %15, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %477

415:                                              ; preds = %412
  %416 = load i64, i64* %14, align 8
  %417 = load i64, i64* %15, align 8
  %418 = call i32 @same_type_p(i64 %416, i64 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %477, label %420

420:                                              ; preds = %415
  %421 = load i64, i64* %14, align 8
  %422 = call i64 @TREE_CODE(i64 %421)
  %423 = load i64, i64* %15, align 8
  %424 = call i64 @TREE_CODE(i64 %423)
  %425 = icmp eq i64 %422, %424
  br i1 %425, label %426, label %477

426:                                              ; preds = %420
  %427 = load i64, i64* %14, align 8
  %428 = call i64 @TREE_CODE(i64 %427)
  %429 = load i64, i64* @REFERENCE_TYPE, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %460, label %431

431:                                              ; preds = %426
  %432 = load i64, i64* %14, align 8
  %433 = call i64 @TYPE_PTR_P(i64 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %431
  %436 = load i64, i64* %15, align 8
  %437 = call i64 @TYPE_PTR_P(i64 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %460, label %439

439:                                              ; preds = %435, %431
  %440 = load i64, i64* %14, align 8
  %441 = call i64 @TYPE_PTRMEM_P(i64 %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %439
  %444 = load i64, i64* %15, align 8
  %445 = call i64 @TYPE_PTRMEM_P(i64 %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %460, label %447

447:                                              ; preds = %443, %439
  %448 = load i64, i64* %14, align 8
  %449 = call i64 @TYPE_PTRMEMFUNC_P(i64 %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %460, label %451

451:                                              ; preds = %447
  %452 = load i64, i64* %14, align 8
  %453 = call i64 @IS_AGGR_TYPE(i64 %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %451
  %456 = load i64, i64* %14, align 8
  %457 = call i64 @TREE_CODE(i64 %456)
  %458 = load i64, i64* @ENUMERAL_TYPE, align 8
  %459 = icmp eq i64 %457, %458
  br i1 %459, label %460, label %477

460:                                              ; preds = %455, %451, %447, %443, %435, %426
  %461 = load %struct.z_candidate**, %struct.z_candidate*** %10, align 8
  %462 = load i64, i64* %13, align 8
  %463 = load i64, i64* %14, align 8
  %464 = load i64, i64* %14, align 8
  %465 = load i64*, i64** %16, align 8
  %466 = load i64*, i64** %17, align 8
  %467 = load i32, i32* %18, align 4
  %468 = call i32 @build_builtin_candidate(%struct.z_candidate** %461, i64 %462, i64 %463, i64 %464, i64* %465, i64* %466, i32 %467)
  %469 = load %struct.z_candidate**, %struct.z_candidate*** %10, align 8
  %470 = load i64, i64* %13, align 8
  %471 = load i64, i64* %15, align 8
  %472 = load i64, i64* %15, align 8
  %473 = load i64*, i64** %16, align 8
  %474 = load i64*, i64** %17, align 8
  %475 = load i32, i32* %18, align 4
  %476 = call i32 @build_builtin_candidate(%struct.z_candidate** %469, i64 %470, i64 %471, i64 %472, i64* %473, i64* %474, i32 %475)
  br label %486

477:                                              ; preds = %455, %420, %415, %412
  %478 = load %struct.z_candidate**, %struct.z_candidate*** %10, align 8
  %479 = load i64, i64* %13, align 8
  %480 = load i64, i64* %14, align 8
  %481 = load i64, i64* %15, align 8
  %482 = load i64*, i64** %16, align 8
  %483 = load i64*, i64** %17, align 8
  %484 = load i32, i32* %18, align 4
  %485 = call i32 @build_builtin_candidate(%struct.z_candidate** %478, i64 %479, i64 %480, i64 %481, i64* %482, i64* %483, i32 %484)
  br label %486

486:                                              ; preds = %477, %460, %408, %377, %326, %316, %293, %283, %252, %148, %118, %84, %78, %65, %48, %35
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @ARITHMETIC_TYPE_P(i64) #1

declare dso_local i32 @TYPE_PTROB_P(i64) #1

declare dso_local i64 @build_reference_type(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i32 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i64 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i32 @DERIVED_FROM_P(i64, i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i32 @is_complete(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i32 @null_ptr_cst_p(i64) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i32 @uses_template_parms(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @promoted_arithmetic_type_p(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i32 @build_builtin_candidate(%struct.z_candidate**, i64, i64, i64, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
