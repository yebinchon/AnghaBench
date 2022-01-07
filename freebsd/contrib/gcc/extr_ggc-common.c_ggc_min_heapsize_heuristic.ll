; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_min_heapsize_heuristic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_min_heapsize_heuristic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RLIMIT_RSS = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ggc_min_heapsize_heuristic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %5 = call double (...) @physmem_total()
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fmul double %6, 2.000000e+00
  %8 = call double @ggc_rlimit_bound(double %7)
  store double %8, double* %4, align 8
  %9 = load double, double* %3, align 8
  %10 = fdiv double %9, 1.024000e+03
  store double %10, double* %3, align 8
  %11 = load double, double* %4, align 8
  %12 = fdiv double %11, 1.024000e+03
  store double %12, double* %4, align 8
  %13 = load double, double* %3, align 8
  %14 = fdiv double %13, 8.000000e+00
  store double %14, double* %3, align 8
  %15 = call i64 (...) @ncpu_available()
  %16 = sitofp i64 %15 to double
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 2, %17
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %16, %19
  %21 = load double, double* %3, align 8
  %22 = fdiv double %21, %20
  store double %22, double* %3, align 8
  %23 = load double, double* %4, align 8
  %24 = fsub double %23, 1.638400e+04
  %25 = fptosi double %24 to i32
  %26 = call double @MAX(double 0.000000e+00, i32 %25)
  store double %26, double* %4, align 8
  %27 = load double, double* %4, align 8
  %28 = fmul double %27, 1.000000e+02
  %29 = call i32 (...) @ggc_min_expand_heuristic()
  %30 = add nsw i32 110, %29
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %28, %31
  store double %32, double* %4, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = fptosi double %34 to i32
  %36 = call double @MIN(double %33, i32 %35)
  store double %36, double* %3, align 8
  %37 = load double, double* %3, align 8
  %38 = call double @MAX(double %37, i32 4096)
  store double %38, double* %3, align 8
  %39 = load double, double* %3, align 8
  %40 = call double @MIN(double %39, i32 131072)
  store double %40, double* %3, align 8
  %41 = load double, double* %3, align 8
  %42 = fptosi double %41 to i32
  ret i32 %42
}

declare dso_local double @physmem_total(...) #1

declare dso_local double @ggc_rlimit_bound(double) #1

declare dso_local i64 @ncpu_available(...) #1

declare dso_local double @MAX(double, i32) #1

declare dso_local i32 @ggc_min_expand_heuristic(...) #1

declare dso_local double @MIN(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
