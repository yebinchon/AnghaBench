; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_start_hrtimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_swevent_start_hrtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@u64 = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_swevent_start_hrtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_swevent_start_hrtimer(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  store %struct.hw_perf_event* %6, %struct.hw_perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = call i32 @is_sampling_event(%struct.perf_event* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 2
  %14 = call i32 @local64_read(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 10000, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 2
  %24 = call i32 @local64_set(i32* %23, i32 0)
  br label %31

25:                                               ; preds = %11
  %26 = load i32, i32* @u64, align 4
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max_t(i32 %26, i32 10000, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ns_to_ktime(i32 %34)
  %36 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %37 = call i32 @__hrtimer_start_range_ns(i32* %33, i32 %35, i32 0, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @__hrtimer_start_range_ns(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
