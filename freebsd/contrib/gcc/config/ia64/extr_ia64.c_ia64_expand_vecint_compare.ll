; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_expand_vecint_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @ia64_expand_vecint_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_expand_vecint_compare(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %30 [
    i32 140, label %17
    i32 137, label %17
    i32 136, label %17
    i32 131, label %18
    i32 135, label %18
    i32 134, label %18
    i32 139, label %21
    i32 138, label %21
    i32 133, label %24
    i32 132, label %24
  ]

17:                                               ; preds = %5, %5, %5
  br label %32

18:                                               ; preds = %5, %5, %5
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @reverse_condition(i32 %19)
  store i32 %20, i32* %6, align 4
  store i32 1, i32* %11, align 4
  br label %32

21:                                               ; preds = %5, %5
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @reverse_condition(i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %5, %5, %21
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @swap_condition(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %10, align 4
  br label %32

30:                                               ; preds = %5
  %31 = call i32 (...) @gcc_unreachable()
  br label %32

32:                                               ; preds = %30, %24, %18, %17
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 136
  br i1 %34, label %35, label %87

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %84 [
    i32 130, label %37
    i32 128, label %66
    i32 129, label %66
  ]

37:                                               ; preds = %35
  %38 = call i32 @gen_reg_rtx(i32 130)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @gen_subv2si3(i32 %39, i32 %40, i32 %41)
  %43 = call i32 @emit_insn(i32 %42)
  %44 = call i32 @GEN_INT(i32 -2147483648)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @gen_rtvec(i32 2, i32 %45, i32 %46)
  %48 = call i32 @gen_rtx_CONST_VECTOR(i32 130, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @force_reg(i32 130, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = call i32 @gen_reg_rtx(i32 130)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @gen_andv2si3(i32 %52, i32 %53, i32 %54)
  %56 = call i32 @emit_insn(i32 %55)
  %57 = call i32 @gen_reg_rtx(i32 130)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @gen_xorv2si3(i32 %58, i32 %59, i32 %60)
  %62 = call i32 @emit_insn(i32 %61)
  store i32 137, i32* %6, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @CONST0_RTX(i32 %64)
  store i32 %65, i32* %10, align 4
  br label %86

66:                                               ; preds = %35, %35
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gen_reg_rtx(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @VOIDmode, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @gen_rtx_US_MINUS(i32 %71, i32 %72, i32 %73)
  %75 = call i32 @gen_rtx_SET(i32 %69, i32 %70, i32 %74)
  %76 = call i32 @emit_insn(i32 %75)
  store i32 140, i32* %6, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @CONST0_RTX(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %11, align 4
  br label %86

84:                                               ; preds = %35
  %85 = call i32 (...) @gcc_unreachable()
  br label %86

86:                                               ; preds = %84, %66, %37
  br label %87

87:                                               ; preds = %86, %32
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @gen_rtx_fmt_ee(i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* @VOIDmode, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @gen_rtx_SET(i32 %93, i32 %94, i32 %95)
  %97 = call i32 @emit_insn(i32 %96)
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_subv2si3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @gen_rtx_CONST_VECTOR(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_andv2si3(i32, i32, i32) #1

declare dso_local i32 @gen_xorv2si3(i32, i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_US_MINUS(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_fmt_ee(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
