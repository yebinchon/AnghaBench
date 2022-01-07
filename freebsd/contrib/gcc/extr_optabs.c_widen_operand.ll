; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_widen_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_widen_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @widen_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @widen_operand(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @GET_MODE(i32 %16)
  %18 = load i64, i64* @VOIDmode, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %6, align 4
  br label %71

22:                                               ; preds = %15, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @GET_CODE(i32 %26)
  %28 = load i64, i64* @SUBREG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @SUBREG_PROMOTED_VAR_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @SUBREG_PROMOTED_UNSIGNED_P(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34, %22
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @convert_modes(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %71

45:                                               ; preds = %34, %30, %25
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @GET_MODE_SIZE(i32 %46)
  %48 = load i64, i64* @UNITS_PER_WORD, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @GET_MODE(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @force_reg(i64 %53, i32 %54)
  %56 = call i32 @gen_rtx_SUBREG(i32 %51, i32 %55, i32 0)
  store i32 %56, i32* %6, align 4
  br label %71

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @gen_reg_rtx(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i64, i64* @VOIDmode, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @gen_rtx_CLOBBER(i64 %60, i32 %61)
  %63 = call i32 @emit_insn(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @GET_MODE(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @gen_lowpart(i64 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @emit_move_insn(i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %57, %50, %39, %20
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SUBREG_PROMOTED_VAR_P(i32) #1

declare dso_local i32 @SUBREG_PROMOTED_UNSIGNED_P(i32) #1

declare dso_local i32 @convert_modes(i32, i32, i32, i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @gen_rtx_SUBREG(i32, i32, i32) #1

declare dso_local i32 @force_reg(i64, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i64, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_lowpart(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
