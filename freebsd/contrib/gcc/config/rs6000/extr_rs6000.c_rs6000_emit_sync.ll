; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@NOT = common dso_local global i64 0, align 8
@QImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@ior_optab = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@UNSPEC_SYNC_OP = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_sync(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @GET_MODE_MASK(i32 %36)
  store i32 %37, i32* %25, align 4
  %38 = load i64, i64* @NULL_RTX, align 8
  store i64 %38, i64* %26, align 8
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %7
  %42 = call i32 (...) @gen_memory_barrier()
  %43 = call i32 @emit_insn(i32 %42)
  br label %44

44:                                               ; preds = %41, %7
  %45 = load i64, i64* %10, align 8
  %46 = call i64 @GET_CODE(i64 %45)
  %47 = load i64, i64* @NOT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @XEXP(i64 %50, i32 0)
  store i64 %51, i64* %23, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %23, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @QImode, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @HImode, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %266

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %23, align 8
  %64 = call i32 @MEM_ALIGN(i64 %63)
  %65 = icmp sge i32 %64, 32
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  store i32 0, i32* %29, align 4
  %67 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @SImode, align 4
  %71 = call i32 @GET_MODE_BITSIZE(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @GET_MODE_BITSIZE(i32 %72)
  %74 = sub nsw i32 %71, %73
  store i32 %74, i32* %29, align 4
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32, i32* %29, align 4
  %77 = call i64 @GEN_INT(i32 %76)
  store i64 %77, i64* %26, align 8
  br label %130

78:                                               ; preds = %62
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @QImode, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 24, i32 16
  store i32 %83, i32* %32, align 4
  %84 = load i32, i32* @SImode, align 4
  %85 = load i32, i32* @SImode, align 4
  %86 = load i64, i64* %23, align 8
  %87 = call i64 @XEXP(i64 %86, i32 0)
  %88 = call i32 @gen_lowpart_common(i32 %85, i64 %87)
  %89 = call i64 @force_reg(i32 %84, i32 %88)
  store i64 %89, i64* %30, align 8
  %90 = load i32, i32* @SImode, align 4
  %91 = call i64 @gen_reg_rtx(i32 %90)
  store i64 %91, i64* %26, align 8
  %92 = load i64, i64* %26, align 8
  %93 = load i64, i64* %30, align 8
  %94 = call i64 @GEN_INT(i32 3)
  %95 = load i32, i32* %32, align 4
  %96 = call i64 @GEN_INT(i32 %95)
  %97 = call i32 @gen_rlwinm(i64 %92, i64 %93, i64 %94, i64 %96)
  %98 = call i32 @emit_insn(i32 %97)
  %99 = load i64, i64* %26, align 8
  %100 = load i64, i64* %26, align 8
  %101 = load i32, i32* %32, align 4
  %102 = call i64 @GEN_INT(i32 %101)
  %103 = call i32 @gen_xorsi3(i64 %99, i64 %100, i64 %102)
  %104 = call i32 @emit_insn(i32 %103)
  %105 = load i32, i32* @Pmode, align 4
  %106 = load i32, i32* @and_optab, align 4
  %107 = load i64, i64* %23, align 8
  %108 = call i64 @XEXP(i64 %107, i32 0)
  %109 = call i64 @GEN_INT(i32 -4)
  %110 = load i64, i64* @NULL_RTX, align 8
  %111 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %112 = call i64 @expand_binop(i32 %105, i32 %106, i64 %108, i64 %109, i64 %110, i32 1, i32 %111)
  store i64 %112, i64* %31, align 8
  %113 = load i64, i64* %23, align 8
  %114 = load i32, i32* @SImode, align 4
  %115 = load i64, i64* %31, align 8
  %116 = call i64 @change_address(i64 %113, i32 %114, i64 %115)
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %23, align 8
  %118 = call i32 @set_mem_align(i64 %117, i32 32)
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @GET_CODE(i64 %119)
  %121 = load i64, i64* @NOT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %78
  %124 = load i32, i32* @SImode, align 4
  %125 = load i64, i64* %23, align 8
  %126 = call i64 @gen_rtx_NOT(i32 %124, i64 %125)
  store i64 %126, i64* %10, align 8
  br label %129

127:                                              ; preds = %78
  %128 = load i64, i64* %23, align 8
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %75
  %131 = load i64, i64* %11, align 8
  %132 = call i64 @GET_CODE(i64 %131)
  %133 = load i64, i64* @NOT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32, i32* @SImode, align 4
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @XEXP(i64 %137, i32 0)
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @lowpart_subreg(i32 %136, i64 %138, i32 %139)
  store i64 %140, i64* %28, align 8
  %141 = load i32, i32* @SImode, align 4
  %142 = load i64, i64* %28, align 8
  %143 = call i64 @gen_rtx_NOT(i32 %141, i64 %142)
  store i64 %143, i64* %28, align 8
  br label %149

144:                                              ; preds = %130
  %145 = load i32, i32* @SImode, align 4
  %146 = load i64, i64* %11, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @lowpart_subreg(i32 %145, i64 %146, i32 %147)
  store i64 %148, i64* %28, align 8
  br label %149

149:                                              ; preds = %144, %135
  %150 = load i32, i32* %8, align 4
  switch i32 %150, label %231 [
    i32 131, label %151
    i32 128, label %151
    i32 132, label %165
    i32 129, label %180
    i32 130, label %180
  ]

151:                                              ; preds = %149, %149
  %152 = load i32, i32* @SImode, align 4
  %153 = load i32, i32* @and_optab, align 4
  %154 = load i64, i64* %28, align 8
  %155 = load i32, i32* %25, align 4
  %156 = call i64 @GEN_INT(i32 %155)
  %157 = load i64, i64* @NULL_RTX, align 8
  %158 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %159 = call i64 @expand_binop(i32 %152, i32 %153, i64 %154, i64 %156, i64 %157, i32 1, i32 %158)
  store i64 %159, i64* %27, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %27, align 8
  %162 = load i64, i64* %26, align 8
  %163 = call i32 @gen_ashlsi3(i64 %160, i64 %161, i64 %162)
  %164 = call i32 @emit_insn(i32 %163)
  br label %233

165:                                              ; preds = %149
  %166 = load i32, i32* @SImode, align 4
  %167 = load i32, i32* @ior_optab, align 4
  %168 = load i64, i64* %28, align 8
  %169 = load i32, i32* %25, align 4
  %170 = xor i32 %169, -1
  %171 = call i64 @GEN_INT(i32 %170)
  %172 = load i64, i64* @NULL_RTX, align 8
  %173 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %174 = call i64 @expand_binop(i32 %166, i32 %167, i64 %168, i64 %171, i64 %172, i32 1, i32 %173)
  store i64 %174, i64* %27, align 8
  %175 = load i64, i64* %27, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %26, align 8
  %178 = call i32 @gen_rotlsi3(i64 %175, i64 %176, i64 %177)
  %179 = call i32 @emit_insn(i32 %178)
  br label %233

180:                                              ; preds = %149, %149
  %181 = load i32, i32* @SImode, align 4
  %182 = load i32, i32* @and_optab, align 4
  %183 = load i64, i64* %28, align 8
  %184 = load i32, i32* %25, align 4
  %185 = call i64 @GEN_INT(i32 %184)
  %186 = load i64, i64* @NULL_RTX, align 8
  %187 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %188 = call i64 @expand_binop(i32 %181, i32 %182, i64 %183, i64 %185, i64 %186, i32 1, i32 %187)
  store i64 %188, i64* %27, align 8
  %189 = load i64, i64* %27, align 8
  %190 = load i64, i64* %27, align 8
  %191 = load i64, i64* %26, align 8
  %192 = call i32 @gen_ashlsi3(i64 %189, i64 %190, i64 %191)
  %193 = call i32 @emit_insn(i32 %192)
  %194 = load i32, i32* @SImode, align 4
  %195 = call i64 @gen_reg_rtx(i32 %194)
  store i64 %195, i64* %33, align 8
  %196 = load i64, i64* %33, align 8
  %197 = load i32, i32* %25, align 4
  %198 = call i64 @GEN_INT(i32 %197)
  %199 = call i32 @emit_move_insn(i64 %196, i64 %198)
  %200 = load i64, i64* %33, align 8
  %201 = load i64, i64* %33, align 8
  %202 = load i64, i64* %26, align 8
  %203 = call i32 @gen_ashlsi3(i64 %200, i64 %201, i64 %202)
  %204 = call i32 @emit_insn(i32 %203)
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 129
  br i1 %206, label %207, label %212

207:                                              ; preds = %180
  %208 = load i32, i32* @SImode, align 4
  %209 = load i64, i64* %10, align 8
  %210 = load i64, i64* %27, align 8
  %211 = call i64 @gen_rtx_PLUS(i32 %208, i64 %209, i64 %210)
  store i64 %211, i64* %27, align 8
  br label %217

212:                                              ; preds = %180
  %213 = load i32, i32* @SImode, align 4
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* %27, align 8
  %216 = call i64 @gen_rtx_MINUS(i32 %213, i64 %214, i64 %215)
  store i64 %216, i64* %27, align 8
  br label %217

217:                                              ; preds = %212, %207
  %218 = load i32, i32* @SImode, align 4
  %219 = load i64, i64* %27, align 8
  %220 = load i64, i64* %33, align 8
  %221 = call i64 @gen_rtx_AND(i32 %218, i64 %219, i64 %220)
  store i64 %221, i64* %27, align 8
  %222 = load i32, i32* @SImode, align 4
  %223 = load i64, i64* %27, align 8
  %224 = load i32, i32* @SImode, align 4
  %225 = load i32, i32* @SImode, align 4
  %226 = load i64, i64* %33, align 8
  %227 = call i64 @gen_rtx_NOT(i32 %225, i64 %226)
  %228 = load i64, i64* %10, align 8
  %229 = call i64 @gen_rtx_AND(i32 %224, i64 %227, i64 %228)
  %230 = call i64 @gen_rtx_IOR(i32 %222, i64 %223, i64 %229)
  store i64 %230, i64* %27, align 8
  br label %233

231:                                              ; preds = %149
  %232 = call i32 (...) @gcc_unreachable()
  br label %233

233:                                              ; preds = %231, %217, %165, %151
  %234 = load i64, i64* %10, align 8
  %235 = call i64 @GET_CODE(i64 %234)
  %236 = load i64, i64* @NOT, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %259

238:                                              ; preds = %233
  %239 = load i32, i32* @SImode, align 4
  %240 = call i64 @gen_reg_rtx(i32 %239)
  store i64 %240, i64* %34, align 8
  %241 = load i64, i64* %34, align 8
  %242 = load i32, i32* %25, align 4
  %243 = call i64 @GEN_INT(i32 %242)
  %244 = call i32 @emit_move_insn(i64 %241, i64 %243)
  %245 = load i64, i64* %34, align 8
  %246 = load i64, i64* %34, align 8
  %247 = load i64, i64* %26, align 8
  %248 = call i32 @gen_ashlsi3(i64 %245, i64 %246, i64 %247)
  %249 = call i32 @emit_insn(i32 %248)
  %250 = load i32, i32* @SImode, align 4
  %251 = load i64, i64* %23, align 8
  %252 = load i64, i64* %34, align 8
  %253 = call i64 @gen_rtx_XOR(i32 %250, i64 %251, i64 %252)
  store i64 %253, i64* %35, align 8
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* @SImode, align 4
  %256 = load i64, i64* %35, align 8
  %257 = load i64, i64* %27, align 8
  %258 = call i64 @simplify_gen_binary(i32 %254, i32 %255, i64 %256, i64 %257)
  store i64 %258, i64* %27, align 8
  br label %259

259:                                              ; preds = %238, %233
  %260 = load i64, i64* %27, align 8
  store i64 %260, i64* %11, align 8
  %261 = load i32, i32* @SImode, align 4
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i64 @gen_reg_rtx(i32 %262)
  store i64 %263, i64* %21, align 8
  %264 = load i32, i32* %15, align 4
  %265 = call i64 @gen_reg_rtx(i32 %264)
  store i64 %265, i64* %22, align 8
  br label %284

266:                                              ; preds = %58
  %267 = load i32, i32* %9, align 4
  store i32 %267, i32* %15, align 4
  %268 = load i64, i64* %12, align 8
  store i64 %268, i64* %21, align 8
  %269 = load i64, i64* %13, align 8
  store i64 %269, i64* %22, align 8
  %270 = load i64, i64* %21, align 8
  %271 = load i64, i64* @NULL_RTX, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %266
  %274 = load i32, i32* %15, align 4
  %275 = call i64 @gen_reg_rtx(i32 %274)
  store i64 %275, i64* %21, align 8
  br label %276

276:                                              ; preds = %273, %266
  %277 = load i64, i64* %22, align 8
  %278 = load i64, i64* @NULL_RTX, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load i32, i32* %15, align 4
  %282 = call i64 @gen_reg_rtx(i32 %281)
  store i64 %282, i64* %22, align 8
  br label %283

283:                                              ; preds = %280, %276
  br label %284

284:                                              ; preds = %283, %259
  %285 = load i32, i32* %8, align 4
  %286 = icmp eq i32 %285, 129
  br i1 %286, label %295, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %8, align 4
  %289 = icmp eq i32 %288, 130
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i64, i64* %10, align 8
  %292 = call i64 @GET_CODE(i64 %291)
  %293 = load i64, i64* @NOT, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %290, %287, %284
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = load i64, i64* %11, align 8
  store i64 %300, i64* %16, align 8
  br label %324

301:                                              ; preds = %295, %290
  %302 = load i64, i64* %11, align 8
  %303 = call i64 @GET_CODE(i64 %302)
  %304 = load i64, i64* @NOT, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %317

306:                                              ; preds = %301
  %307 = load i64, i64* %10, align 8
  %308 = call i64 @GET_CODE(i64 %307)
  %309 = load i64, i64* @NOT, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %306
  %312 = load i32, i32* %8, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load i64, i64* %11, align 8
  %315 = load i64, i64* %10, align 8
  %316 = call i64 @gen_rtx_fmt_ee(i32 %312, i32 %313, i64 %314, i64 %315)
  store i64 %316, i64* %16, align 8
  br label %323

317:                                              ; preds = %306, %301
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* %15, align 4
  %320 = load i64, i64* %10, align 8
  %321 = load i64, i64* %11, align 8
  %322 = call i64 @gen_rtx_fmt_ee(i32 %318, i32 %319, i64 %320, i64 %321)
  store i64 %322, i64* %16, align 8
  br label %323

323:                                              ; preds = %317, %311
  br label %324

324:                                              ; preds = %323, %299
  %325 = load i32, i32* @VOIDmode, align 4
  %326 = load i64, i64* %22, align 8
  %327 = load i64, i64* %16, align 8
  %328 = call i64 @gen_rtx_SET(i32 %325, i64 %326, i64 %327)
  store i64 %328, i64* %18, align 8
  %329 = load i32, i32* @VOIDmode, align 4
  %330 = load i64, i64* %21, align 8
  %331 = load i64, i64* %23, align 8
  %332 = call i64 @gen_rtx_SET(i32 %329, i64 %330, i64 %331)
  store i64 %332, i64* %17, align 8
  %333 = load i32, i32* @VOIDmode, align 4
  %334 = load i64, i64* %23, align 8
  %335 = load i32, i32* %15, align 4
  %336 = load i64, i64* %16, align 8
  %337 = call i32 (i32, i64, ...) @gen_rtvec(i32 1, i64 %336)
  %338 = load i32, i32* @UNSPEC_SYNC_OP, align 4
  %339 = call i64 @gen_rtx_UNSPEC(i32 %335, i32 %337, i32 %338)
  %340 = call i64 @gen_rtx_SET(i32 %333, i64 %334, i64 %339)
  store i64 %340, i64* %19, align 8
  %341 = load i32, i32* @VOIDmode, align 4
  %342 = load i32, i32* @CCmode, align 4
  %343 = call i32 @gen_rtx_SCRATCH(i32 %342)
  %344 = call i64 @gen_rtx_CLOBBER(i32 %341, i32 %343)
  store i64 %344, i64* %20, align 8
  %345 = load i32, i32* %8, align 4
  %346 = icmp eq i32 %345, 129
  br i1 %346, label %350, label %347

347:                                              ; preds = %324
  %348 = load i32, i32* %8, align 4
  %349 = icmp eq i32 %348, 130
  br i1 %349, label %350, label %364

350:                                              ; preds = %347, %324
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* %9, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %350
  %355 = load i64, i64* %18, align 8
  %356 = load i64, i64* %17, align 8
  %357 = load i64, i64* %19, align 8
  %358 = load i64, i64* %20, align 8
  %359 = load i32, i32* @VOIDmode, align 4
  %360 = load i32, i32* @SImode, align 4
  %361 = call i32 @gen_rtx_SCRATCH(i32 %360)
  %362 = call i64 @gen_rtx_CLOBBER(i32 %359, i32 %361)
  %363 = call i32 (i32, i64, ...) @gen_rtvec(i32 5, i64 %355, i64 %356, i64 %357, i64 %358, i64 %362)
  store i32 %363, i32* %24, align 4
  br label %370

364:                                              ; preds = %350, %347
  %365 = load i64, i64* %18, align 8
  %366 = load i64, i64* %17, align 8
  %367 = load i64, i64* %19, align 8
  %368 = load i64, i64* %20, align 8
  %369 = call i32 (i32, i64, ...) @gen_rtvec(i32 4, i64 %365, i64 %366, i64 %367, i64 %368)
  store i32 %369, i32* %24, align 4
  br label %370

370:                                              ; preds = %364, %354
  %371 = load i32, i32* @VOIDmode, align 4
  %372 = load i32, i32* %24, align 4
  %373 = call i32 @gen_rtx_PARALLEL(i32 %371, i32 %372)
  %374 = call i32 @emit_insn(i32 %373)
  %375 = load i32, i32* %15, align 4
  %376 = load i32, i32* %9, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %390

378:                                              ; preds = %370
  %379 = load i64, i64* %12, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %378
  %382 = load i64, i64* %21, align 8
  %383 = load i64, i64* %21, align 8
  %384 = load i64, i64* %26, align 8
  %385 = call i32 @gen_lshrsi3(i64 %382, i64 %383, i64 %384)
  %386 = call i32 @emit_insn(i32 %385)
  %387 = load i64, i64* %12, align 8
  %388 = load i64, i64* %21, align 8
  %389 = call i32 @convert_move(i64 %387, i64 %388, i32 1)
  br label %390

390:                                              ; preds = %381, %378, %370
  %391 = load i32, i32* %15, align 4
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %406

394:                                              ; preds = %390
  %395 = load i64, i64* %13, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %394
  %398 = load i64, i64* %22, align 8
  %399 = load i64, i64* %22, align 8
  %400 = load i64, i64* %26, align 8
  %401 = call i32 @gen_lshrsi3(i64 %398, i64 %399, i64 %400)
  %402 = call i32 @emit_insn(i32 %401)
  %403 = load i64, i64* %13, align 8
  %404 = load i64, i64* %22, align 8
  %405 = call i32 @convert_move(i64 %403, i64 %404, i32 1)
  br label %406

406:                                              ; preds = %397, %394, %390
  %407 = load i32, i32* %14, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = call i32 (...) @gen_isync()
  %411 = call i32 @emit_insn(i32 %410)
  br label %412

412:                                              ; preds = %409, %406
  ret void
}

declare dso_local i32 @GET_MODE_MASK(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_memory_barrier(...) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @MEM_ALIGN(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @GEN_INT(i32) #1

declare dso_local i64 @force_reg(i32, i32) #1

declare dso_local i32 @gen_lowpart_common(i32, i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @gen_rlwinm(i64, i64, i64, i64) #1

declare dso_local i32 @gen_xorsi3(i64, i64, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @change_address(i64, i32, i64) #1

declare dso_local i32 @set_mem_align(i64, i32) #1

declare dso_local i64 @gen_rtx_NOT(i32, i64) #1

declare dso_local i64 @lowpart_subreg(i32, i64, i32) #1

declare dso_local i32 @gen_ashlsi3(i64, i64, i64) #1

declare dso_local i32 @gen_rotlsi3(i64, i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @gen_rtx_PLUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_MINUS(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_AND(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_IOR(i32, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i64 @gen_rtx_XOR(i32, i64, i64) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @gen_rtx_fmt_ee(i32, i32, i64, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_UNSPEC(i32, i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i64, ...) #1

declare dso_local i64 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @gen_rtx_SCRATCH(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_lshrsi3(i64, i64, i64) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @gen_isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
