; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_nonoverlapping_memrefs_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_nonoverlapping_memrefs_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@flag_argument_noalias = common dso_local global i32 0, align 4
@PARM_DECL = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @nonoverlapping_memrefs_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonoverlapping_memrefs_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @MEM_EXPR(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @MEM_EXPR(i64 %27)
  store i64 %28, i64* %7, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %2
  store i32 0, i32* %3, align 4
  br label %403

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @COMPONENT_REF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @COMPONENT_REF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @nonoverlapping_component_refs_p(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %403

51:                                               ; preds = %45, %40, %35
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @MEM_OFFSET(i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @COMPONENT_REF, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @TREE_CODE(i64 %59)
  %61 = load i64, i64* @VAR_DECL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @TREE_TYPE(i64 %64)
  %66 = call i64 @POINTER_TYPE_P(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @TREE_OPERAND(i64 %69, i32 1)
  store i64 %70, i64* %19, align 8
  %71 = load i64, i64* %19, align 8
  %72 = call i64 @DECL_FIELD_CONTEXT(i64 %71)
  store i64 %72, i64* %20, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @TREE_TYPE(i64 %74)
  %76 = call i64 @ipa_type_escape_field_does_not_clobber_p(i64 %73, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %403

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %63, %58
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @decl_for_component_ref(i64 %81)
  store i64 %82, i64* %21, align 8
  %83 = load i64, i64* %21, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %403

86:                                               ; preds = %80
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %12, align 8
  %89 = call i64 @adjust_offset_for_component_ref(i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %21, align 8
  store i64 %90, i64* %6, align 8
  br label %108

91:                                               ; preds = %51
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @INDIRECT_REF_P(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @TREE_OPERAND(i64 %96, i32 0)
  store i64 %97, i64* %6, align 8
  %98 = load i32, i32* @flag_argument_noalias, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @TREE_CODE(i64 %101)
  %103 = load i64, i64* @PARM_DECL, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %95
  store i32 0, i32* %3, align 4
  br label %403

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %86
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @MEM_OFFSET(i64 %109)
  store i64 %110, i64* %13, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i64 @TREE_CODE(i64 %111)
  %113 = load i64, i64* @COMPONENT_REF, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %108
  %116 = load i64, i64* %6, align 8
  %117 = call i64 @TREE_CODE(i64 %116)
  %118 = load i64, i64* @VAR_DECL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @TREE_TYPE(i64 %121)
  %123 = call i64 @POINTER_TYPE_P(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load i64, i64* %7, align 8
  %127 = call i64 @TREE_OPERAND(i64 %126, i32 1)
  store i64 %127, i64* %22, align 8
  %128 = load i64, i64* %22, align 8
  %129 = call i64 @DECL_FIELD_CONTEXT(i64 %128)
  store i64 %129, i64* %23, align 8
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %22, align 8
  %132 = call i32 @TREE_TYPE(i64 %131)
  %133 = call i64 @ipa_type_escape_field_does_not_clobber_p(i64 %130, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  store i32 1, i32* %3, align 4
  br label %403

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %120, %115
  %138 = load i64, i64* %7, align 8
  %139 = call i64 @decl_for_component_ref(i64 %138)
  store i64 %139, i64* %24, align 8
  %140 = load i64, i64* %24, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %403

143:                                              ; preds = %137
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i64 @adjust_offset_for_component_ref(i64 %144, i64 %145)
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %24, align 8
  store i64 %147, i64* %7, align 8
  br label %165

148:                                              ; preds = %108
  %149 = load i64, i64* %7, align 8
  %150 = call i64 @INDIRECT_REF_P(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i64, i64* %7, align 8
  %154 = call i64 @TREE_OPERAND(i64 %153, i32 0)
  store i64 %154, i64* %7, align 8
  %155 = load i32, i32* @flag_argument_noalias, align 4
  %156 = icmp slt i32 %155, 2
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load i64, i64* %7, align 8
  %159 = call i64 @TREE_CODE(i64 %158)
  %160 = load i64, i64* @PARM_DECL, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %152
  store i32 0, i32* %3, align 4
  br label %403

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %148
  br label %165

165:                                              ; preds = %164, %143
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @DECL_P(i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i64, i64* %7, align 8
  %171 = call i32 @DECL_P(i64 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169, %165
  store i32 0, i32* %3, align 4
  br label %403

174:                                              ; preds = %169
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @DECL_RTL(i64 %175)
  store i64 %176, i64* %8, align 8
  %177 = load i64, i64* %7, align 8
  %178 = call i64 @DECL_RTL(i64 %177)
  store i64 %178, i64* %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i64 @MEM_P(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %174
  %183 = load i64, i64* %9, align 8
  %184 = call i64 @MEM_P(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %182, %174
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @rtx_equal_p(i64 %187, i64 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  store i32 1, i32* %3, align 4
  br label %403

192:                                              ; preds = %186, %182
  %193 = load i64, i64* %8, align 8
  %194 = call i64 @MEM_P(i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i64, i64* %8, align 8
  %198 = call i64 @XEXP(i64 %197, i32 0)
  br label %201

199:                                              ; preds = %192
  %200 = load i64, i64* %8, align 8
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i64 [ %198, %196 ], [ %200, %199 ]
  store i64 %202, i64* %10, align 8
  %203 = load i64, i64* %10, align 8
  %204 = call i64 @GET_CODE(i64 %203)
  %205 = load i64, i64* @PLUS, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %201
  %208 = load i64, i64* %10, align 8
  %209 = call i64 @XEXP(i64 %208, i32 1)
  %210 = call i64 @GET_CODE(i64 %209)
  %211 = load i64, i64* @CONST_INT, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load i64, i64* %10, align 8
  %215 = call i64 @XEXP(i64 %214, i32 1)
  %216 = call i64 @INTVAL(i64 %215)
  store i64 %216, i64* %14, align 8
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @XEXP(i64 %217, i32 0)
  store i64 %218, i64* %10, align 8
  br label %219

219:                                              ; preds = %213, %207, %201
  %220 = load i64, i64* %9, align 8
  %221 = call i64 @MEM_P(i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i64, i64* %9, align 8
  %225 = call i64 @XEXP(i64 %224, i32 0)
  br label %228

226:                                              ; preds = %219
  %227 = load i64, i64* %9, align 8
  br label %228

228:                                              ; preds = %226, %223
  %229 = phi i64 [ %225, %223 ], [ %227, %226 ]
  store i64 %229, i64* %11, align 8
  %230 = load i64, i64* %11, align 8
  %231 = call i64 @GET_CODE(i64 %230)
  %232 = load i64, i64* @PLUS, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %228
  %235 = load i64, i64* %11, align 8
  %236 = call i64 @XEXP(i64 %235, i32 1)
  %237 = call i64 @GET_CODE(i64 %236)
  %238 = load i64, i64* @CONST_INT, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load i64, i64* %11, align 8
  %242 = call i64 @XEXP(i64 %241, i32 1)
  %243 = call i64 @INTVAL(i64 %242)
  store i64 %243, i64* %15, align 8
  %244 = load i64, i64* %11, align 8
  %245 = call i64 @XEXP(i64 %244, i32 0)
  store i64 %245, i64* %11, align 8
  br label %246

246:                                              ; preds = %240, %234, %228
  %247 = load i64, i64* %10, align 8
  %248 = load i64, i64* %11, align 8
  %249 = call i32 @rtx_equal_p(i64 %247, i64 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %290, label %251

251:                                              ; preds = %246
  %252 = load i64, i64* %10, align 8
  %253 = call i64 @CONSTANT_P(i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i64, i64* %11, align 8
  %257 = call i64 @CONSTANT_P(i64 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %287, label %259

259:                                              ; preds = %255, %251
  %260 = load i64, i64* %10, align 8
  %261 = call i64 @CONSTANT_P(i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %259
  %264 = load i64, i64* %11, align 8
  %265 = call i64 @REG_P(i64 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %263
  %268 = load i64, i64* %11, align 8
  %269 = call i32 @REGNO(i64 %268)
  %270 = call i64 @REGNO_PTR_FRAME_P(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %287, label %272

272:                                              ; preds = %267, %263, %259
  %273 = load i64, i64* %11, align 8
  %274 = call i64 @CONSTANT_P(i64 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %272
  %277 = load i64, i64* %10, align 8
  %278 = call i64 @REG_P(i64 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = load i64, i64* %10, align 8
  %282 = call i32 @REGNO(i64 %281)
  %283 = call i64 @REGNO_PTR_FRAME_P(i32 %282)
  %284 = icmp ne i64 %283, 0
  br label %285

285:                                              ; preds = %280, %276, %272
  %286 = phi i1 [ false, %276 ], [ false, %272 ], [ %284, %280 ]
  br label %287

287:                                              ; preds = %285, %267, %255
  %288 = phi i1 [ true, %267 ], [ true, %255 ], [ %286, %285 ]
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %3, align 4
  br label %403

290:                                              ; preds = %246
  %291 = load i64, i64* %8, align 8
  %292 = call i64 @MEM_P(i64 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %290
  %295 = load i64, i64* %8, align 8
  %296 = call i32 @GET_MODE(i64 %295)
  %297 = call i64 @GET_MODE_SIZE(i32 %296)
  %298 = trunc i64 %297 to i32
  %299 = sext i32 %298 to i64
  br label %311

300:                                              ; preds = %290
  %301 = load i64, i64* %8, align 8
  %302 = call i64 @MEM_SIZE(i64 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load i64, i64* %8, align 8
  %306 = call i64 @MEM_SIZE(i64 %305)
  %307 = call i64 @INTVAL(i64 %306)
  br label %309

308:                                              ; preds = %300
  br label %309

309:                                              ; preds = %308, %304
  %310 = phi i64 [ %307, %304 ], [ -1, %308 ]
  br label %311

311:                                              ; preds = %309, %294
  %312 = phi i64 [ %299, %294 ], [ %310, %309 ]
  store i64 %312, i64* %16, align 8
  %313 = load i64, i64* %9, align 8
  %314 = call i64 @MEM_P(i64 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %311
  %317 = load i64, i64* %9, align 8
  %318 = call i32 @GET_MODE(i64 %317)
  %319 = call i64 @GET_MODE_SIZE(i32 %318)
  %320 = trunc i64 %319 to i32
  %321 = sext i32 %320 to i64
  br label %333

322:                                              ; preds = %311
  %323 = load i64, i64* %9, align 8
  %324 = call i64 @MEM_SIZE(i64 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load i64, i64* %9, align 8
  %328 = call i64 @MEM_SIZE(i64 %327)
  %329 = call i64 @INTVAL(i64 %328)
  br label %331

330:                                              ; preds = %322
  br label %331

331:                                              ; preds = %330, %326
  %332 = phi i64 [ %329, %326 ], [ -1, %330 ]
  br label %333

333:                                              ; preds = %331, %316
  %334 = phi i64 [ %321, %316 ], [ %332, %331 ]
  store i64 %334, i64* %17, align 8
  %335 = load i64, i64* %12, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %333
  %338 = load i64, i64* %12, align 8
  %339 = call i64 @INTVAL(i64 %338)
  %340 = load i64, i64* %14, align 8
  %341 = add nsw i64 %340, %339
  store i64 %341, i64* %14, align 8
  %342 = load i64, i64* %12, align 8
  %343 = call i64 @INTVAL(i64 %342)
  %344 = load i64, i64* %16, align 8
  %345 = sub nsw i64 %344, %343
  store i64 %345, i64* %16, align 8
  br label %346

346:                                              ; preds = %337, %333
  %347 = load i64, i64* %13, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %346
  %350 = load i64, i64* %13, align 8
  %351 = call i64 @INTVAL(i64 %350)
  %352 = load i64, i64* %15, align 8
  %353 = add nsw i64 %352, %351
  store i64 %353, i64* %15, align 8
  %354 = load i64, i64* %13, align 8
  %355 = call i64 @INTVAL(i64 %354)
  %356 = load i64, i64* %17, align 8
  %357 = sub nsw i64 %356, %355
  store i64 %357, i64* %17, align 8
  br label %358

358:                                              ; preds = %349, %346
  %359 = load i64, i64* %4, align 8
  %360 = call i64 @MEM_SIZE(i64 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  %363 = load i64, i64* %12, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %362
  %366 = load i64, i64* %4, align 8
  %367 = call i64 @MEM_SIZE(i64 %366)
  %368 = call i64 @INTVAL(i64 %367)
  store i64 %368, i64* %16, align 8
  br label %369

369:                                              ; preds = %365, %362, %358
  %370 = load i64, i64* %5, align 8
  %371 = call i64 @MEM_SIZE(i64 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %380

373:                                              ; preds = %369
  %374 = load i64, i64* %13, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %373
  %377 = load i64, i64* %5, align 8
  %378 = call i64 @MEM_SIZE(i64 %377)
  %379 = call i64 @INTVAL(i64 %378)
  store i64 %379, i64* %17, align 8
  br label %380

380:                                              ; preds = %376, %373, %369
  %381 = load i64, i64* %14, align 8
  %382 = load i64, i64* %15, align 8
  %383 = icmp sgt i64 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load i64, i64* %14, align 8
  store i64 %385, i64* %18, align 8
  %386 = load i64, i64* %15, align 8
  store i64 %386, i64* %14, align 8
  %387 = load i64, i64* %18, align 8
  store i64 %387, i64* %15, align 8
  %388 = load i64, i64* %16, align 8
  store i64 %388, i64* %18, align 8
  %389 = load i64, i64* %17, align 8
  store i64 %389, i64* %16, align 8
  %390 = load i64, i64* %18, align 8
  store i64 %390, i64* %17, align 8
  br label %391

391:                                              ; preds = %384, %380
  %392 = load i64, i64* %16, align 8
  %393 = icmp sge i64 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %391
  %395 = load i64, i64* %15, align 8
  %396 = load i64, i64* %14, align 8
  %397 = load i64, i64* %16, align 8
  %398 = add nsw i64 %396, %397
  %399 = icmp sge i64 %395, %398
  br label %400

400:                                              ; preds = %394, %391
  %401 = phi i1 [ false, %391 ], [ %399, %394 ]
  %402 = zext i1 %401 to i32
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %400, %287, %191, %173, %162, %142, %135, %105, %85, %78, %50, %34
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

declare dso_local i64 @MEM_EXPR(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @nonoverlapping_component_refs_p(i64, i64) #1

declare dso_local i64 @MEM_OFFSET(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @DECL_FIELD_CONTEXT(i64) #1

declare dso_local i64 @ipa_type_escape_field_does_not_clobber_p(i64, i32) #1

declare dso_local i64 @decl_for_component_ref(i64) #1

declare dso_local i64 @adjust_offset_for_component_ref(i64, i64) #1

declare dso_local i64 @INDIRECT_REF_P(i64) #1

declare dso_local i32 @DECL_P(i64) #1

declare dso_local i64 @DECL_RTL(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO_PTR_FRAME_P(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @MEM_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
