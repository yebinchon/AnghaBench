; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_itimer_get_remtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_itimer.c_itimer_get_remtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @itimer_get_remtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itimer_get_remtime(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  %5 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %6 = call i64 @hrtimer_get_remaining(%struct.hrtimer* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %9 = call i64 @hrtimer_active(%struct.hrtimer* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i64, i64* @NSEC_PER_USEC, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %11
  br label %21

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ktime_to_timeval(i64 %23)
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i64 @hrtimer_get_remaining(%struct.hrtimer*) #1

declare dso_local i64 @hrtimer_active(%struct.hrtimer*) #1

declare dso_local i32 @ktime_to_timeval(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
