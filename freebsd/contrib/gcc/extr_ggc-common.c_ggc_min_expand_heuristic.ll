; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_min_expand_heuristic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-common.c_ggc_min_expand_heuristic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ggc_min_expand_heuristic() #0 {
  %1 = alloca double, align 8
  %2 = call double (...) @physmem_total()
  store double %2, double* %1, align 8
  %3 = load double, double* %1, align 8
  %4 = call double @ggc_rlimit_bound(double %3)
  store double %4, double* %1, align 8
  %5 = load double, double* %1, align 8
  %6 = fdiv double %5, 0x41D0000000000000
  store double %6, double* %1, align 8
  %7 = load double, double* %1, align 8
  %8 = fmul double %7, 7.000000e+01
  store double %8, double* %1, align 8
  %9 = load double, double* %1, align 8
  %10 = call double @MIN(double %9, i32 120)
  store double %10, double* %1, align 8
  %11 = load double, double* %1, align 8
  %12 = fadd double %11, 3.000000e+01
  store double %12, double* %1, align 8
  %13 = load double, double* %1, align 8
  %14 = fptosi double %13 to i32
  ret i32 %14
}

declare dso_local double @physmem_total(...) #1

declare dso_local double @ggc_rlimit_bound(double) #1

declare dso_local double @MIN(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
