; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_emit_fp_unordered_jump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_emit_fp_unordered_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HImode = common dso_local global i32 0, align 4
@TARGET_USE_SAHF = common dso_local global i64 0, align 8
@CCmode = common dso_local global i32 0, align 4
@FLAGS_REG = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@CCNOmode = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_emit_fp_unordered_jump(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @HImode, align 4
  %6 = call i32 @gen_reg_rtx(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @gen_x86_fnstsw_1(i32 %7)
  %9 = call i32 @emit_insn(i32 %8)
  %10 = load i64, i64* @TARGET_USE_SAHF, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @gen_x86_sahf_1(i32 %13)
  %15 = call i32 @emit_insn(i32 %14)
  %16 = load i32, i32* @CCmode, align 4
  %17 = load i32, i32* @FLAGS_REG, align 4
  %18 = call i32 @gen_rtx_REG(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @VOIDmode, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @const0_rtx, align 4
  %22 = call i32 @gen_rtx_UNORDERED(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @GEN_INT(i32 4)
  %26 = call i32 @gen_testqi_ext_ccno_0(i32 %24, i32 %25)
  %27 = call i32 @emit_insn(i32 %26)
  %28 = load i32, i32* @CCNOmode, align 4
  %29 = load i32, i32* @FLAGS_REG, align 4
  %30 = call i32 @gen_rtx_REG(i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @const0_rtx, align 4
  %34 = call i32 @gen_rtx_NE(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %23, %12
  %36 = load i32, i32* @VOIDmode, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @VOIDmode, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @gen_rtx_LABEL_REF(i32 %38, i32 %39)
  %41 = load i32, i32* @pc_rtx, align 4
  %42 = call i32 @gen_rtx_IF_THEN_ELSE(i32 %36, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = load i32, i32* @pc_rtx, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @gen_rtx_SET(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @emit_jump_insn(i32 %47)
  ret void
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_x86_fnstsw_1(i32) #1

declare dso_local i32 @gen_x86_sahf_1(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @gen_rtx_UNORDERED(i32, i32, i32) #1

declare dso_local i32 @gen_testqi_ext_ccno_0(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_NE(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_IF_THEN_ELSE(i32, i32, i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @emit_jump_insn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
