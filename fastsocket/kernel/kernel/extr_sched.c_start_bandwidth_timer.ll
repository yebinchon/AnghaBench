; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_start_bandwidth_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_start_bandwidth_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@HRTIMER_MODE_ABS_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer*, i32)* @start_bandwidth_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_bandwidth_timer(%struct.hrtimer* %0, i32 %1) #0 {
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %9

9:                                                ; preds = %14, %2
  %10 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %11 = call i64 @hrtimer_active(%struct.hrtimer* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %34

14:                                               ; preds = %9
  %15 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %16 = call i32 @hrtimer_cb_get_time(%struct.hrtimer* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hrtimer_forward(%struct.hrtimer* %17, i32 %18, i32 %19)
  %21 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %22 = call i32 @hrtimer_get_softexpires(%struct.hrtimer* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %24 = call i32 @hrtimer_get_expires(%struct.hrtimer* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ktime_sub(i32 %25, i32 %26)
  %28 = call i64 @ktime_to_ns(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @HRTIMER_MODE_ABS_PINNED, align 4
  %33 = call i32 @__hrtimer_start_range_ns(%struct.hrtimer* %29, i32 %30, i64 %31, i32 %32, i32 0)
  br label %9

34:                                               ; preds = %13
  ret void
}

declare dso_local i64 @hrtimer_active(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_cb_get_time(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_forward(%struct.hrtimer*, i32, i32) #1

declare dso_local i32 @hrtimer_get_softexpires(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_get_expires(%struct.hrtimer*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @__hrtimer_start_range_ns(%struct.hrtimer*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
