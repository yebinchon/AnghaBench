; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_movxf_movrf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_movxf_movrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@no_new_pseudos = common dso_local global i32 0, align 4
@TImode = common dso_local global i64 0, align 8
@CONST_DOUBLE = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@reload_in_progress = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_expand_movxf_movrf(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SUBREG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SUBREG_REG(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @REG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %178

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @REGNO(i32 %30)
  %32 = call i64 @GR_REGNO_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %178

34:                                               ; preds = %29
  %35 = load i32, i32* @no_new_pseudos, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @GET_CODE(i32 %42)
  %44 = load i64, i64* @SUBREG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SUBREG_REG(i32 %49)
  %51 = call i64 @GET_MODE(i32 %50)
  %52 = load i64, i64* @TImode, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %68, label %54

54:                                               ; preds = %46, %34
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @REG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @REGNO(i32 %64)
  %66 = call i64 @GR_REGNO_P(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %61, %46
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i64 @GET_CODE(i32 %72)
  %74 = load i64, i64* @SUBREG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @SUBREG_REG(i32 %77)
  store i32 %78, i32* %8, align 4
  br label %85

79:                                               ; preds = %68
  %80 = load i64, i64* @TImode, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @REGNO(i32 %82)
  %84 = call i32 @gen_rtx_REG(i32 %81, i64 %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i64, i64* @TImode, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @REGNO(i32 %88)
  %90 = call i32 @gen_rtx_REG(i32 %87, i64 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @emit_move_insn(i32 %90, i32 %91)
  store i32 1, i32* %3, align 4
  br label %338

93:                                               ; preds = %61, %54
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @GET_CODE(i32 %96)
  %98 = load i64, i64* @CONST_DOUBLE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %93
  %101 = load i32, i32* @DImode, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @REGNO(i32 %102)
  %104 = call i32 @gen_rtx_REG(i32 %101, i64 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @WORDS_BIG_ENDIAN, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @operand_subword(i32 %107, i32 %108, i32 0, i32 %109)
  %111 = call i32 @emit_move_insn(i32 %104, i32 %110)
  %112 = load i32, i32* @DImode, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @REGNO(i32 %113)
  %115 = add nsw i64 %114, 1
  %116 = call i32 @gen_rtx_REG(i32 %112, i64 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @WORDS_BIG_ENDIAN, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @operand_subword(i32 %119, i32 %123, i32 0, i32 %124)
  %126 = call i32 @emit_move_insn(i32 %116, i32 %125)
  store i32 1, i32* %3, align 4
  br label %338

127:                                              ; preds = %93
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i64 @register_operand(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @spill_xfmode_rfmode_operand(i32 %137, i32 1, i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %134, %127
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @GET_CODE(i32 %145)
  %147 = load i64, i64* @MEM, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @gcc_assert(i32 %149)
  %151 = load i32, i32* @DImode, align 4
  %152 = load i32, i32* %6, align 4
  %153 = call i64 @REGNO(i32 %152)
  %154 = call i32 @gen_rtx_REG(i32 %151, i64 %153)
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @DImode, align 4
  %157 = load i32, i32* %6, align 4
  %158 = call i64 @REGNO(i32 %157)
  %159 = add nsw i64 %158, 1
  %160 = call i32 @gen_rtx_REG(i32 %156, i64 %159)
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @DImode, align 4
  %168 = call i32 @adjust_address(i32 %166, i32 %167, i32 0)
  %169 = call i32 @emit_move_insn(i32 %163, i32 %168)
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @DImode, align 4
  %176 = call i32 @adjust_address(i32 %174, i32 %175, i32 8)
  %177 = call i32 @emit_move_insn(i32 %171, i32 %176)
  store i32 1, i32* %3, align 4
  br label %338

178:                                              ; preds = %29, %24
  %179 = load i32*, i32** %5, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @GET_CODE(i32 %181)
  %183 = load i64, i64* @REG, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %261

185:                                              ; preds = %178
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @REGNO(i32 %188)
  %190 = call i64 @GR_REGNO_P(i64 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %261

192:                                              ; preds = %185
  %193 = load i32, i32* @no_new_pseudos, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @gcc_assert(i32 %196)
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %4, align 4
  %202 = call i64 @register_operand(i32 %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %192
  %205 = load i64, i64* @TImode, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @REGNO(i32 %209)
  %211 = call i32 @gen_rtx_REG(i32 %206, i64 %210)
  store i32 %211, i32* %9, align 4
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @gen_rtx_SUBREG(i32 %212, i32 %213, i32 0)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @spill_xfmode_rfmode_operand(i32 %215, i32 0, i32 %216)
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  store i32 %217, i32* %219, align 4
  br label %260

220:                                              ; preds = %192
  %221 = load i32*, i32** %5, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @GET_CODE(i32 %223)
  %225 = load i64, i64* @MEM, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @gcc_assert(i32 %227)
  %229 = load i32, i32* @DImode, align 4
  %230 = load i32*, i32** %5, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @REGNO(i32 %232)
  %234 = call i32 @gen_rtx_REG(i32 %229, i64 %233)
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* @DImode, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @REGNO(i32 %239)
  %241 = add nsw i64 %240, 1
  %242 = call i32 @gen_rtx_REG(i32 %236, i64 %241)
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %242, i32* %243, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @DImode, align 4
  %248 = call i32 @adjust_address(i32 %246, i32 %247, i32 0)
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @emit_move_insn(i32 %248, i32 %250)
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @DImode, align 4
  %256 = call i32 @adjust_address(i32 %254, i32 %255, i32 8)
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @emit_move_insn(i32 %256, i32 %258)
  store i32 1, i32* %3, align 4
  br label %338

260:                                              ; preds = %204
  br label %261

261:                                              ; preds = %260, %185, %178
  %262 = load i32, i32* @reload_in_progress, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %337, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* @reload_completed, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %337, label %267

267:                                              ; preds = %264
  %268 = load i32*, i32** %5, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @spill_xfmode_rfmode_operand(i32 %270, i32 0, i32 %271)
  %273 = load i32*, i32** %5, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i64 @GET_MODE(i32 %275)
  %277 = load i64, i64* @TImode, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %319

279:                                              ; preds = %267
  %280 = load i32, i32* %6, align 4
  %281 = call i64 @GET_CODE(i32 %280)
  %282 = load i64, i64* @REG, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %319

284:                                              ; preds = %279
  %285 = load i32*, i32** %5, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* %13, align 4
  %289 = call i64 @CONSTANT_P(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %284
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %13, align 4
  %294 = call i32 @force_const_mem(i32 %292, i32 %293)
  %295 = call i32 @validize_mem(i32 %294)
  store i32 %295, i32* %13, align 4
  br label %296

296:                                              ; preds = %291, %284
  %297 = load i32, i32* %13, align 4
  %298 = call i64 @GET_CODE(i32 %297)
  %299 = load i64, i64* @MEM, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load i32, i32* %13, align 4
  %303 = load i64, i64* @TImode, align 8
  %304 = trunc i64 %303 to i32
  %305 = call i32 @adjust_address(i32 %302, i32 %304, i32 0)
  store i32 %305, i32* %11, align 4
  br label %315

306:                                              ; preds = %296
  %307 = load i64, i64* @TImode, align 8
  %308 = call i32 @assign_stack_temp(i64 %307, i32 16, i32 0)
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* %4, align 4
  %311 = call i32 @adjust_address(i32 %309, i32 %310, i32 0)
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %13, align 4
  %314 = call i32 @emit_move_insn(i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %306, %301
  %316 = load i32, i32* %6, align 4
  %317 = load i32, i32* %11, align 4
  %318 = call i32 @emit_move_insn(i32 %316, i32 %317)
  store i32 1, i32* %3, align 4
  br label %338

319:                                              ; preds = %279, %267
  %320 = load i32*, i32** %5, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %5, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @ia64_move_ok(i32 %322, i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %319
  %329 = load i32, i32* %4, align 4
  %330 = load i32*, i32** %5, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @force_reg(i32 %329, i32 %332)
  %334 = load i32*, i32** %5, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %328, %319
  br label %337

337:                                              ; preds = %336, %264, %261
  store i32 0, i32* %3, align 4
  br label %338

338:                                              ; preds = %337, %315, %220, %142, %100, %85
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @GR_REGNO_P(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i64) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @operand_subword(i32, i32, i32, i32) #1

declare dso_local i64 @register_operand(i32, i32) #1

declare dso_local i32 @spill_xfmode_rfmode_operand(i32, i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SUBREG(i32, i32, i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @validize_mem(i32) #1

declare dso_local i32 @force_const_mem(i32, i32) #1

declare dso_local i32 @assign_stack_temp(i64, i32, i32) #1

declare dso_local i32 @ia64_move_ok(i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
