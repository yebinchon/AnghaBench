; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_adjust_cost_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_adjust_cost_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DEP_OUTPUT = common dso_local global i32 0, align 4
@ITANIUM_CLASS_ST = common dso_local global i32 0, align 4
@ITANIUM_CLASS_STF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ia64_adjust_cost_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_adjust_cost_2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @REG_DEP_OUTPUT, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ia64_safe_itanium_class(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ia64_safe_itanium_class(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @ITANIUM_CLASS_ST, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ITANIUM_CLASS_STF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ITANIUM_CLASS_ST, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @ITANIUM_CLASS_STF, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31, %27, %19
  store i32 0, i32* %5, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %39, %17
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @ia64_safe_itanium_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
