; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_strlensi_unroll_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_strlensi_unroll_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@const2_rtx = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i32 0, align 4
@TARGET_CMOVE = common dso_local global i64 0, align 8
@CCNOmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i32 0, align 4
@CCmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @ix86_expand_strlensi_unroll_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ix86_expand_strlensi_unroll_1(i32 %0, i32 %1, i32 %2) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* @NULL_RTX, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @NULL_RTX, align 4
  store i32 %23, i32* %10, align 4
  %24 = call i32 (...) @gen_label_rtx()
  store i32 %24, i32* %11, align 4
  %25 = call i32 (...) @gen_label_rtx()
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @SImode, align 4
  %27 = call i32 @gen_reg_rtx(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @SImode, align 4
  %29 = call i32 @gen_reg_rtx(i32 %28)
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @CONST_INT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @INTVAL(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %166

40:                                               ; preds = %37
  %41 = load i32, i32* @Pmode, align 4
  %42 = call i32 @gen_reg_rtx(i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @emit_move_insn(i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 2
  br i1 %47, label %48, label %76

48:                                               ; preds = %40
  %49 = call i32 (...) @gen_label_rtx()
  store i32 %49, i32* %10, align 4
  %50 = call i32 (...) @gen_label_rtx()
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @Pmode, align 4
  %52 = load i32, i32* @and_optab, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @GEN_INT(i32 3)
  %55 = load i32, i32* @NULL_RTX, align 4
  %56 = load i32, i32* @OPTAB_WIDEN, align 4
  %57 = call i32 @expand_binop(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @const0_rtx, align 4
  %60 = load i32, i32* @EQ, align 4
  %61 = load i32, i32* @Pmode, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @emit_cmp_and_jump_insns(i32 %58, i32 %59, i32 %60, i32* null, i32 %61, i32 1, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @const2_rtx, align 4
  %66 = load i32, i32* @EQ, align 4
  %67 = load i32, i32* @Pmode, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @emit_cmp_and_jump_insns(i32 %64, i32 %65, i32 %66, i32* null, i32 %67, i32 1, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @const2_rtx, align 4
  %72 = load i32, i32* @GTU, align 4
  %73 = load i32, i32* @Pmode, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @emit_cmp_and_jump_insns(i32 %70, i32 %71, i32 %72, i32* null, i32 %73, i32 1, i32 %74)
  br label %90

76:                                               ; preds = %40
  %77 = load i32, i32* @Pmode, align 4
  %78 = load i32, i32* @and_optab, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @const2_rtx, align 4
  %81 = load i32, i32* @NULL_RTX, align 4
  %82 = load i32, i32* @OPTAB_WIDEN, align 4
  %83 = call i32 @expand_binop(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 0, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @const0_rtx, align 4
  %86 = load i32, i32* @EQ, align 4
  %87 = load i32, i32* @Pmode, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @emit_cmp_and_jump_insns(i32 %84, i32 %85, i32 %86, i32* null, i32 %87, i32 1, i32 %88)
  br label %90

90:                                               ; preds = %76, %48
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @QImode, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @change_address(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @const0_rtx, align 4
  %97 = load i32, i32* @EQ, align 4
  %98 = load i32, i32* @QImode, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @emit_cmp_and_jump_insns(i32 %95, i32 %96, i32 %97, i32* null, i32 %98, i32 1, i32 %99)
  %101 = load i64, i64* @TARGET_64BIT, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %90
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @const1_rtx, align 4
  %107 = call i32 @gen_adddi3(i32 %104, i32 %105, i32 %106)
  %108 = call i32 @emit_insn(i32 %107)
  br label %115

109:                                              ; preds = %90
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @const1_rtx, align 4
  %113 = call i32 @gen_addsi3(i32 %110, i32 %111, i32 %112)
  %114 = call i32 @emit_insn(i32 %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @emit_label(i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @const0_rtx, align 4
  %123 = load i32, i32* @EQ, align 4
  %124 = load i32, i32* @QImode, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @emit_cmp_and_jump_insns(i32 %121, i32 %122, i32 %123, i32* null, i32 %124, i32 1, i32 %125)
  %127 = load i64, i64* @TARGET_64BIT, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @const1_rtx, align 4
  %133 = call i32 @gen_adddi3(i32 %130, i32 %131, i32 %132)
  %134 = call i32 @emit_insn(i32 %133)
  br label %141

135:                                              ; preds = %118
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @const1_rtx, align 4
  %139 = call i32 @gen_addsi3(i32 %136, i32 %137, i32 %138)
  %140 = call i32 @emit_insn(i32 %139)
  br label %141

141:                                              ; preds = %135, %129
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @emit_label(i32 %142)
  br label %144

144:                                              ; preds = %141, %115
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @const0_rtx, align 4
  %147 = load i32, i32* @EQ, align 4
  %148 = load i32, i32* @QImode, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @emit_cmp_and_jump_insns(i32 %145, i32 %146, i32 %147, i32* null, i32 %148, i32 1, i32 %149)
  %151 = load i64, i64* @TARGET_64BIT, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @const1_rtx, align 4
  %157 = call i32 @gen_adddi3(i32 %154, i32 %155, i32 %156)
  %158 = call i32 @emit_insn(i32 %157)
  br label %165

159:                                              ; preds = %144
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @const1_rtx, align 4
  %163 = call i32 @gen_addsi3(i32 %160, i32 %161, i32 %162)
  %164 = call i32 @emit_insn(i32 %163)
  br label %165

165:                                              ; preds = %159, %153
  br label %166

166:                                              ; preds = %165, %37
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @emit_label(i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @SImode, align 4
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @change_address(i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @emit_move_insn(i32 %173, i32 %174)
  %176 = load i64, i64* @TARGET_64BIT, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %166
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @GEN_INT(i32 4)
  %182 = call i32 @gen_adddi3(i32 %179, i32 %180, i32 %181)
  %183 = call i32 @emit_insn(i32 %182)
  br label %190

184:                                              ; preds = %166
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @GEN_INT(i32 4)
  %188 = call i32 @gen_addsi3(i32 %185, i32 %186, i32 %187)
  %189 = call i32 @emit_insn(i32 %188)
  br label %190

190:                                              ; preds = %184, %178
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @GEN_INT(i32 -16843009)
  %194 = call i32 @gen_addsi3(i32 %191, i32 %192, i32 %193)
  %195 = call i32 @emit_insn(i32 %194)
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @gen_one_cmplsi2(i32 %196, i32 %197)
  %199 = call i32 @emit_insn(i32 %198)
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @gen_andsi3(i32 %200, i32 %201, i32 %202)
  %204 = call i32 @emit_insn(i32 %203)
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @SImode, align 4
  %208 = call i32 @gen_int_mode(i32 -2139062144, i32 %207)
  %209 = call i32 @gen_andsi3(i32 %205, i32 %206, i32 %208)
  %210 = call i32 @emit_insn(i32 %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @const0_rtx, align 4
  %213 = load i32, i32* @EQ, align 4
  %214 = load i32, i32* @SImode, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @emit_cmp_and_jump_insns(i32 %211, i32 %212, i32 %213, i32* null, i32 %214, i32 1, i32 %215)
  %217 = load i64, i64* @TARGET_CMOVE, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %276

219:                                              ; preds = %190
  %220 = load i32, i32* @SImode, align 4
  %221 = call i32 @gen_reg_rtx(i32 %220)
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* @Pmode, align 4
  %223 = call i32 @gen_reg_rtx(i32 %222)
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @emit_move_insn(i32 %224, i32 %225)
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @GEN_INT(i32 16)
  %230 = call i32 @gen_lshrsi3(i32 %227, i32 %228, i32 %229)
  %231 = call i32 @emit_insn(i32 %230)
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @GEN_INT(i32 32896)
  %234 = call i32 @gen_testsi_ccno_1(i32 %232, i32 %233)
  %235 = call i32 @emit_insn(i32 %234)
  %236 = load i32, i32* @CCNOmode, align 4
  %237 = load i32, i32* @FLAGS_REG, align 4
  %238 = call i32 @gen_rtx_REG(i32 %236, i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* @VOIDmode, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @const0_rtx, align 4
  %242 = call i32 @gen_rtx_EQ(i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* @VOIDmode, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @SImode, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = call i32 @gen_rtx_SET(i32 %243, i32 %244, i32 %249)
  %251 = call i32 @emit_insn(i32 %250)
  %252 = load i32, i32* @SImode, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* @Pmode, align 4
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* @const2_rtx, align 4
  %257 = call i32 @gen_rtx_PLUS(i32 %254, i32 %255, i32 %256)
  %258 = call i32 @gen_rtx_SET(i32 %252, i32 %253, i32 %257)
  %259 = call i32 @emit_insn(i32 %258)
  %260 = load i32, i32* @CCNOmode, align 4
  %261 = load i32, i32* @FLAGS_REG, align 4
  %262 = call i32 @gen_rtx_REG(i32 %260, i32 %261)
  store i32 %262, i32* %8, align 4
  %263 = load i32, i32* @VOIDmode, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @const0_rtx, align 4
  %266 = call i32 @gen_rtx_EQ(i32 %263, i32 %264, i32 %265)
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* @VOIDmode, align 4
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @Pmode, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %4, align 4
  %273 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = call i32 @gen_rtx_SET(i32 %267, i32 %268, i32 %273)
  %275 = call i32 @emit_insn(i32 %274)
  br label %324

276:                                              ; preds = %190
  %277 = call i32 (...) @gen_label_rtx()
  store i32 %277, i32* %20, align 4
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @GEN_INT(i32 32896)
  %280 = call i32 @gen_testsi_ccno_1(i32 %278, i32 %279)
  %281 = call i32 @emit_insn(i32 %280)
  %282 = load i32, i32* @CCNOmode, align 4
  %283 = load i32, i32* @FLAGS_REG, align 4
  %284 = call i32 @gen_rtx_REG(i32 %282, i32 %283)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* @VOIDmode, align 4
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* @const0_rtx, align 4
  %288 = call i32 @gen_rtx_NE(i32 %285, i32 %286, i32 %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* @VOIDmode, align 4
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @VOIDmode, align 4
  %292 = load i32, i32* %20, align 4
  %293 = call i32 @gen_rtx_LABEL_REF(i32 %291, i32 %292)
  %294 = load i32, i32* @pc_rtx, align 4
  %295 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %289, i32 %290, i32 %293, i32 %294)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* @VOIDmode, align 4
  %297 = load i32, i32* @pc_rtx, align 4
  %298 = load i32, i32* %8, align 4
  %299 = call i32 @gen_rtx_SET(i32 %296, i32 %297, i32 %298)
  %300 = call i32 @emit_jump_insn(i32 %299)
  store i32 %300, i32* %8, align 4
  %301 = load i32, i32* %20, align 4
  store i32 %301, i32* %21, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %14, align 4
  %304 = call i32 @GEN_INT(i32 16)
  %305 = call i32 @gen_lshrsi3(i32 %302, i32 %303, i32 %304)
  %306 = call i32 @emit_insn(i32 %305)
  %307 = load i64, i64* @TARGET_64BIT, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %276
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @const2_rtx, align 4
  %313 = call i32 @gen_adddi3(i32 %310, i32 %311, i32 %312)
  %314 = call i32 @emit_insn(i32 %313)
  br label %321

315:                                              ; preds = %276
  %316 = load i32, i32* %4, align 4
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* @const2_rtx, align 4
  %319 = call i32 @gen_addsi3(i32 %316, i32 %317, i32 %318)
  %320 = call i32 @emit_insn(i32 %319)
  br label %321

321:                                              ; preds = %315, %309
  %322 = load i32, i32* %20, align 4
  %323 = call i32 @emit_label(i32 %322)
  br label %324

324:                                              ; preds = %321, %219
  %325 = load i32, i32* @QImode, align 4
  %326 = load i32, i32* %14, align 4
  %327 = call i32 @gen_lowpart(i32 %325, i32 %326)
  store i32 %327, i32* %14, align 4
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* %14, align 4
  %331 = call i32 @gen_addqi3_cc(i32 %328, i32 %329, i32 %330)
  %332 = call i32 @emit_insn(i32 %331)
  %333 = load i32, i32* @Pmode, align 4
  %334 = load i32, i32* @CCmode, align 4
  %335 = call i32 @gen_rtx_REG(i32 %334, i32 17)
  %336 = load i32, i32* @const0_rtx, align 4
  %337 = call i32 @gen_rtx_LTU(i32 %333, i32 %335, i32 %336)
  store i32 %337, i32* %16, align 4
  %338 = load i64, i64* @TARGET_64BIT, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %324
  %341 = load i32, i32* %4, align 4
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @GEN_INT(i32 3)
  %344 = load i32, i32* %16, align 4
  %345 = call i32 @gen_subdi3_carry_rex64(i32 %341, i32 %342, i32 %343, i32 %344)
  %346 = call i32 @emit_insn(i32 %345)
  br label %354

347:                                              ; preds = %324
  %348 = load i32, i32* %4, align 4
  %349 = load i32, i32* %4, align 4
  %350 = call i32 @GEN_INT(i32 3)
  %351 = load i32, i32* %16, align 4
  %352 = call i32 @gen_subsi3_carry(i32 %348, i32 %349, i32 %350, i32 %351)
  %353 = call i32 @emit_insn(i32 %352)
  br label %354

354:                                              ; preds = %347, %340
  %355 = load i32, i32* %12, align 4
  %356 = call i32 @emit_label(i32 %355)
  ret void
}

declare dso_local i32 @gen_label_rtx(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @expand_binop(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @change_address(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_adddi3(i32, i32, i32) #1

declare dso_local i32 @gen_addsi3(i32, i32, i32) #1

declare dso_local i32 @emit_label(i32) #1

declare dso_local i32 @gen_one_cmplsi2(i32, i32) #1

declare dso_local i32 @gen_andsi3(i32, i32, i32) #1

declare dso_local i32 @gen_int_mode(i32, i32) #1

declare dso_local i32 @gen_lshrsi3(i32, i32, i32) #1

declare dso_local i32 @gen_testsi_ccno_1(i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_EQ(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_IF_THEN_ELSE(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_NE(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gen_addqi3_cc(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LTU(i32, i32, i32) #1

declare dso_local i32 @gen_subdi3_carry_rex64(i32, i32, i32, i32) #1

declare dso_local i32 @gen_subsi3_carry(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
