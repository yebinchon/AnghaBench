; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_final_prescan_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_final_prescan_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arm_ccfsm_state = common dso_local global i32 0, align 4
@arm_target_insn = common dso_local global i32* null, align 8
@arm_target_label = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@RETURN = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CONDS_JUMP_CLOB = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i32 0, align 4
@max_insns_skipped = common dso_local global i32 0, align 4
@arm_arch5 = common dso_local global i32 0, align 4
@optimize_size = common dso_local global i32 0, align 4
@USE = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i32 0, align 4
@CIRRUS_NOT = common dso_local global i32 0, align 4
@arm_current_cc = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_final_prescan_insn(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @PATTERN(i32* %15)
  store i32* %16, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32*, i32** %2, align 8
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @arm_ccfsm_state, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** @arm_target_insn, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32* null, i32** @arm_target_insn, align 8
  store i32 0, i32* @arm_ccfsm_state, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %569

26:                                               ; preds = %1
  %27 = load i32, i32* @arm_ccfsm_state, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %94

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @simplejump_p(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @next_nonnote_insn(i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @GET_CODE(i32* %36)
  %38 = icmp eq i32 %37, 133
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @next_nonnote_insn(i32* %40)
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @GET_CODE(i32* %43)
  %45 = icmp eq i32 %44, 131
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @CODE_LABEL_NUMBER(i32* %47)
  %49 = load i64, i64* @arm_target_label, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @LABEL_NUSES(i32* %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %51, %46, %42
  br label %569

58:                                               ; preds = %55
  br label %93

59:                                               ; preds = %29
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @GET_CODE(i32* %60)
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @RETURN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load i32*, i32** %7, align 8
  %67 = call i32* @next_nonnote_insn(i32* %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @GET_CODE(i32* %68)
  %70 = icmp eq i32 %69, 133
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @next_nonnote_insn(i32* %72)
  store i32* %73, i32** %7, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @GET_CODE(i32* %75)
  %77 = icmp eq i32 %76, 131
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @CODE_LABEL_NUMBER(i32* %79)
  %81 = load i64, i64* @arm_target_label, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @LABEL_NUSES(i32* %84)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @TRUE, align 4
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %90

89:                                               ; preds = %83, %78, %74
  br label %569

90:                                               ; preds = %87
  br label %92

91:                                               ; preds = %59
  br label %569

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %58
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* @arm_ccfsm_state, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ true, %94 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @gcc_assert(i32 %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @GET_CODE(i32* %104)
  %106 = icmp ne i32 %105, 128
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %569

108:                                              ; preds = %100
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @GET_CODE(i32* %109)
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @PARALLEL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @XVECLEN(i32* %115, i32 0)
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32*, i32** %3, align 8
  %120 = call i32* @XVECEXP(i32* %119, i32 0, i32 0)
  store i32* %120, i32** %3, align 8
  br label %121

121:                                              ; preds = %118, %114, %108
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @GET_CODE(i32* %125)
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @SET, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %569

130:                                              ; preds = %124
  %131 = load i32*, i32** %3, align 8
  %132 = call i32* @SET_DEST(i32* %131)
  %133 = call i32 @GET_CODE(i32* %132)
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @PC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %569

137:                                              ; preds = %130
  %138 = load i32*, i32** %3, align 8
  %139 = call i32* @SET_SRC(i32* %138)
  %140 = call i32 @GET_CODE(i32* %139)
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* @IF_THEN_ELSE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %569

144:                                              ; preds = %137, %121
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32*, i32** %7, align 8
  store i32* %148, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %149 = load i32*, i32** %2, align 8
  %150 = call i32 @get_attr_conds(i32* %149)
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @CONDS_JUMP_CLOB, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 1, i32* %5, align 4
  br label %569

155:                                              ; preds = %144
  %156 = load i32, i32* %4, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = load i32*, i32** %3, align 8
  %163 = call i32* @SET_SRC(i32* %162)
  %164 = call i32* @XEXP(i32* %163, i32 0)
  store i32* %164, i32** %13, align 8
  br label %165

165:                                              ; preds = %161, %158
  br label %216

166:                                              ; preds = %155
  %167 = load i32*, i32** %3, align 8
  %168 = call i32* @SET_SRC(i32* %167)
  %169 = call i32* @XEXP(i32* %168, i32 1)
  %170 = call i32 @GET_CODE(i32* %169)
  %171 = load i32, i32* @LABEL_REF, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = load i32*, i32** %3, align 8
  %175 = call i32* @SET_SRC(i32* %174)
  %176 = call i32* @XEXP(i32* %175, i32 1)
  %177 = call i32* @XEXP(i32* %176, i32 0)
  store i32* %177, i32** %13, align 8
  br label %215

178:                                              ; preds = %166
  %179 = load i32*, i32** %3, align 8
  %180 = call i32* @SET_SRC(i32* %179)
  %181 = call i32* @XEXP(i32* %180, i32 2)
  %182 = call i32 @GET_CODE(i32* %181)
  %183 = load i32, i32* @LABEL_REF, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i32*, i32** %3, align 8
  %187 = call i32* @SET_SRC(i32* %186)
  %188 = call i32* @XEXP(i32* %187, i32 2)
  %189 = call i32* @XEXP(i32* %188, i32 0)
  store i32* %189, i32** %13, align 8
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %11, align 4
  br label %214

191:                                              ; preds = %178
  %192 = load i32*, i32** %3, align 8
  %193 = call i32* @SET_SRC(i32* %192)
  %194 = call i32* @XEXP(i32* %193, i32 1)
  %195 = call i32 @GET_CODE(i32* %194)
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* @RETURN, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  store i32 1, i32* %6, align 4
  br label %213

200:                                              ; preds = %191
  %201 = load i32*, i32** %3, align 8
  %202 = call i32* @SET_SRC(i32* %201)
  %203 = call i32* @XEXP(i32* %202, i32 2)
  %204 = call i32 @GET_CODE(i32* %203)
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @RETURN, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  store i32 1, i32* %6, align 4
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %11, align 4
  br label %212

210:                                              ; preds = %200
  %211 = call i32 (...) @gcc_unreachable()
  br label %212

212:                                              ; preds = %210, %208
  br label %213

213:                                              ; preds = %212, %199
  br label %214

214:                                              ; preds = %213, %185
  br label %215

215:                                              ; preds = %214, %173
  br label %216

216:                                              ; preds = %215, %165
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %443, %216
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %8, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* @max_insns_skipped, align 4
  %227 = icmp slt i32 %224, %226
  br label %228

228:                                              ; preds = %223, %220, %217
  %229 = phi i1 [ false, %220 ], [ false, %217 ], [ %227, %223 ]
  br i1 %229, label %230, label %444

230:                                              ; preds = %228
  %231 = load i32*, i32** %12, align 8
  %232 = call i32* @next_nonnote_insn(i32* %231)
  store i32* %232, i32** %12, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  br label %444

236:                                              ; preds = %230
  %237 = load i32*, i32** %12, align 8
  %238 = call i32 @GET_CODE(i32* %237)
  switch i32 %238, label %442 [
    i32 131, label %239
    i32 133, label %255
    i32 132, label %276
    i32 128, label %316
    i32 129, label %404
  ]

239:                                              ; preds = %236
  %240 = load i32*, i32** %12, align 8
  %241 = load i32*, i32** %13, align 8
  %242 = icmp eq i32* %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  store i32 2, i32* @arm_ccfsm_state, align 4
  %247 = load i32*, i32** %12, align 8
  %248 = call i32* @next_nonnote_insn(i32* %247)
  store i32* %248, i32** %12, align 8
  br label %250

249:                                              ; preds = %243
  store i32 1, i32* @arm_ccfsm_state, align 4
  br label %250

250:                                              ; preds = %249, %246
  %251 = load i32, i32* @TRUE, align 4
  store i32 %251, i32* %10, align 4
  br label %254

252:                                              ; preds = %239
  %253 = load i32, i32* @TRUE, align 4
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %252, %250
  br label %443

255:                                              ; preds = %236
  %256 = load i32*, i32** %12, align 8
  %257 = call i32* @next_nonnote_insn(i32* %256)
  store i32* %257, i32** %12, align 8
  %258 = load i32*, i32** %12, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %273

260:                                              ; preds = %255
  %261 = load i32*, i32** %12, align 8
  %262 = load i32*, i32** %13, align 8
  %263 = icmp eq i32* %261, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %260
  %265 = load i32, i32* %5, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  store i32 2, i32* @arm_ccfsm_state, align 4
  %268 = load i32*, i32** %12, align 8
  %269 = call i32* @next_nonnote_insn(i32* %268)
  store i32* %269, i32** %12, align 8
  br label %271

270:                                              ; preds = %264
  store i32 1, i32* @arm_ccfsm_state, align 4
  br label %271

271:                                              ; preds = %270, %267
  %272 = load i32, i32* @TRUE, align 4
  store i32 %272, i32* %10, align 4
  br label %275

273:                                              ; preds = %260, %255
  %274 = load i32, i32* @TRUE, align 4
  store i32 %274, i32* %9, align 4
  br label %275

275:                                              ; preds = %273, %271
  br label %443

276:                                              ; preds = %236
  %277 = load i32, i32* @arm_arch5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i32, i32* @TRUE, align 4
  store i32 %280, i32* %9, align 4
  br label %443

281:                                              ; preds = %276
  %282 = load i32*, i32** %12, align 8
  %283 = call i32* @next_nonnote_insn(i32* %282)
  store i32* %283, i32** %12, align 8
  %284 = load i32*, i32** %12, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load i32*, i32** %12, align 8
  %288 = call i32 @GET_CODE(i32* %287)
  %289 = icmp eq i32 %288, 133
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i32*, i32** %12, align 8
  %292 = call i32* @next_nonnote_insn(i32* %291)
  store i32* %292, i32** %12, align 8
  br label %293

293:                                              ; preds = %290, %286, %281
  %294 = load i32*, i32** %12, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %313

296:                                              ; preds = %293
  %297 = load i32*, i32** %12, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = icmp eq i32* %297, %298
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = load i32, i32* %8, align 4
  %302 = load i32, i32* @max_insns_skipped, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %313

304:                                              ; preds = %300
  %305 = load i32, i32* %5, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  store i32 2, i32* @arm_ccfsm_state, align 4
  %308 = load i32*, i32** %12, align 8
  %309 = call i32* @next_nonnote_insn(i32* %308)
  store i32* %309, i32** %12, align 8
  br label %311

310:                                              ; preds = %304
  store i32 1, i32* @arm_ccfsm_state, align 4
  br label %311

311:                                              ; preds = %310, %307
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %10, align 4
  br label %315

313:                                              ; preds = %300, %296, %293
  %314 = load i32, i32* @TRUE, align 4
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %313, %311
  br label %443

316:                                              ; preds = %236
  %317 = load i32*, i32** %12, align 8
  %318 = call i32* @PATTERN(i32* %317)
  store i32* %318, i32** %14, align 8
  %319 = load i32*, i32** %14, align 8
  %320 = call i32 @GET_CODE(i32* %319)
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* @SET, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %359

324:                                              ; preds = %316
  %325 = load i32*, i32** %14, align 8
  %326 = call i32* @SET_DEST(i32* %325)
  %327 = call i32 @GET_CODE(i32* %326)
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* @PC, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %359

331:                                              ; preds = %324
  %332 = load i32*, i32** %14, align 8
  %333 = call i32* @SET_SRC(i32* %332)
  %334 = call i32 @GET_CODE(i32* %333)
  %335 = load i32, i32* @LABEL_REF, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %331
  %338 = load i32*, i32** %14, align 8
  %339 = call i32* @SET_SRC(i32* %338)
  %340 = call i32* @XEXP(i32* %339, i32 0)
  %341 = load i32*, i32** %13, align 8
  %342 = icmp eq i32* %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load i32, i32* %4, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  store i32 2, i32* @arm_ccfsm_state, align 4
  %347 = load i32, i32* @TRUE, align 4
  store i32 %347, i32* %10, align 4
  br label %358

348:                                              ; preds = %343, %337, %331
  %349 = load i32*, i32** %14, align 8
  %350 = call i32* @SET_SRC(i32* %349)
  %351 = call i32 @GET_CODE(i32* %350)
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* @IF_THEN_ELSE, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %348
  %356 = load i32, i32* @TRUE, align 4
  store i32 %356, i32* %9, align 4
  br label %357

357:                                              ; preds = %355, %348
  br label %358

358:                                              ; preds = %357, %346
  br label %403

359:                                              ; preds = %324, %316
  %360 = load i32*, i32** %14, align 8
  %361 = call i32 @GET_CODE(i32* %360)
  %362 = sext i32 %361 to i64
  %363 = load i64, i64* @RETURN, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %374

365:                                              ; preds = %359
  %366 = load i32, i32* @TRUE, align 4
  %367 = call i32 @use_return_insn(i32 %366, i32* null)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %365
  %370 = load i32, i32* @optimize_size, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = load i32, i32* @TRUE, align 4
  store i32 %373, i32* %9, align 4
  br label %402

374:                                              ; preds = %369, %365, %359
  %375 = load i32*, i32** %14, align 8
  %376 = call i32 @GET_CODE(i32* %375)
  %377 = sext i32 %376 to i64
  %378 = load i64, i64* @RETURN, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %385

380:                                              ; preds = %374
  %381 = load i32, i32* %6, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %380
  store i32 2, i32* @arm_ccfsm_state, align 4
  %384 = load i32, i32* @TRUE, align 4
  store i32 %384, i32* %10, align 4
  br label %401

385:                                              ; preds = %380, %374
  %386 = load i32*, i32** %14, align 8
  %387 = call i32 @GET_CODE(i32* %386)
  %388 = sext i32 %387 to i64
  %389 = load i64, i64* @PARALLEL, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %398

391:                                              ; preds = %385
  %392 = load i32*, i32** %12, align 8
  %393 = call i32 @get_attr_conds(i32* %392)
  switch i32 %393, label %395 [
    i32 130, label %394
  ]

394:                                              ; preds = %391
  br label %397

395:                                              ; preds = %391
  %396 = load i32, i32* @TRUE, align 4
  store i32 %396, i32* %9, align 4
  br label %397

397:                                              ; preds = %395, %394
  br label %400

398:                                              ; preds = %385
  %399 = load i32, i32* @TRUE, align 4
  store i32 %399, i32* %9, align 4
  br label %400

400:                                              ; preds = %398, %397
  br label %401

401:                                              ; preds = %400, %383
  br label %402

402:                                              ; preds = %401, %372
  br label %403

403:                                              ; preds = %402, %358
  br label %443

404:                                              ; preds = %236
  %405 = load i32*, i32** %12, align 8
  %406 = call i32* @PATTERN(i32* %405)
  store i32* %406, i32** %14, align 8
  %407 = load i32*, i32** %14, align 8
  %408 = call i32 @GET_CODE(i32* %407)
  %409 = sext i32 %408 to i64
  %410 = load i64, i64* @SET, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %418, label %412

412:                                              ; preds = %404
  %413 = load i32*, i32** %14, align 8
  %414 = call i32 @GET_CODE(i32* %413)
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* @PARALLEL, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %412, %404
  %419 = load i32*, i32** %12, align 8
  %420 = call i32 @get_attr_conds(i32* %419)
  %421 = icmp ne i32 %420, 130
  br i1 %421, label %422, label %424

422:                                              ; preds = %418, %412
  %423 = load i32, i32* @TRUE, align 4
  store i32 %423, i32* %9, align 4
  br label %424

424:                                              ; preds = %422, %418
  %425 = load i32*, i32** %14, align 8
  %426 = call i32 @GET_CODE(i32* %425)
  %427 = load i32, i32* @USE, align 4
  %428 = icmp ne i32 %426, %427
  br i1 %428, label %429, label %441

429:                                              ; preds = %424
  %430 = load i32*, i32** %14, align 8
  %431 = call i32 @GET_CODE(i32* %430)
  %432 = load i32, i32* @CLOBBER, align 4
  %433 = icmp ne i32 %431, %432
  br i1 %433, label %434, label %441

434:                                              ; preds = %429
  %435 = load i32*, i32** %12, align 8
  %436 = call i32 @get_attr_cirrus(i32* %435)
  %437 = load i32, i32* @CIRRUS_NOT, align 4
  %438 = icmp ne i32 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = load i32, i32* @TRUE, align 4
  store i32 %440, i32* %9, align 4
  br label %441

441:                                              ; preds = %439, %434, %429, %424
  br label %443

442:                                              ; preds = %236
  br label %443

443:                                              ; preds = %442, %441, %403, %315, %279, %275, %254
  br label %217

444:                                              ; preds = %235, %228
  %445 = load i32, i32* %10, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %564

447:                                              ; preds = %444
  %448 = load i32, i32* %6, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %459, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* @arm_ccfsm_state, align 4
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %456, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %4, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %453, %450
  %457 = load i32*, i32** %13, align 8
  %458 = call i64 @CODE_LABEL_NUMBER(i32* %457)
  store i64 %458, i64* @arm_target_label, align 8
  br label %509

459:                                              ; preds = %453, %447
  %460 = load i32, i32* %6, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %459
  %463 = load i32, i32* @arm_ccfsm_state, align 4
  %464 = icmp eq i32 %463, 2
  br label %465

465:                                              ; preds = %462, %459
  %466 = phi i1 [ true, %459 ], [ %464, %462 ]
  %467 = zext i1 %466 to i32
  %468 = call i32 @gcc_assert(i32 %467)
  br label %469

469:                                              ; preds = %495, %465
  %470 = load i32*, i32** %12, align 8
  %471 = icmp ne i32* %470, null
  br i1 %471, label %472, label %478

472:                                              ; preds = %469
  %473 = load i32*, i32** %12, align 8
  %474 = call i32* @PATTERN(i32* %473)
  %475 = call i32 @GET_CODE(i32* %474)
  %476 = load i32, i32* @USE, align 4
  %477 = icmp eq i32 %475, %476
  br label %478

478:                                              ; preds = %472, %469
  %479 = phi i1 [ false, %469 ], [ %477, %472 ]
  br i1 %479, label %480, label %499

480:                                              ; preds = %478
  %481 = load i32*, i32** %12, align 8
  %482 = call i32* @next_nonnote_insn(i32* %481)
  store i32* %482, i32** %12, align 8
  %483 = load i32*, i32** %12, align 8
  %484 = icmp ne i32* %483, null
  br i1 %484, label %485, label %495

485:                                              ; preds = %480
  %486 = load i32*, i32** %12, align 8
  %487 = call i32 @GET_CODE(i32* %486)
  %488 = icmp ne i32 %487, 133
  br i1 %488, label %489, label %493

489:                                              ; preds = %485
  %490 = load i32*, i32** %12, align 8
  %491 = call i32 @GET_CODE(i32* %490)
  %492 = icmp ne i32 %491, 131
  br label %493

493:                                              ; preds = %489, %485
  %494 = phi i1 [ false, %485 ], [ %492, %489 ]
  br label %495

495:                                              ; preds = %493, %480
  %496 = phi i1 [ true, %480 ], [ %494, %493 ]
  %497 = zext i1 %496 to i32
  %498 = call i32 @gcc_assert(i32 %497)
  br label %469

499:                                              ; preds = %478
  %500 = load i32*, i32** %12, align 8
  %501 = icmp ne i32* %500, null
  br i1 %501, label %507, label %502

502:                                              ; preds = %499
  %503 = load i32*, i32** %2, align 8
  %504 = call i32* @PATTERN(i32* %503)
  %505 = load i32*, i32** %2, align 8
  %506 = call i32 @recog(i32* %504, i32* %505, i32* null)
  store i32 0, i32* @arm_ccfsm_state, align 4
  store i32* null, i32** @arm_target_insn, align 8
  br label %569

507:                                              ; preds = %499
  %508 = load i32*, i32** %12, align 8
  store i32* %508, i32** @arm_target_insn, align 8
  br label %509

509:                                              ; preds = %507, %456
  %510 = load i32, i32* %5, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %545

512:                                              ; preds = %509
  %513 = load i32, i32* %4, align 4
  %514 = icmp ne i32 %513, 0
  %515 = xor i1 %514, true
  %516 = zext i1 %515 to i32
  %517 = call i32 @gcc_assert(i32 %516)
  %518 = load i32*, i32** %3, align 8
  %519 = call i32* @SET_SRC(i32* %518)
  %520 = call i32* @XEXP(i32* %519, i32 0)
  %521 = call i32* @XEXP(i32* %520, i32 0)
  %522 = call i32* @XEXP(i32* %521, i32 1)
  %523 = call i32 @get_arm_condition_code(i32* %522)
  store i32 %523, i32* @arm_current_cc, align 4
  %524 = load i32*, i32** %3, align 8
  %525 = call i32* @SET_SRC(i32* %524)
  %526 = call i32* @XEXP(i32* %525, i32 0)
  %527 = call i32* @XEXP(i32* %526, i32 0)
  %528 = call i32 @GET_CODE(i32* %527)
  %529 = load i32, i32* @AND, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %534

531:                                              ; preds = %512
  %532 = load i32, i32* @arm_current_cc, align 4
  %533 = call i32 @ARM_INVERSE_CONDITION_CODE(i32 %532)
  store i32 %533, i32* @arm_current_cc, align 4
  br label %534

534:                                              ; preds = %531, %512
  %535 = load i32*, i32** %3, align 8
  %536 = call i32* @SET_SRC(i32* %535)
  %537 = call i32* @XEXP(i32* %536, i32 0)
  %538 = call i32 @GET_CODE(i32* %537)
  %539 = load i32, i32* @NE, align 4
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %544

541:                                              ; preds = %534
  %542 = load i32, i32* @arm_current_cc, align 4
  %543 = call i32 @ARM_INVERSE_CONDITION_CODE(i32 %542)
  store i32 %543, i32* @arm_current_cc, align 4
  br label %544

544:                                              ; preds = %541, %534
  br label %554

545:                                              ; preds = %509
  %546 = load i32, i32* %4, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %553, label %548

548:                                              ; preds = %545
  %549 = load i32*, i32** %3, align 8
  %550 = call i32* @SET_SRC(i32* %549)
  %551 = call i32* @XEXP(i32* %550, i32 0)
  %552 = call i32 @get_arm_condition_code(i32* %551)
  store i32 %552, i32* @arm_current_cc, align 4
  br label %553

553:                                              ; preds = %548, %545
  br label %554

554:                                              ; preds = %553, %544
  %555 = load i32, i32* %4, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %554
  %558 = load i32, i32* %11, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %557, %554
  %561 = load i32, i32* @arm_current_cc, align 4
  %562 = call i32 @ARM_INVERSE_CONDITION_CODE(i32 %561)
  store i32 %562, i32* @arm_current_cc, align 4
  br label %563

563:                                              ; preds = %560, %557
  br label %564

564:                                              ; preds = %563, %444
  %565 = load i32*, i32** %2, align 8
  %566 = call i32* @PATTERN(i32* %565)
  %567 = load i32*, i32** %2, align 8
  %568 = call i32 @recog(i32* %566, i32* %567, i32* null)
  br label %569

569:                                              ; preds = %25, %57, %89, %91, %107, %154, %502, %564, %137, %130, %124
  ret void
}

declare dso_local i32* @PATTERN(i32*) #1

declare dso_local i64 @simplejump_p(i32*) #1

declare dso_local i32* @next_nonnote_insn(i32*) #1

declare dso_local i32 @GET_CODE(i32*) #1

declare dso_local i64 @CODE_LABEL_NUMBER(i32*) #1

declare dso_local i32 @LABEL_NUSES(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @XVECLEN(i32*, i32) #1

declare dso_local i32* @XVECEXP(i32*, i32, i32) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i32* @SET_SRC(i32*) #1

declare dso_local i32 @get_attr_conds(i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @use_return_insn(i32, i32*) #1

declare dso_local i32 @get_attr_cirrus(i32*) #1

declare dso_local i32 @recog(i32*, i32*, i32*) #1

declare dso_local i32 @get_arm_condition_code(i32*) #1

declare dso_local i32 @ARM_INVERSE_CONDITION_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
