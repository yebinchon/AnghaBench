; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_cmpmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_expand_cmpmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCUmode = common dso_local global i32 0, align 4
@CC_REGNUM = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@TARGET_MVCLE = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@lshr_optab = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s390_expand_cmpmem(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
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
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load i32, i32* @CCUmode, align 4
  %21 = load i32, i32* @CC_REGNUM, align 4
  %22 = call i64 @gen_rtx_REG(i32 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @GET_CODE(i64 %26)
  %28 = load i64, i64* @CONST_INT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @INTVAL(i64 %31)
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @INTVAL(i64 %35)
  %37 = icmp sle i32 %36, 256
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @INTVAL(i64 %39)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @INTVAL(i64 %45)
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @GEN_INT(i32 %47)
  %49 = call i32 @gen_cmpmem_short(i64 %43, i64 %44, i32 %48)
  %50 = call i32 @emit_insn(i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @gen_cmpint(i64 %51, i64 %52)
  %54 = call i32 @emit_insn(i32 %53)
  br label %59

55:                                               ; preds = %38
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @const0_rtx, align 8
  %58 = call i32 @emit_move_insn(i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %42
  br label %235

60:                                               ; preds = %34, %30, %4
  %61 = load i64, i64* @TARGET_MVCLE, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @Pmode, align 4
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @convert_to_mode(i32 %66, i64 %67, i32 1)
  %69 = call i32 @gen_cmpmem_long(i64 %64, i64 %65, i32 %68)
  %70 = call i32 @emit_insn(i32 %69)
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @gen_cmpint(i64 %71, i64 %72)
  %74 = call i32 @emit_insn(i32 %73)
  br label %234

75:                                               ; preds = %60
  %76 = call i64 (...) @gen_label_rtx()
  store i64 %76, i64* %16, align 8
  %77 = call i64 (...) @gen_label_rtx()
  store i64 %77, i64* %17, align 8
  %78 = call i64 (...) @gen_label_rtx()
  store i64 %78, i64* %18, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @GET_MODE(i64 %79)
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @VOIDmode, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @Pmode, align 4
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* @Pmode, align 4
  %88 = call i64 @gen_reg_rtx(i32 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i32, i32* @Pmode, align 4
  %90 = call i64 @gen_reg_rtx(i32 %89)
  store i64 %90, i64* %12, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call i64 @gen_reg_rtx(i32 %91)
  store i64 %92, i64* %13, align 8
  %93 = load i32, i32* %19, align 4
  %94 = call i64 @gen_reg_rtx(i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @convert_move(i64 %95, i64 %96, i32 1)
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* @const0_rtx, align 8
  %100 = load i32, i32* @EQ, align 4
  %101 = load i32, i32* @NULL_RTX, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i64, i64* %18, align 8
  %104 = call i32 @emit_cmp_and_jump_insns(i64 %98, i64 %99, i32 %100, i32 %101, i32 %102, i32 1, i64 %103)
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @XEXP(i64 %106, i32 0)
  %108 = load i32, i32* @NULL_RTX, align 4
  %109 = call i64 @force_operand(i32 %107, i32 %108)
  %110 = call i32 @emit_move_insn(i64 %105, i64 %109)
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @XEXP(i64 %112, i32 0)
  %114 = load i32, i32* @NULL_RTX, align 4
  %115 = call i64 @force_operand(i32 %113, i32 %114)
  %116 = call i32 @emit_move_insn(i64 %111, i64 %115)
  %117 = load i64, i64* %6, align 8
  %118 = load i32, i32* @VOIDmode, align 4
  %119 = load i64, i64* %11, align 8
  %120 = call i64 @change_address(i64 %117, i32 %118, i64 %119)
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* @VOIDmode, align 4
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @change_address(i64 %121, i32 %122, i64 %123)
  store i64 %124, i64* %7, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @add_optab, align 4
  %127 = load i64, i64* %13, align 8
  %128 = load i32, i32* @constm1_rtx, align 4
  %129 = load i64, i64* %13, align 8
  %130 = call i64 @expand_binop(i32 %125, i32 %126, i64 %127, i32 %128, i64 %129, i32 1, i32 0)
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %13, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %86
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i32 @emit_move_insn(i64 %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %86
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @lshr_optab, align 4
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @GEN_INT(i32 8)
  %143 = load i64, i64* %14, align 8
  %144 = call i64 @expand_binop(i32 %139, i32 %140, i64 %141, i32 %142, i64 %143, i32 1, i32 0)
  store i64 %144, i64* %15, align 8
  %145 = load i64, i64* %15, align 8
  %146 = load i64, i64* %14, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %15, align 8
  %151 = call i32 @emit_move_insn(i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %138
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* @const0_rtx, align 8
  %155 = load i32, i32* @EQ, align 4
  %156 = load i32, i32* @NULL_RTX, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load i64, i64* %17, align 8
  %159 = call i32 @emit_cmp_and_jump_insns(i64 %153, i64 %154, i32 %155, i32 %156, i32 %157, i32 1, i64 %158)
  %160 = load i64, i64* %16, align 8
  %161 = call i32 @emit_label(i64 %160)
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @GEN_INT(i32 255)
  %165 = call i32 @gen_cmpmem_short(i64 %162, i64 %163, i32 %164)
  %166 = call i32 @emit_insn(i32 %165)
  %167 = load i32, i32* @VOIDmode, align 4
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* @const0_rtx, align 8
  %170 = call i64 @gen_rtx_NE(i32 %167, i64 %168, i64 %169)
  store i64 %170, i64* %15, align 8
  %171 = load i32, i32* @VOIDmode, align 4
  %172 = load i64, i64* %15, align 8
  %173 = load i32, i32* @VOIDmode, align 4
  %174 = load i64, i64* %18, align 8
  %175 = call i32 @gen_rtx_LABEL_REF(i32 %173, i64 %174)
  %176 = load i32, i32* @pc_rtx, align 4
  %177 = call i64 @gen_rtx_IF_THEN_ELSE(i32 %171, i64 %172, i32 %175, i32 %176)
  store i64 %177, i64* %15, align 8
  %178 = load i32, i32* @VOIDmode, align 4
  %179 = load i32, i32* @pc_rtx, align 4
  %180 = load i64, i64* %15, align 8
  %181 = call i64 @gen_rtx_SET(i32 %178, i32 %179, i64 %180)
  store i64 %181, i64* %15, align 8
  %182 = load i64, i64* %15, align 8
  %183 = call i32 @emit_jump_insn(i64 %182)
  %184 = load i64, i64* %11, align 8
  %185 = load i32, i32* @Pmode, align 4
  %186 = load i64, i64* %11, align 8
  %187 = call i32 @GEN_INT(i32 256)
  %188 = call i32 @gen_rtx_PLUS(i32 %185, i64 %186, i32 %187)
  %189 = call i32 @s390_load_address(i64 %184, i32 %188)
  %190 = load i64, i64* %12, align 8
  %191 = load i32, i32* @Pmode, align 4
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @GEN_INT(i32 256)
  %194 = call i32 @gen_rtx_PLUS(i32 %191, i64 %192, i32 %193)
  %195 = call i32 @s390_load_address(i64 %190, i32 %194)
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* @add_optab, align 4
  %198 = load i64, i64* %14, align 8
  %199 = load i32, i32* @constm1_rtx, align 4
  %200 = load i64, i64* %14, align 8
  %201 = call i64 @expand_binop(i32 %196, i32 %197, i64 %198, i32 %199, i64 %200, i32 1, i32 0)
  store i64 %201, i64* %15, align 8
  %202 = load i64, i64* %15, align 8
  %203 = load i64, i64* %14, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %152
  %206 = load i64, i64* %14, align 8
  %207 = load i64, i64* %15, align 8
  %208 = call i32 @emit_move_insn(i64 %206, i64 %207)
  br label %209

209:                                              ; preds = %205, %152
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* @const0_rtx, align 8
  %212 = load i32, i32* @EQ, align 4
  %213 = load i32, i32* @NULL_RTX, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i64, i64* %17, align 8
  %216 = call i32 @emit_cmp_and_jump_insns(i64 %210, i64 %211, i32 %212, i32 %213, i32 %214, i32 1, i64 %215)
  %217 = load i64, i64* %16, align 8
  %218 = call i32 @emit_jump(i64 %217)
  %219 = load i64, i64* %17, align 8
  %220 = call i32 @emit_label(i64 %219)
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i32, i32* @Pmode, align 4
  %224 = load i64, i64* %13, align 8
  %225 = call i32 @convert_to_mode(i32 %223, i64 %224, i32 1)
  %226 = call i32 @gen_cmpmem_short(i64 %221, i64 %222, i32 %225)
  %227 = call i32 @emit_insn(i32 %226)
  %228 = load i64, i64* %18, align 8
  %229 = call i32 @emit_label(i64 %228)
  %230 = load i64, i64* %5, align 8
  %231 = load i64, i64* %9, align 8
  %232 = call i32 @gen_cmpint(i64 %230, i64 %231)
  %233 = call i32 @emit_insn(i32 %232)
  br label %234

234:                                              ; preds = %209, %63
  br label %235

235:                                              ; preds = %234, %59
  ret void
}

declare dso_local i64 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_cmpmem_short(i64, i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_cmpint(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

declare dso_local i32 @gen_cmpmem_long(i64, i64, i32) #1

declare dso_local i32 @convert_to_mode(i32, i64, i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @gen_reg_rtx(i32) #1

declare dso_local i32 @convert_move(i64, i64, i32) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i32, i32, i32, i64) #1

declare dso_local i64 @force_operand(i32, i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local i64 @change_address(i64, i32, i64) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i32, i64, i32, i32) #1

declare dso_local i32 @emit_label(i64) #1

declare dso_local i64 @gen_rtx_NE(i32, i64, i64) #1

declare dso_local i64 @gen_rtx_IF_THEN_ELSE(i32, i64, i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i64) #1

declare dso_local i64 @gen_rtx_SET(i32, i32, i64) #1

declare dso_local i32 @emit_jump_insn(i64) #1

declare dso_local i32 @s390_load_address(i64, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i64, i32) #1

declare dso_local i32 @emit_jump(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
