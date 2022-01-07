; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fixunssfdi.c___fixunssfdi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fixunssfdi.c___fixunssfdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fixunssfdi(float %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float %0, float* %3, align 4
  %7 = load float, float* %3, align 4
  %8 = fcmp ole float %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load float, float* %3, align 4
  %12 = fpext float %11 to double
  store double %12, double* %4, align 8
  %13 = load double, double* %4, align 8
  %14 = fdiv double %13, 0x41F0000000000000
  %15 = fptosi double %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load double, double* %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double %18, 0x41F0000000000000
  %20 = fsub double %16, %19
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 32
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %10, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
