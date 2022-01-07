; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_calc1.tab.c_hilo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_calc1.tab.c_hilo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double, double } (double, double, double, double)* @hilo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @hilo(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %10 = load double, double* %6, align 8
  %11 = load double, double* %7, align 8
  %12 = fcmp ogt double %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load double, double* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double %14, double* %15, align 8
  %16 = load double, double* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double %16, double* %17, align 8
  br label %23

18:                                               ; preds = %4
  %19 = load double, double* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double %19, double* %20, align 8
  %21 = load double, double* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double %21, double* %22, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load double, double* %8, align 8
  %25 = load double, double* %9, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load double, double* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fcmp ogt double %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load double, double* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double %33, double* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load double, double* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = fcmp olt double %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load double, double* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double %41, double* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %61

44:                                               ; preds = %23
  %45 = load double, double* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = fcmp ogt double %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load double, double* %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store double %50, double* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load double, double* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fcmp olt double %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load double, double* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store double %58, double* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %43
  %62 = bitcast %struct.TYPE_3__* %5 to { double, double }*
  %63 = load { double, double }, { double, double }* %62, align 8
  ret { double, double } %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
