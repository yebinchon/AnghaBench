; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimize_pic_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_legitimize_pic_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@TARGET_CPU_ZARCH = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@regs_ever_live = common dso_local global i32* null, align 8
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@CONST = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @legitimize_pic_address(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
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
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @TLS_SYMBOLIC_CONST(i64 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = load i64, i64* @LABEL_REF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @SYMBOL_REF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @SYMBOL_REF_LOCAL_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %34, %2
  %39 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = call i64 @larl_operand(i64 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %92

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @Pmode, align 4
  %54 = call i64 @gen_reg_rtx(i32 %53)
  br label %55

55:                                               ; preds = %52, %50
  %56 = phi i64 [ %51, %50 ], [ %54, %52 ]
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @reload_in_progress, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @reload_completed, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59, %55
  %63 = load i32*, i32** @regs_ever_live, align 8
  %64 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @Pmode, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @gen_rtvec(i32 1, i64 %68)
  %70 = call i64 @gen_rtx_UNSPEC(i32 %67, i32 %69, i32 130)
  store i64 %70, i64* %5, align 8
  %71 = load i32, i32* @Pmode, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @gen_rtx_CONST(i32 %71, i64 %72)
  store i64 %73, i64* %5, align 8
  %74 = load i32, i32* @Pmode, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @force_const_mem(i32 %74, i64 %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @emit_move_insn(i64 %77, i64 %78)
  %80 = load i32, i32* @Pmode, align 4
  %81 = load i64, i64* @pic_offset_table_rtx, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @gen_rtx_PLUS(i32 %80, i64 %81, i64 %82)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %66
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @s390_load_address(i64 %87, i64 %88)
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %6, align 8
  br label %91

91:                                               ; preds = %86, %66
  br label %92

92:                                               ; preds = %91, %46
  br label %536

93:                                               ; preds = %34, %29
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @GET_CODE(i64 %94)
  %96 = load i64, i64* @SYMBOL_REF, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %198

98:                                               ; preds = %93
  %99 = load i64, i64* %4, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @Pmode, align 4
  %103 = call i64 @gen_reg_rtx(i32 %102)
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @flag_pic, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i64, i64* @reload_in_progress, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* @reload_completed, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** @regs_ever_live, align 8
  %115 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32, i32* @Pmode, align 4
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @gen_rtvec(i32 1, i64 %119)
  %121 = call i64 @gen_rtx_UNSPEC(i32 %118, i32 %120, i32 132)
  store i64 %121, i64* %6, align 8
  %122 = load i32, i32* @Pmode, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @gen_rtx_CONST(i32 %122, i64 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i32, i32* @Pmode, align 4
  %126 = load i64, i64* @pic_offset_table_rtx, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @gen_rtx_PLUS(i32 %125, i64 %126, i64 %127)
  store i64 %128, i64* %6, align 8
  %129 = load i32, i32* @Pmode, align 4
  %130 = load i64, i64* %6, align 8
  %131 = call i64 @gen_const_mem(i32 %129, i64 %130)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @emit_move_insn(i64 %132, i64 %133)
  %135 = load i64, i64* %4, align 8
  store i64 %135, i64* %6, align 8
  br label %197

136:                                              ; preds = %104
  %137 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = load i32, i32* @Pmode, align 4
  %141 = call i64 @gen_reg_rtx(i32 %140)
  store i64 %141, i64* %9, align 8
  %142 = load i32, i32* @Pmode, align 4
  %143 = load i64, i64* %5, align 8
  %144 = call i32 @gen_rtvec(i32 1, i64 %143)
  %145 = call i64 @gen_rtx_UNSPEC(i32 %142, i32 %144, i32 131)
  store i64 %145, i64* %6, align 8
  %146 = load i32, i32* @Pmode, align 4
  %147 = load i64, i64* %6, align 8
  %148 = call i64 @gen_rtx_CONST(i32 %146, i64 %147)
  store i64 %148, i64* %6, align 8
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @emit_move_insn(i64 %149, i64 %150)
  %152 = load i32, i32* @Pmode, align 4
  %153 = load i64, i64* %9, align 8
  %154 = call i64 @gen_const_mem(i32 %152, i64 %153)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @emit_move_insn(i64 %155, i64 %156)
  %158 = load i64, i64* %4, align 8
  store i64 %158, i64* %6, align 8
  br label %196

159:                                              ; preds = %136
  %160 = load i32, i32* @Pmode, align 4
  %161 = call i64 @gen_reg_rtx(i32 %160)
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* @reload_in_progress, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load i64, i64* @reload_completed, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164, %159
  %168 = load i32*, i32** @regs_ever_live, align 8
  %169 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %164
  %172 = load i32, i32* @Pmode, align 4
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @gen_rtvec(i32 1, i64 %173)
  %175 = call i64 @gen_rtx_UNSPEC(i32 %172, i32 %174, i32 132)
  store i64 %175, i64* %5, align 8
  %176 = load i32, i32* @Pmode, align 4
  %177 = load i64, i64* %5, align 8
  %178 = call i64 @gen_rtx_CONST(i32 %176, i64 %177)
  store i64 %178, i64* %5, align 8
  %179 = load i32, i32* @Pmode, align 4
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @force_const_mem(i32 %179, i64 %180)
  store i64 %181, i64* %5, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64, i64* %5, align 8
  %184 = call i32 @emit_move_insn(i64 %182, i64 %183)
  %185 = load i32, i32* @Pmode, align 4
  %186 = load i64, i64* @pic_offset_table_rtx, align 8
  %187 = load i64, i64* %10, align 8
  %188 = call i64 @gen_rtx_PLUS(i32 %185, i64 %186, i64 %187)
  store i64 %188, i64* %6, align 8
  %189 = load i32, i32* @Pmode, align 4
  %190 = load i64, i64* %6, align 8
  %191 = call i64 @gen_const_mem(i32 %189, i64 %190)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %4, align 8
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @emit_move_insn(i64 %192, i64 %193)
  %195 = load i64, i64* %4, align 8
  store i64 %195, i64* %6, align 8
  br label %196

196:                                              ; preds = %171, %139
  br label %197

197:                                              ; preds = %196, %117
  br label %535

198:                                              ; preds = %93
  %199 = load i64, i64* %5, align 8
  %200 = call i64 @GET_CODE(i64 %199)
  %201 = load i64, i64* @CONST, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %293

203:                                              ; preds = %198
  %204 = load i64, i64* %5, align 8
  %205 = call i64 @XEXP(i64 %204, i32 0)
  store i64 %205, i64* %5, align 8
  %206 = load i64, i64* %5, align 8
  %207 = call i64 @GET_CODE(i64 %206)
  %208 = load i64, i64* @UNSPEC, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %285

210:                                              ; preds = %203
  %211 = load i64, i64* %5, align 8
  %212 = call i32 @XVECLEN(i64 %211, i32 0)
  %213 = icmp eq i32 %212, 1
  %214 = zext i1 %213 to i32
  %215 = call i32 @gcc_assert(i32 %214)
  %216 = load i64, i64* %5, align 8
  %217 = call i32 @XINT(i64 %216, i32 1)
  switch i32 %217, label %282 [
    i32 130, label %218
    i32 128, label %218
    i32 132, label %222
    i32 131, label %230
    i32 129, label %231
  ]

218:                                              ; preds = %210, %210
  %219 = load i32, i32* @Pmode, align 4
  %220 = load i64, i64* %3, align 8
  %221 = call i64 @force_const_mem(i32 %219, i64 %220)
  store i64 %221, i64* %6, align 8
  br label %284

222:                                              ; preds = %210
  %223 = load i32, i32* @flag_pic, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32, i32* @Pmode, align 4
  %227 = load i64, i64* %3, align 8
  %228 = call i64 @force_const_mem(i32 %226, i64 %227)
  store i64 %228, i64* %6, align 8
  br label %229

229:                                              ; preds = %225, %222
  br label %284

230:                                              ; preds = %210
  br label %284

231:                                              ; preds = %210
  %232 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %281, label %234

234:                                              ; preds = %231
  %235 = load i64, i64* %4, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i64, i64* %4, align 8
  br label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @Pmode, align 4
  %241 = call i64 @gen_reg_rtx(i32 %240)
  br label %242

242:                                              ; preds = %239, %237
  %243 = phi i64 [ %238, %237 ], [ %241, %239 ]
  store i64 %243, i64* %11, align 8
  %244 = load i64, i64* @reload_in_progress, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load i64, i64* @reload_completed, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246, %242
  %250 = load i32*, i32** @regs_ever_live, align 8
  %251 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32 1, i32* %252, align 4
  br label %253

253:                                              ; preds = %249, %246
  %254 = load i64, i64* %5, align 8
  %255 = call i64 @XVECEXP(i64 %254, i32 0, i32 0)
  store i64 %255, i64* %5, align 8
  %256 = load i32, i32* @Pmode, align 4
  %257 = load i64, i64* %5, align 8
  %258 = call i32 @gen_rtvec(i32 1, i64 %257)
  %259 = call i64 @gen_rtx_UNSPEC(i32 %256, i32 %258, i32 128)
  store i64 %259, i64* %5, align 8
  %260 = load i32, i32* @Pmode, align 4
  %261 = load i64, i64* %5, align 8
  %262 = call i64 @gen_rtx_CONST(i32 %260, i64 %261)
  store i64 %262, i64* %5, align 8
  %263 = load i32, i32* @Pmode, align 4
  %264 = load i64, i64* %5, align 8
  %265 = call i64 @force_const_mem(i32 %263, i64 %264)
  store i64 %265, i64* %5, align 8
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* %5, align 8
  %268 = call i32 @emit_move_insn(i64 %266, i64 %267)
  %269 = load i32, i32* @Pmode, align 4
  %270 = load i64, i64* @pic_offset_table_rtx, align 8
  %271 = load i64, i64* %11, align 8
  %272 = call i64 @gen_rtx_PLUS(i32 %269, i64 %270, i64 %271)
  store i64 %272, i64* %6, align 8
  %273 = load i64, i64* %4, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %253
  %276 = load i64, i64* %4, align 8
  %277 = load i64, i64* %6, align 8
  %278 = call i32 @s390_load_address(i64 %276, i64 %277)
  %279 = load i64, i64* %4, align 8
  store i64 %279, i64* %6, align 8
  br label %280

280:                                              ; preds = %275, %253
  br label %281

281:                                              ; preds = %280, %231
  br label %284

282:                                              ; preds = %210
  %283 = call i32 (...) @gcc_unreachable()
  br label %284

284:                                              ; preds = %282, %281, %230, %229, %218
  br label %292

285:                                              ; preds = %203
  %286 = load i64, i64* %5, align 8
  %287 = call i64 @GET_CODE(i64 %286)
  %288 = load i64, i64* @PLUS, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @gcc_assert(i32 %290)
  br label %292

292:                                              ; preds = %285, %284
  br label %293

293:                                              ; preds = %292, %198
  %294 = load i64, i64* %5, align 8
  %295 = call i64 @GET_CODE(i64 %294)
  %296 = load i64, i64* @PLUS, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %534

298:                                              ; preds = %293
  %299 = load i64, i64* %5, align 8
  %300 = call i64 @XEXP(i64 %299, i32 0)
  store i64 %300, i64* %12, align 8
  %301 = load i64, i64* %5, align 8
  %302 = call i64 @XEXP(i64 %301, i32 1)
  store i64 %302, i64* %13, align 8
  %303 = load i64, i64* %12, align 8
  %304 = call i32 @TLS_SYMBOLIC_CONST(i64 %303)
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  %307 = zext i1 %306 to i32
  %308 = call i32 @gcc_assert(i32 %307)
  %309 = load i64, i64* %13, align 8
  %310 = call i32 @TLS_SYMBOLIC_CONST(i64 %309)
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = call i32 @gcc_assert(i32 %313)
  %315 = load i64, i64* %12, align 8
  %316 = call i64 @GET_CODE(i64 %315)
  %317 = load i64, i64* @LABEL_REF, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %328, label %319

319:                                              ; preds = %298
  %320 = load i64, i64* %12, align 8
  %321 = call i64 @GET_CODE(i64 %320)
  %322 = load i64, i64* @SYMBOL_REF, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %449

324:                                              ; preds = %319
  %325 = load i64, i64* %12, align 8
  %326 = call i64 @SYMBOL_REF_LOCAL_P(i64 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %449

328:                                              ; preds = %324, %298
  %329 = load i64, i64* %13, align 8
  %330 = call i64 @GET_CODE(i64 %329)
  %331 = load i64, i64* @CONST_INT, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %449

333:                                              ; preds = %328
  %334 = load i64, i64* @TARGET_CPU_ZARCH, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %399

336:                                              ; preds = %333
  %337 = load i64, i64* %12, align 8
  %338 = load i32, i32* @VOIDmode, align 4
  %339 = call i64 @larl_operand(i64 %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %399

341:                                              ; preds = %336
  %342 = load i64, i64* %13, align 8
  %343 = call i32 @INTVAL(i64 %342)
  %344 = icmp slt i32 %343, -2147483648
  br i1 %344, label %345, label %399

345:                                              ; preds = %341
  %346 = load i64, i64* %13, align 8
  %347 = call i32 @INTVAL(i64 %346)
  %348 = icmp sge i32 %347, -2147483648
  br i1 %348, label %349, label %399

349:                                              ; preds = %345
  %350 = load i64, i64* %13, align 8
  %351 = call i32 @INTVAL(i64 %350)
  %352 = and i32 %351, 1
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %397

354:                                              ; preds = %349
  %355 = load i64, i64* %4, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = load i64, i64* %4, align 8
  br label %362

359:                                              ; preds = %354
  %360 = load i32, i32* @Pmode, align 4
  %361 = call i64 @gen_reg_rtx(i32 %360)
  br label %362

362:                                              ; preds = %359, %357
  %363 = phi i64 [ %358, %357 ], [ %361, %359 ]
  store i64 %363, i64* %14, align 8
  %364 = load i64, i64* %13, align 8
  %365 = call i32 @INTVAL(i64 %364)
  %366 = call i32 @DISP_IN_RANGE(i32 %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %381, label %368

368:                                              ; preds = %362
  %369 = load i64, i64* %13, align 8
  %370 = call i32 @INTVAL(i64 %369)
  %371 = sub nsw i32 %370, 1
  store i32 %371, i32* %15, align 4
  %372 = load i32, i32* @Pmode, align 4
  %373 = load i64, i64* %12, align 8
  %374 = load i32, i32* %15, align 4
  %375 = call i64 @GEN_INT(i32 %374)
  %376 = call i64 @gen_rtx_PLUS(i32 %372, i64 %373, i64 %375)
  store i64 %376, i64* %12, align 8
  %377 = load i32, i32* @Pmode, align 4
  %378 = load i64, i64* %12, align 8
  %379 = call i64 @gen_rtx_CONST(i32 %377, i64 %378)
  store i64 %379, i64* %12, align 8
  %380 = load i64, i64* @const1_rtx, align 8
  store i64 %380, i64* %13, align 8
  br label %381

381:                                              ; preds = %368, %362
  %382 = load i64, i64* %14, align 8
  %383 = load i64, i64* %12, align 8
  %384 = call i32 @emit_move_insn(i64 %382, i64 %383)
  %385 = load i32, i32* @Pmode, align 4
  %386 = load i64, i64* %14, align 8
  %387 = load i64, i64* %13, align 8
  %388 = call i64 @gen_rtx_PLUS(i32 %385, i64 %386, i64 %387)
  store i64 %388, i64* %6, align 8
  %389 = load i64, i64* %4, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %381
  %392 = load i64, i64* %4, align 8
  %393 = load i64, i64* %6, align 8
  %394 = call i32 @s390_load_address(i64 %392, i64 %393)
  %395 = load i64, i64* %4, align 8
  store i64 %395, i64* %6, align 8
  br label %396

396:                                              ; preds = %391, %381
  br label %398

397:                                              ; preds = %349
  br label %398

398:                                              ; preds = %397, %396
  br label %448

399:                                              ; preds = %345, %341, %336, %333
  %400 = load i64, i64* %4, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %399
  %403 = load i64, i64* %4, align 8
  br label %407

404:                                              ; preds = %399
  %405 = load i32, i32* @Pmode, align 4
  %406 = call i64 @gen_reg_rtx(i32 %405)
  br label %407

407:                                              ; preds = %404, %402
  %408 = phi i64 [ %403, %402 ], [ %406, %404 ]
  store i64 %408, i64* %16, align 8
  %409 = load i64, i64* @reload_in_progress, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %407
  %412 = load i64, i64* @reload_completed, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %411, %407
  %415 = load i32*, i32** @regs_ever_live, align 8
  %416 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  store i32 1, i32* %417, align 4
  br label %418

418:                                              ; preds = %414, %411
  %419 = load i32, i32* @Pmode, align 4
  %420 = load i64, i64* %12, align 8
  %421 = call i32 @gen_rtvec(i32 1, i64 %420)
  %422 = call i64 @gen_rtx_UNSPEC(i32 %419, i32 %421, i32 130)
  store i64 %422, i64* %5, align 8
  %423 = load i32, i32* @Pmode, align 4
  %424 = load i64, i64* %5, align 8
  %425 = load i64, i64* %13, align 8
  %426 = call i64 @gen_rtx_PLUS(i32 %423, i64 %424, i64 %425)
  store i64 %426, i64* %5, align 8
  %427 = load i32, i32* @Pmode, align 4
  %428 = load i64, i64* %5, align 8
  %429 = call i64 @gen_rtx_CONST(i32 %427, i64 %428)
  store i64 %429, i64* %5, align 8
  %430 = load i32, i32* @Pmode, align 4
  %431 = load i64, i64* %5, align 8
  %432 = call i64 @force_const_mem(i32 %430, i64 %431)
  store i64 %432, i64* %5, align 8
  %433 = load i64, i64* %16, align 8
  %434 = load i64, i64* %5, align 8
  %435 = call i32 @emit_move_insn(i64 %433, i64 %434)
  %436 = load i32, i32* @Pmode, align 4
  %437 = load i64, i64* @pic_offset_table_rtx, align 8
  %438 = load i64, i64* %16, align 8
  %439 = call i64 @gen_rtx_PLUS(i32 %436, i64 %437, i64 %438)
  store i64 %439, i64* %6, align 8
  %440 = load i64, i64* %4, align 8
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %447

442:                                              ; preds = %418
  %443 = load i64, i64* %4, align 8
  %444 = load i64, i64* %6, align 8
  %445 = call i32 @s390_load_address(i64 %443, i64 %444)
  %446 = load i64, i64* %4, align 8
  store i64 %446, i64* %6, align 8
  br label %447

447:                                              ; preds = %442, %418
  br label %448

448:                                              ; preds = %447, %398
  br label %533

449:                                              ; preds = %328, %324, %319
  %450 = load i64, i64* %12, align 8
  %451 = call i64 @GET_CODE(i64 %450)
  %452 = load i64, i64* @UNSPEC, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %472

454:                                              ; preds = %449
  %455 = load i64, i64* %13, align 8
  %456 = call i64 @GET_CODE(i64 %455)
  %457 = load i64, i64* @CONST_INT, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %472

459:                                              ; preds = %454
  %460 = load i64, i64* %12, align 8
  %461 = call i32 @XINT(i64 %460, i32 1)
  %462 = icmp eq i32 %461, 130
  br i1 %462, label %463, label %472

463:                                              ; preds = %459
  %464 = load i64, i64* %12, align 8
  %465 = call i32 @XVECLEN(i64 %464, i32 0)
  %466 = icmp eq i32 %465, 1
  %467 = zext i1 %466 to i32
  %468 = call i32 @gcc_assert(i32 %467)
  %469 = load i32, i32* @Pmode, align 4
  %470 = load i64, i64* %3, align 8
  %471 = call i64 @force_const_mem(i32 %469, i64 %470)
  store i64 %471, i64* %6, align 8
  br label %532

472:                                              ; preds = %459, %454, %449
  %473 = load i64, i64* %5, align 8
  %474 = call i64 @XEXP(i64 %473, i32 0)
  %475 = load i64, i64* %4, align 8
  %476 = call i64 @legitimize_pic_address(i64 %474, i64 %475)
  store i64 %476, i64* %7, align 8
  %477 = load i64, i64* %5, align 8
  %478 = call i64 @XEXP(i64 %477, i32 1)
  %479 = load i64, i64* %7, align 8
  %480 = load i64, i64* %4, align 8
  %481 = icmp eq i64 %479, %480
  br i1 %481, label %482, label %484

482:                                              ; preds = %472
  %483 = load i64, i64* @NULL_RTX, align 8
  br label %486

484:                                              ; preds = %472
  %485 = load i64, i64* %4, align 8
  br label %486

486:                                              ; preds = %484, %482
  %487 = phi i64 [ %483, %482 ], [ %485, %484 ]
  %488 = call i64 @legitimize_pic_address(i64 %478, i64 %487)
  store i64 %488, i64* %6, align 8
  %489 = load i64, i64* %6, align 8
  %490 = call i64 @GET_CODE(i64 %489)
  %491 = load i64, i64* @CONST_INT, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %498

493:                                              ; preds = %486
  %494 = load i64, i64* %7, align 8
  %495 = load i64, i64* %6, align 8
  %496 = call i32 @INTVAL(i64 %495)
  %497 = call i64 @plus_constant(i64 %494, i32 %496)
  store i64 %497, i64* %6, align 8
  br label %521

498:                                              ; preds = %486
  %499 = load i64, i64* %6, align 8
  %500 = call i64 @GET_CODE(i64 %499)
  %501 = load i64, i64* @PLUS, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %516

503:                                              ; preds = %498
  %504 = load i64, i64* %6, align 8
  %505 = call i64 @XEXP(i64 %504, i32 1)
  %506 = call i64 @CONSTANT_P(i64 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %516

508:                                              ; preds = %503
  %509 = load i32, i32* @Pmode, align 4
  %510 = load i64, i64* %7, align 8
  %511 = load i64, i64* %6, align 8
  %512 = call i64 @XEXP(i64 %511, i32 0)
  %513 = call i64 @gen_rtx_PLUS(i32 %509, i64 %510, i64 %512)
  store i64 %513, i64* %7, align 8
  %514 = load i64, i64* %6, align 8
  %515 = call i64 @XEXP(i64 %514, i32 1)
  store i64 %515, i64* %6, align 8
  br label %516

516:                                              ; preds = %508, %503, %498
  %517 = load i32, i32* @Pmode, align 4
  %518 = load i64, i64* %7, align 8
  %519 = load i64, i64* %6, align 8
  %520 = call i64 @gen_rtx_PLUS(i32 %517, i64 %518, i64 %519)
  store i64 %520, i64* %6, align 8
  br label %521

521:                                              ; preds = %516, %493
  %522 = load i64, i64* %6, align 8
  %523 = call i64 @GET_CODE(i64 %522)
  %524 = load i64, i64* @CONST, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %529

526:                                              ; preds = %521
  %527 = load i64, i64* %6, align 8
  %528 = call i64 @XEXP(i64 %527, i32 0)
  store i64 %528, i64* %6, align 8
  br label %529

529:                                              ; preds = %526, %521
  %530 = load i64, i64* %6, align 8
  %531 = call i64 @force_operand(i64 %530, i32 0)
  store i64 %531, i64* %6, align 8
  br label %532

532:                                              ; preds = %529, %463
  br label %533

533:                                              ; preds = %532, %448
  br label %534

534:                                              ; preds = %533, %293
  br label %535

535:                                              ; preds = %534, %197
  br label %536

536:                                              ; preds = %535, %92
  %537 = load i64, i64* %6, align 8
  ret i64 %537
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @TLS_SYMBOLIC_CONST(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SYMBOL_REF_LOCAL_P(i64) #1

declare dso_local i64 @larl_operand(i64, i32) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64) #1

declare dso_local i64 @gen_rtx_CONST(i32, i64) #1

declare dso_local i64 @force_const_mem(i32, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i32 @s390_load_address(i64, i64) #1

declare dso_local i64 @gen_const_mem(i32, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @DISP_IN_RANGE(i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @plus_constant(i64, i32) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @force_operand(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
