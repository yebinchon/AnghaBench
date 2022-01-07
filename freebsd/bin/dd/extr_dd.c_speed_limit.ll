; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_speed_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_speed_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@speed_limit.t_prev = internal global double 0.000000e+00, align 8
@speed_limit.t_usleep = internal global double 0.000000e+00, align 8
@in = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@speed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @speed_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speed_limit() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = call double (...) @secs_elapsed()
  store double %4, double* %1, align 8
  %5 = load double, double* %1, align 8
  %6 = load double, double* @speed_limit.t_prev, align 8
  %7 = fsub double %5, %6
  %8 = load double, double* @speed_limit.t_usleep, align 8
  %9 = fsub double %7, %8
  store double %9, double* %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @in, i32 0, i32 0), align 8
  %11 = sitofp i64 %10 to double
  %12 = load i64, i64* @speed, align 8
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %11, %13
  store double %14, double* %3, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %2, align 8
  %17 = fsub double %15, %16
  store double %17, double* @speed_limit.t_usleep, align 8
  %18 = load double, double* @speed_limit.t_usleep, align 8
  %19 = fcmp ogt double %18, 0.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load double, double* @speed_limit.t_usleep, align 8
  %22 = fmul double %21, 1.000000e+06
  %23 = call i32 @usleep(double %22)
  br label %25

24:                                               ; preds = %0
  store double 0.000000e+00, double* @speed_limit.t_usleep, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load double, double* %1, align 8
  store double %26, double* @speed_limit.t_prev, align 8
  ret void
}

declare dso_local double @secs_elapsed(...) #1

declare dso_local i32 @usleep(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
