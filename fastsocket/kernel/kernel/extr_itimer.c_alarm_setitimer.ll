; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_alarm_setitimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_alarm_setitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alarm_setitimer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.itimerval, align 8
  %4 = alloca %struct.itimerval, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @INT_MAX, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @INT_MAX, align 4
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ITIMER_REAL, align 4
  %21 = call i32 @do_setitimer(i32 %20, %struct.itimerval* %3, %struct.itimerval* %4)
  %22 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %10
  %32 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 500000
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  ret i32 %44
}

declare dso_local i32 @do_setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
