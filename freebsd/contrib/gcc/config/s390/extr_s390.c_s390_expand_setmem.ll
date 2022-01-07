; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_setmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_setmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@QImode = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i64 0, align 8
@TARGET_MVCLE = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@EQ = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@lshr_optab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_expand_setmem(i64 %0, i64 %1, i64 %2) #0 {
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
  %17 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @GET_CODE(i64 %18)
  %20 = load i64, i64* @CONST_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @INTVAL(i64 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %290

27:                                               ; preds = %22, %3
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @CONST_INT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @GET_MODE(i64 %33)
  %35 = load i64, i64* @QImode, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @GET_CODE(i64 %41)
  %43 = load i64, i64* @CONST_INT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @INTVAL(i64 %46)
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @INTVAL(i64 %50)
  %52 = icmp sle i32 %51, 257
  br i1 %52, label %53, label %96

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @const0_rtx, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @INTVAL(i64 %58)
  %60 = icmp sle i32 %59, 256
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @INTVAL(i64 %63)
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @GEN_INT(i32 %65)
  %67 = call i32 @gen_clrmem_short(i64 %62, i32 %66)
  %68 = call i32 @emit_insn(i32 %67)
  br label %95

69:                                               ; preds = %57, %53
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @QImode, align 8
  %72 = call i64 @adjust_address(i64 %70, i64 %71, i32 0)
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @emit_move_insn(i64 %72, i64 %73)
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @INTVAL(i64 %75)
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load i64, i64* %4, align 8
  %80 = load i32, i32* @VOIDmode, align 4
  %81 = sext i32 %80 to i64
  %82 = call i64 @adjust_address(i64 %79, i64 %81, i32 1)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @const1_rtx, align 8
  %85 = call i32 @set_mem_size(i64 %83, i64 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @INTVAL(i64 %88)
  %90 = sub nsw i32 %89, 2
  %91 = call i32 @GEN_INT(i32 %90)
  %92 = call i32 @gen_movmem_short(i64 %86, i64 %87, i32 %91)
  %93 = call i32 @emit_insn(i32 %92)
  br label %94

94:                                               ; preds = %78, %69
  br label %95

95:                                               ; preds = %94, %61
  br label %290

96:                                               ; preds = %49, %45, %37
  %97 = load i64, i64* @TARGET_MVCLE, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32, i32* @Pmode, align 4
  %101 = load i64, i64* @QImode, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @convert_modes(i32 %100, i64 %101, i64 %102, i32 1)
  %104 = call i64 @force_not_mem(i32 %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %4, align 8
  %106 = load i32, i32* @Pmode, align 4
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @convert_to_mode(i32 %106, i64 %107, i32 1)
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @gen_setmem_long(i64 %105, i32 %108, i64 %109)
  %111 = call i32 @emit_insn(i32 %110)
  br label %289

112:                                              ; preds = %96
  %113 = load i64, i64* @NULL_RTX, align 8
  store i64 %113, i64* %13, align 8
  %114 = call i64 (...) @gen_label_rtx()
  store i64 %114, i64* %14, align 8
  %115 = call i64 (...) @gen_label_rtx()
  store i64 %115, i64* %15, align 8
  %116 = call i64 (...) @gen_label_rtx()
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @GET_MODE(i64 %117)
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @VOIDmode, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @Pmode, align 4
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %123, %112
  %126 = load i32, i32* @Pmode, align 4
  %127 = call i64 @gen_reg_rtx(i32 %126)
  store i64 %127, i64* %8, align 8
  %128 = load i32, i32* @Pmode, align 4
  %129 = call i64 @gen_reg_rtx(i32 %128)
  store i64 %129, i64* %9, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i64 @gen_reg_rtx(i32 %130)
  store i64 %131, i64* %10, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i64 @gen_reg_rtx(i32 %132)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @convert_move(i64 %134, i64 %135, i32 1)
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @const0_rtx, align 8
  %139 = load i32, i32* @EQ, align 4
  %140 = load i64, i64* @NULL_RTX, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i64, i64* %16, align 8
  %143 = call i32 @emit_cmp_and_jump_insns(i64 %137, i64 %138, i32 %139, i64 %140, i32 %141, i32 1, i64 %142)
  %144 = load i64, i64* %8, align 8
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @XEXP(i64 %145, i32 0)
  %147 = load i64, i64* @NULL_RTX, align 8
  %148 = call i64 @force_operand(i32 %146, i64 %147)
  %149 = call i32 @emit_move_insn(i64 %144, i64 %148)
  %150 = load i64, i64* %4, align 8
  %151 = load i32, i32* @VOIDmode, align 4
  %152 = load i64, i64* %8, align 8
  %153 = call i64 @change_address(i64 %150, i32 %151, i64 %152)
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* @const0_rtx, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %125
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* @add_optab, align 4
  %160 = load i64, i64* %10, align 8
  %161 = load i32, i32* @constm1_rtx, align 4
  %162 = load i64, i64* %10, align 8
  %163 = call i64 @expand_binop(i32 %158, i32 %159, i64 %160, i32 %161, i64 %162, i32 1, i32 0)
  store i64 %163, i64* %12, align 8
  br label %190

164:                                              ; preds = %125
  %165 = load i64, i64* %4, align 8
  %166 = load i32, i32* @VOIDmode, align 4
  %167 = sext i32 %166 to i64
  %168 = call i64 @adjust_address(i64 %165, i64 %167, i32 1)
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %4, align 8
  %170 = load i64, i64* @const1_rtx, align 8
  %171 = call i32 @set_mem_size(i64 %169, i64 %170)
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @QImode, align 8
  %174 = call i64 @adjust_address(i64 %172, i64 %173, i32 0)
  %175 = load i64, i64* %6, align 8
  %176 = call i32 @emit_move_insn(i64 %174, i64 %175)
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @const1_rtx, align 8
  %179 = load i32, i32* @EQ, align 4
  %180 = load i64, i64* @NULL_RTX, align 8
  %181 = load i32, i32* %17, align 4
  %182 = load i64, i64* %16, align 8
  %183 = call i32 @emit_cmp_and_jump_insns(i64 %177, i64 %178, i32 %179, i64 %180, i32 %181, i32 1, i64 %182)
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @add_optab, align 4
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @GEN_INT(i32 -2)
  %188 = load i64, i64* %10, align 8
  %189 = call i64 @expand_binop(i32 %184, i32 %185, i64 %186, i32 %187, i64 %188, i32 1, i32 0)
  store i64 %189, i64* %12, align 8
  br label %190

190:                                              ; preds = %164, %157
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %12, align 8
  %197 = call i32 @emit_move_insn(i64 %195, i64 %196)
  br label %198

198:                                              ; preds = %194, %190
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* @lshr_optab, align 4
  %201 = load i64, i64* %10, align 8
  %202 = call i32 @GEN_INT(i32 8)
  %203 = load i64, i64* %11, align 8
  %204 = call i64 @expand_binop(i32 %199, i32 %200, i64 %201, i32 %202, i64 %203, i32 1, i32 0)
  store i64 %204, i64* %12, align 8
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %11, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %198
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = call i32 @emit_move_insn(i64 %209, i64 %210)
  br label %212

212:                                              ; preds = %208, %198
  %213 = load i64, i64* %11, align 8
  %214 = load i64, i64* @const0_rtx, align 8
  %215 = load i32, i32* @EQ, align 4
  %216 = load i64, i64* @NULL_RTX, align 8
  %217 = load i32, i32* %17, align 4
  %218 = load i64, i64* %15, align 8
  %219 = call i32 @emit_cmp_and_jump_insns(i64 %213, i64 %214, i32 %215, i64 %216, i32 %217, i32 1, i64 %218)
  %220 = load i64, i64* %14, align 8
  %221 = call i32 @emit_label(i64 %220)
  %222 = load i64, i64* %6, align 8
  %223 = load i64, i64* @const0_rtx, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %212
  %226 = load i64, i64* %4, align 8
  %227 = call i32 @GEN_INT(i32 255)
  %228 = call i32 @gen_clrmem_short(i64 %226, i32 %227)
  %229 = call i32 @emit_insn(i32 %228)
  br label %236

230:                                              ; preds = %212
  %231 = load i64, i64* %13, align 8
  %232 = load i64, i64* %4, align 8
  %233 = call i32 @GEN_INT(i32 255)
  %234 = call i32 @gen_movmem_short(i64 %231, i64 %232, i32 %233)
  %235 = call i32 @emit_insn(i32 %234)
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i64, i64* %8, align 8
  %238 = load i32, i32* @Pmode, align 4
  %239 = load i64, i64* %8, align 8
  %240 = call i32 @GEN_INT(i32 256)
  %241 = call i32 @gen_rtx_PLUS(i32 %238, i64 %239, i32 %240)
  %242 = call i32 @s390_load_address(i64 %237, i32 %241)
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* @add_optab, align 4
  %245 = load i64, i64* %11, align 8
  %246 = load i32, i32* @constm1_rtx, align 4
  %247 = load i64, i64* %11, align 8
  %248 = call i64 @expand_binop(i32 %243, i32 %244, i64 %245, i32 %246, i64 %247, i32 1, i32 0)
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %12, align 8
  %250 = load i64, i64* %11, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %236
  %253 = load i64, i64* %11, align 8
  %254 = load i64, i64* %12, align 8
  %255 = call i32 @emit_move_insn(i64 %253, i64 %254)
  br label %256

256:                                              ; preds = %252, %236
  %257 = load i64, i64* %11, align 8
  %258 = load i64, i64* @const0_rtx, align 8
  %259 = load i32, i32* @EQ, align 4
  %260 = load i64, i64* @NULL_RTX, align 8
  %261 = load i32, i32* %17, align 4
  %262 = load i64, i64* %15, align 8
  %263 = call i32 @emit_cmp_and_jump_insns(i64 %257, i64 %258, i32 %259, i64 %260, i32 %261, i32 1, i64 %262)
  %264 = load i64, i64* %14, align 8
  %265 = call i32 @emit_jump(i64 %264)
  %266 = load i64, i64* %15, align 8
  %267 = call i32 @emit_label(i64 %266)
  %268 = load i64, i64* %6, align 8
  %269 = load i64, i64* @const0_rtx, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %256
  %272 = load i64, i64* %4, align 8
  %273 = load i32, i32* @Pmode, align 4
  %274 = load i64, i64* %10, align 8
  %275 = call i32 @convert_to_mode(i32 %273, i64 %274, i32 1)
  %276 = call i32 @gen_clrmem_short(i64 %272, i32 %275)
  %277 = call i32 @emit_insn(i32 %276)
  br label %286

278:                                              ; preds = %256
  %279 = load i64, i64* %13, align 8
  %280 = load i64, i64* %4, align 8
  %281 = load i32, i32* @Pmode, align 4
  %282 = load i64, i64* %10, align 8
  %283 = call i32 @convert_to_mode(i32 %281, i64 %282, i32 1)
  %284 = call i32 @gen_movmem_short(i64 %279, i64 %280, i32 %283)
  %285 = call i32 @emit_insn(i32 %284)
  br label %286

286:                                              ; preds = %278, %271
  %287 = load i64, i64* %16, align 8
  %288 = call i32 @emit_label(i64 %287)
  br label %289

289:                                              ; preds = %286, %99
  br label %290

290:                                              ; preds = %26, %289, %95
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_clrmem_short(i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i64 @adjust_address(i64, i64, i32) #1

declare dso_local i32 @set_mem_size(i64, i64) #1

declare dso_local i32 @gen_movmem_short(i64, i64, i32) #1

declare dso_local i64 @force_not_mem(i32) #1

declare dso_local i32 @convert_modes(i32, i64, i64, i32) #1

declare dso_local i32 @gen_setmem_long(i64, i32, i64) #1

declare dso_local i32 @convert_to_mode(i32, i64, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i64, i32, i32, i64) #1

declare dso_local i64 @force_operand(i32, i64) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @change_address(i64, i32, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i32 @s390_load_address(i64, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i64, i32) #1

declare dso_local i32 @emit_jump(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
