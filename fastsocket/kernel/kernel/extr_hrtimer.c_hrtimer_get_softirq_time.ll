; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_get_softirq_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_hrtimer.c_hrtimer_get_softirq_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer_cpu_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hrtimer_cpu_base*)* @hrtimer_get_softirq_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrtimer_get_softirq_time(%struct.hrtimer_cpu_base* %0) #0 {
  %2 = alloca %struct.hrtimer_cpu_base*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.timespec, align 4
  %7 = alloca %struct.timespec, align 4
  store %struct.hrtimer_cpu_base* %0, %struct.hrtimer_cpu_base** %2, align 8
  %8 = call i32 @get_xtime_and_monotonic_and_sleep_offset(%struct.timespec* %5, %struct.timespec* %6, %struct.timespec* %7)
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @timespec_to_ktime(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @timespec_to_ktime(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %2, align 8
  %17 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @CLOCK_REALTIME, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ktime_add(i32 %22, i32 %23)
  %25 = load %struct.hrtimer_cpu_base*, %struct.hrtimer_cpu_base** %2, align 8
  %26 = getelementptr inbounds %struct.hrtimer_cpu_base, %struct.hrtimer_cpu_base* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @CLOCK_MONOTONIC, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 4
  ret void
}

declare dso_local i32 @get_xtime_and_monotonic_and_sleep_offset(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @timespec_to_ktime(i32) #1

declare dso_local i32 @ktime_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
