; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_misc.c_secs_elapsed.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_misc.c_secs_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"clock_getres\00", align 1
@st = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @secs_elapsed() #0 {
  %1 = alloca %struct.timespec, align 4
  %2 = alloca %struct.timespec, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %6 = call i64 @clock_gettime(i32 %5, %struct.timespec* %1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %12 = call i64 @clock_getres(i32 %11, %struct.timespec* %2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0, i32 0), align 4
  %20 = sub nsw i32 %18, %19
  %21 = sitofp i32 %20 to double
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0, i32 1), align 4
  %25 = sub nsw i32 %23, %24
  %26 = sitofp i32 %25 to double
  %27 = fmul double %26, 1.000000e-09
  %28 = fadd double %21, %27
  store double %28, double* %3, align 8
  %29 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sitofp i32 %30 to double
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sitofp i32 %33 to double
  %35 = fmul double %34, 1.000000e-09
  %36 = fadd double %31, %35
  store double %36, double* %4, align 8
  %37 = load double, double* %3, align 8
  %38 = load double, double* %4, align 8
  %39 = fcmp olt double %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load double, double* %4, align 8
  store double %41, double* %3, align 8
  br label %42

42:                                               ; preds = %40, %16
  %43 = load double, double* %3, align 8
  ret double %43
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @clock_getres(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
