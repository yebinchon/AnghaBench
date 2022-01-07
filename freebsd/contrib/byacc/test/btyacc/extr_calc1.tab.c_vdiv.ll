; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_calc1.tab.c_vdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/btyacc/extr_calc1.tab.c_vdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { double, double } @vdiv(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = bitcast %struct.TYPE_5__* %6 to { double, double }*
  %10 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  store double %2, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  store double %3, double* %11, align 8
  store double %0, double* %7, align 8
  store double %1, double* %8, align 8
  %12 = load double, double* %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fdiv double %12, %14
  %16 = load double, double* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = fdiv double %16, %18
  %20 = load double, double* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = fdiv double %20, %22
  %24 = load double, double* %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fdiv double %24, %26
  %28 = call { double, double } @hilo(double %15, double %19, double %23, double %27)
  %29 = bitcast %struct.TYPE_5__* %5 to { double, double }*
  %30 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %28, 0
  store double %31, double* %30, align 8
  %32 = getelementptr inbounds { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %28, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.TYPE_5__* %5 to { double, double }*
  %35 = load { double, double }, { double, double }* %34, align 8
  ret { double, double } %35
}

declare dso_local { double, double } @hilo(double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
