; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_multireg_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_split_multireg_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hard_regno_nregs = common dso_local global i32** null, align 8
@DFmode = common dso_local global i32 0, align 4
@V16QImode = common dso_local global i32 0, align 4
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@TFmode = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@PRE_INC = common dso_local global i64 0, align 8
@PRE_DEC = common dso_local global i64 0, align 8
@TARGET_32BIT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@LO_SUM = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@TARGET_UPDATE = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_split_multireg_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @REG_P(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @REGNO(i32 %24)
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @REGNO(i32 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @GET_MODE(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32**, i32*** @hard_regno_nregs, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @FP_REGNO_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @DFmode, align 4
  store i32 %46, i32* %7, align 4
  br label %66

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @ALTIVEC_REGNO_P(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @V16QImode, align 4
  store i32 %52, i32* %7, align 4
  br label %65

53:                                               ; preds = %47
  %54 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TFmode, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @DFmode, align 4
  store i32 %61, i32* %7, align 4
  br label %64

62:                                               ; preds = %56, %53
  %63 = load i32, i32* @word_mode, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @GET_MODE_SIZE(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GET_MODE_SIZE(i32 %72)
  %74 = icmp eq i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @gcc_assert(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i64 @REG_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %66
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @REG_P(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @REGNO(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @REGNO(i32 %87)
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %114, %90
  %94 = load i32, i32* %10, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %93
  %97 = load i32, i32* @VOIDmode, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @simplify_gen_subreg(i32 %98, i32 %99, i32 %100, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 %108, %109
  %111 = call i32 @simplify_gen_subreg(i32 %105, i32 %106, i32 %107, i32 %110)
  %112 = call i32 @gen_rtx_SET(i32 %97, i32 %104, i32 %111)
  %113 = call i32 @emit_insn(i32 %112)
  br label %114

114:                                              ; preds = %96
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  br label %93

117:                                              ; preds = %93
  br label %380

118:                                              ; preds = %84, %80, %66
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %119 = load i32, i32* %4, align 4
  %120 = call i64 @MEM_P(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %236

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = call i64 @INT_REGNO_P(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %236

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @XEXP(i32 %127, i32 0)
  %129 = call i64 @GET_CODE(i32 %128)
  %130 = load i64, i64* @PRE_INC, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @XEXP(i32 %133, i32 0)
  %135 = call i64 @GET_CODE(i32 %134)
  %136 = load i64, i64* @PRE_DEC, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %132, %126
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @XEXP(i32 %139, i32 0)
  %141 = call i32 @XEXP(i32 %140, i32 0)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @XEXP(i32 %142, i32 0)
  %144 = call i64 @GET_CODE(i32 %143)
  %145 = load i64, i64* @PRE_INC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %138
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @GET_MODE(i32 %148)
  %150 = call i32 @GET_MODE_SIZE(i32 %149)
  %151 = call i32 @GEN_INT(i32 %150)
  br label %158

152:                                              ; preds = %138
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @GET_MODE(i32 %153)
  %155 = call i32 @GET_MODE_SIZE(i32 %154)
  %156 = sub nsw i32 0, %155
  %157 = call i32 @GEN_INT(i32 %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = phi i32 [ %151, %147 ], [ %157, %152 ]
  store i32 %159, i32* %15, align 4
  %160 = load i64, i64* @TARGET_32BIT, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @gen_addsi3(i32 %163, i32 %164, i32 %165)
  br label %172

167:                                              ; preds = %158
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @gen_adddi3(i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i32 [ %166, %162 ], [ %171, %167 ]
  %174 = call i32 @emit_insn(i32 %173)
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @replace_equiv_address(i32 %175, i32 %176)
  store i32 %177, i32* %4, align 4
  br label %196

178:                                              ; preds = %132
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @rs6000_offsettable_memref_p(i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* @Pmode, align 4
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @gen_rtx_REG(i32 %183, i32 %184)
  store i32 %185, i32* %16, align 4
  %186 = load i32, i32* @VOIDmode, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @XEXP(i32 %188, i32 0)
  %190 = call i32 @gen_rtx_SET(i32 %186, i32 %187, i32 %189)
  %191 = call i32 @emit_insn(i32 %190)
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @replace_equiv_address(i32 %192, i32 %193)
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %182, %178
  br label %196

196:                                              ; preds = %195, %172
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @XEXP(i32 %197, i32 0)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i64 @GET_CODE(i32 %199)
  %201 = load i64, i64* @PLUS, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %14, align 4
  %205 = call i64 @GET_CODE(i32 %204)
  %206 = load i64, i64* @LO_SUM, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203, %196
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @XEXP(i32 %209, i32 0)
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %208, %203
  %212 = load i32, i32* %14, align 4
  %213 = call i64 @REG_P(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %211
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @REGNO(i32 %216)
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @REGNO(i32 %218)
  %220 = icmp sge i32 %217, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %215
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @REGNO(i32 %222)
  %224 = load i32, i32* %3, align 4
  %225 = call i32 @REGNO(i32 %224)
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %225, %226
  %228 = icmp slt i32 %223, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %221
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @REGNO(i32 %230)
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @REGNO(i32 %232)
  %234 = sub nsw i32 %231, %233
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %229, %221, %215, %211
  br label %236

236:                                              ; preds = %235, %122, %118
  %237 = load i32, i32* %3, align 4
  %238 = call i64 @GET_CODE(i32 %237)
  %239 = load i64, i64* @MEM, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %339

241:                                              ; preds = %236
  %242 = load i32, i32* %5, align 4
  %243 = call i64 @INT_REGNO_P(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %339

245:                                              ; preds = %241
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @XEXP(i32 %246, i32 0)
  %248 = call i64 @GET_CODE(i32 %247)
  %249 = load i64, i64* @PRE_INC, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %245
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @XEXP(i32 %252, i32 0)
  %254 = call i64 @GET_CODE(i32 %253)
  %255 = load i64, i64* @PRE_DEC, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %334

257:                                              ; preds = %251, %245
  %258 = load i32, i32* %3, align 4
  %259 = call i32 @XEXP(i32 %258, i32 0)
  %260 = call i32 @XEXP(i32 %259, i32 0)
  store i32 %260, i32* %17, align 4
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @XEXP(i32 %261, i32 0)
  %263 = call i64 @GET_CODE(i32 %262)
  %264 = load i64, i64* @PRE_INC, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %257
  %267 = load i32, i32* %3, align 4
  %268 = call i32 @GET_MODE(i32 %267)
  %269 = call i32 @GET_MODE_SIZE(i32 %268)
  %270 = call i32 @GEN_INT(i32 %269)
  br label %277

271:                                              ; preds = %257
  %272 = load i32, i32* %3, align 4
  %273 = call i32 @GET_MODE(i32 %272)
  %274 = call i32 @GET_MODE_SIZE(i32 %273)
  %275 = sub nsw i32 0, %274
  %276 = call i32 @GEN_INT(i32 %275)
  br label %277

277:                                              ; preds = %271, %266
  %278 = phi i32 [ %270, %266 ], [ %276, %271 ]
  store i32 %278, i32* %18, align 4
  %279 = load i64, i64* @TARGET_UPDATE, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %277
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @simplify_gen_subreg(i32 %282, i32 %283, i32 %284, i32 0)
  store i32 %285, i32* %19, align 4
  %286 = load i64, i64* @TARGET_32BIT, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %281
  %289 = load i64, i64* @TARGET_POWERPC64, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* %18, align 4
  %295 = load i32, i32* %19, align 4
  %296 = call i32 @gen_movdi_si_update(i32 %292, i32 %293, i32 %294, i32 %295)
  br label %303

297:                                              ; preds = %288
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %19, align 4
  %302 = call i32 @gen_movsi_update(i32 %298, i32 %299, i32 %300, i32 %301)
  br label %303

303:                                              ; preds = %297, %291
  %304 = phi i32 [ %296, %291 ], [ %302, %297 ]
  br label %311

305:                                              ; preds = %281
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %19, align 4
  %310 = call i32 @gen_movdi_di_update(i32 %306, i32 %307, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %305, %303
  %312 = phi i32 [ %304, %303 ], [ %310, %305 ]
  %313 = call i32 @emit_insn(i32 %312)
  store i32 1, i32* %13, align 4
  br label %330

314:                                              ; preds = %277
  %315 = load i64, i64* @TARGET_32BIT, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %18, align 4
  %321 = call i32 @gen_addsi3(i32 %318, i32 %319, i32 %320)
  br label %327

322:                                              ; preds = %314
  %323 = load i32, i32* %17, align 4
  %324 = load i32, i32* %17, align 4
  %325 = load i32, i32* %18, align 4
  %326 = call i32 @gen_adddi3(i32 %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %322, %317
  %328 = phi i32 [ %321, %317 ], [ %326, %322 ]
  %329 = call i32 @emit_insn(i32 %328)
  br label %330

330:                                              ; preds = %327, %311
  %331 = load i32, i32* %3, align 4
  %332 = load i32, i32* %17, align 4
  %333 = call i32 @replace_equiv_address(i32 %331, i32 %332)
  store i32 %333, i32* %3, align 4
  br label %338

334:                                              ; preds = %251
  %335 = load i32, i32* %3, align 4
  %336 = call i32 @rs6000_offsettable_memref_p(i32 %335)
  %337 = call i32 @gcc_assert(i32 %336)
  br label %338

338:                                              ; preds = %334, %330
  br label %339

339:                                              ; preds = %338, %241, %236
  store i32 0, i32* %11, align 4
  br label %340

340:                                              ; preds = %376, %339
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %379

344:                                              ; preds = %340
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %9, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %344
  store i32 0, i32* %12, align 4
  br label %351

351:                                              ; preds = %350, %344
  %352 = load i32, i32* %12, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load i32, i32* %13, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %376

358:                                              ; preds = %354, %351
  %359 = load i32, i32* @VOIDmode, align 4
  %360 = load i32, i32* %7, align 4
  %361 = load i32, i32* %3, align 4
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* %12, align 4
  %364 = load i32, i32* %8, align 4
  %365 = mul nsw i32 %363, %364
  %366 = call i32 @simplify_gen_subreg(i32 %360, i32 %361, i32 %362, i32 %365)
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %4, align 4
  %369 = load i32, i32* %6, align 4
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* %8, align 4
  %372 = mul nsw i32 %370, %371
  %373 = call i32 @simplify_gen_subreg(i32 %367, i32 %368, i32 %369, i32 %372)
  %374 = call i32 @gen_rtx_SET(i32 %359, i32 %366, i32 %373)
  %375 = call i32 @emit_insn(i32 %374)
  br label %376

376:                                              ; preds = %358, %357
  %377 = load i32, i32* %11, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %11, align 4
  br label %340

379:                                              ; preds = %340
  br label %380

380:                                              ; preds = %379, %117
  ret void
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @FP_REGNO_P(i32) #1

declare dso_local i64 @ALTIVEC_REGNO_P(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_subreg(i32, i32, i32, i32) #1

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i64 @INT_REGNO_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @replace_equiv_address(i32, i32) #1

declare dso_local i32 @rs6000_offsettable_memref_p(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_movdi_si_update(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movsi_update(i32, i32, i32, i32) #1

declare dso_local i32 @gen_movdi_di_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
