; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fixunsdfdi.c___fixunsdfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fixunsdfdi.c___fixunsdfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fixunsdfdi(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fcmp ole double %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = fdiv double %10, 0x41F0000000000000
  %12 = fptosi double %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load double, double* %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 0x41F0000000000000
  %17 = fsub double %13, %16
  %18 = fptosi double %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 32
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
