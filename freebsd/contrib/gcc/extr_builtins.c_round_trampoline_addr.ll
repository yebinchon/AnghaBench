; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_round_trampoline_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_round_trampoline_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRAMPOLINE_ALIGNMENT = common dso_local global i32 0, align 4
@STACK_BOUNDARY = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@OPTAB_LIB_WIDEN = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @round_trampoline_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_trampoline_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @TRAMPOLINE_ALIGNMENT, align 4
  %8 = load i32, i32* @STACK_BOUNDARY, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load i32, i32* @Pmode, align 4
  %14 = call i32 @gen_reg_rtx(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @TRAMPOLINE_ALIGNMENT, align 4
  %16 = load i32, i32* @BITS_PER_UNIT, align 4
  %17 = sdiv i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @GEN_INT(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @TRAMPOLINE_ALIGNMENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = load i32, i32* @BITS_PER_UNIT, align 4
  %23 = sdiv i32 %21, %22
  %24 = call i32 @GEN_INT(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @Pmode, align 4
  %26 = load i32, i32* @PLUS, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %31 = call i32 @expand_simple_binop(i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @Pmode, align 4
  %33 = load i32, i32* @AND, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @OPTAB_LIB_WIDEN, align 4
  %38 = call i32 @expand_simple_binop(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %12, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @expand_simple_binop(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
