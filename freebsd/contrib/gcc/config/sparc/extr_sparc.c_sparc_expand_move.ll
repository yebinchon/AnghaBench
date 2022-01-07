; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_expand_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_expand_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@reload_in_progress = common dso_local global i64 0, align 8
@TARGET_HAVE_TLS = common dso_local global i64 0, align 8
@HIGH = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@TARGET_ARCH64 = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@TARGET_VIS = common dso_local global i64 0, align 8
@SPARC_FIRST_FP_REG = common dso_local global i64 0, align 8
@SFmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_expand_move(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @GET_CODE(i64 %10)
  %12 = load i64, i64* @MEM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @register_or_zero_operand(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %333

22:                                               ; preds = %14
  %23 = load i64, i64* @reload_in_progress, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @validize_mem(i64 %28)
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @force_reg(i32 %32, i64 %35)
  %37 = load i64*, i64** %5, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %25, %22
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i64, i64* @TARGET_HAVE_TLS, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @CONSTANT_P(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %105

49:                                               ; preds = %43
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @GET_CODE(i64 %52)
  %54 = load i64, i64* @HIGH, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %105

56:                                               ; preds = %49
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @sparc_tls_referenced_p(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %56
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @GET_CODE(i64 %66)
  %68 = load i64, i64* @CONST, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i64, i64* %6, align 8
  %72 = call i64 @XEXP(i64 %71, i32 0)
  %73 = call i64 @GET_CODE(i64 %72)
  %74 = load i64, i64* @PLUS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @XEXP(i64 %77, i32 0)
  %79 = call i64 @XEXP(i64 %78, i32 1)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @XEXP(i64 %80, i32 0)
  %82 = call i64 @XEXP(i64 %81, i32 0)
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %76, %70, %62
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @SPARC_SYMBOL_REF_TLS_P(i64 %84)
  %86 = call i32 @gcc_assert(i32 %85)
  %87 = load i64, i64* %6, align 8
  %88 = call i64 @legitimize_tls_address(i64 %87)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i64 @gen_rtx_PLUS(i32 %92, i64 %93, i64 %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @force_operand(i64 %96, i64 %99)
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %91, %83
  %102 = load i64, i64* %6, align 8
  %103 = load i64*, i64** %5, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %56, %49, %43, %40
  %106 = load i64, i64* @flag_pic, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %194

108:                                              ; preds = %105
  %109 = load i64*, i64** %5, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @CONSTANT_P(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %194

114:                                              ; preds = %108
  %115 = load i64*, i64** %5, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @pic_address_needs_scratch(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = load i64*, i64** %5, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i64 @legitimize_pic_address(i64 %123, i32 %124, i64 0)
  %126 = load i64*, i64** %5, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %114
  %129 = load i64*, i64** %5, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @LABEL_REF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 128
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i64*, i64** %5, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %5, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @gen_movsi_pic_label_ref(i64 %141, i64 %144)
  %146 = call i32 @emit_insn(i32 %145)
  store i32 1, i32* %3, align 4
  br label %333

147:                                              ; preds = %135, %128
  %148 = load i64*, i64** %5, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @GET_CODE(i64 %150)
  %152 = load i64, i64* @LABEL_REF, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %147
  %155 = load i32, i32* %4, align 4
  %156 = icmp eq i32 %155, 131
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i32, i32* @TARGET_ARCH64, align 4
  %159 = call i32 @gcc_assert(i32 %158)
  %160 = load i64*, i64** %5, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %5, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @gen_movdi_pic_label_ref(i64 %162, i64 %165)
  %167 = call i32 @emit_insn(i32 %166)
  store i32 1, i32* %3, align 4
  br label %333

168:                                              ; preds = %154, %147
  %169 = load i64*, i64** %5, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i64 @symbolic_operand(i64 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %168
  %176 = load i64*, i64** %5, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i64, i64* @reload_in_progress, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i64*, i64** %5, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  br label %188

186:                                              ; preds = %175
  %187 = load i64, i64* @NULL_RTX, align 8
  br label %188

188:                                              ; preds = %186, %182
  %189 = phi i64 [ %185, %182 ], [ %187, %186 ]
  %190 = call i64 @legitimize_pic_address(i64 %178, i32 %179, i64 %189)
  %191 = load i64*, i64** %5, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  store i64 %190, i64* %192, align 8
  store i32 0, i32* %3, align 4
  br label %333

193:                                              ; preds = %168
  br label %194

194:                                              ; preds = %193, %108, %105
  %195 = load i64*, i64** %5, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @CONSTANT_P(i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %290

200:                                              ; preds = %194
  %201 = load i64*, i64** %5, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @REG_P(i64 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %290

206:                                              ; preds = %200
  %207 = load i64*, i64** %5, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @REGNO(i64 %209)
  %211 = call i64 @SPARC_FP_REG_P(i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %206
  %214 = load i32, i32* %4, align 4
  %215 = call i64 @SCALAR_FLOAT_MODE_P(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %4, align 4
  %219 = call i64 @VECTOR_MODE_P(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %290

221:                                              ; preds = %217, %213, %206
  %222 = load i64*, i64** %5, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @const0_rtx, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %221
  %228 = load i32, i32* %4, align 4
  %229 = call i64 @CONST0_RTX(i32 %228)
  %230 = load i64*, i64** %5, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 1
  store i64 %229, i64* %231, align 8
  br label %232

232:                                              ; preds = %227, %221
  %233 = load i64, i64* @TARGET_VIS, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %232
  %236 = load i64*, i64** %5, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @REGNO(i64 %238)
  %240 = load i64, i64* @SPARC_FIRST_FP_REG, align 8
  %241 = icmp slt i64 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %235, %232
  %243 = load i64*, i64** %5, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 1
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = call i64 @const_zero_operand(i64 %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  store i32 0, i32* %3, align 4
  br label %333

250:                                              ; preds = %242, %235
  %251 = load i64*, i64** %5, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = load i64, i64* %252, align 8
  %254 = call i64 @REGNO(i64 %253)
  %255 = load i64, i64* @SPARC_FIRST_FP_REG, align 8
  %256 = icmp slt i64 %254, %255
  br i1 %256, label %257, label %272

257:                                              ; preds = %250
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @SFmode, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %271, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @DFmode, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %261
  %266 = load i64, i64* @reload_completed, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load i64, i64* @reload_in_progress, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268, %265, %257
  store i32 0, i32* %3, align 4
  br label %333

272:                                              ; preds = %268, %261, %250
  %273 = load i32, i32* %4, align 4
  %274 = load i64*, i64** %5, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @force_const_mem(i32 %273, i64 %276)
  %278 = load i64*, i64** %5, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 1
  store i64 %277, i64* %279, align 8
  %280 = load i64, i64* @reload_in_progress, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %289, label %282

282:                                              ; preds = %272
  %283 = load i64*, i64** %5, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 1
  %285 = load i64, i64* %284, align 8
  %286 = call i64 @validize_mem(i64 %285)
  %287 = load i64*, i64** %5, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %282, %272
  store i32 0, i32* %3, align 4
  br label %333

290:                                              ; preds = %217, %200, %194
  %291 = load i64*, i64** %5, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 1
  %293 = load i64, i64* %292, align 8
  %294 = call i64 @CONSTANT_P(i64 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %290
  %297 = load i64*, i64** %5, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 1
  %299 = load i64, i64* %298, align 8
  %300 = call i64 @GET_CODE(i64 %299)
  %301 = load i64, i64* @HIGH, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %310, label %303

303:                                              ; preds = %296
  %304 = load i64*, i64** %5, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 1
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* %4, align 4
  %308 = call i64 @input_operand(i64 %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %303, %296, %290
  store i32 0, i32* %3, align 4
  br label %333

311:                                              ; preds = %303
  %312 = load i32, i32* %4, align 4
  switch i32 %312, label %330 [
    i32 129, label %313
    i32 130, label %314
    i32 128, label %314
    i32 131, label %322
  ]

313:                                              ; preds = %311
  br label %332

314:                                              ; preds = %311, %311
  %315 = load i64*, i64** %5, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %5, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 1
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @sparc_emit_set_const32(i64 %317, i64 %320)
  store i32 1, i32* %3, align 4
  br label %333

322:                                              ; preds = %311
  %323 = load i64*, i64** %5, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64*, i64** %5, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 1
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @sparc_emit_set_const64(i64 %325, i64 %328)
  store i32 1, i32* %3, align 4
  br label %333

330:                                              ; preds = %311
  %331 = call i32 (...) @gcc_unreachable()
  br label %332

332:                                              ; preds = %330, %313
  store i32 0, i32* %3, align 4
  br label %333

333:                                              ; preds = %332, %322, %314, %310, %289, %271, %249, %188, %157, %138, %21
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @register_or_zero_operand(i64, i32) #1

declare dso_local i64 @validize_mem(i64) #1

declare dso_local i64 @force_reg(i32, i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @sparc_tls_referenced_p(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SPARC_SYMBOL_REF_TLS_P(i64) #1

declare dso_local i64 @legitimize_tls_address(i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @force_operand(i64, i64) #1

declare dso_local i64 @pic_address_needs_scratch(i64) #1

declare dso_local i64 @legitimize_pic_address(i64, i32, i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_movsi_pic_label_ref(i64, i64) #1

declare dso_local i32 @gen_movdi_pic_label_ref(i64, i64) #1

declare dso_local i64 @symbolic_operand(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SPARC_FP_REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @SCALAR_FLOAT_MODE_P(i32) #1

declare dso_local i64 @VECTOR_MODE_P(i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @const_zero_operand(i64, i32) #1

declare dso_local i64 @force_const_mem(i32, i64) #1

declare dso_local i64 @input_operand(i64, i32) #1

declare dso_local i32 @sparc_emit_set_const32(i64, i64) #1

declare dso_local i32 @sparc_emit_set_const64(i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
