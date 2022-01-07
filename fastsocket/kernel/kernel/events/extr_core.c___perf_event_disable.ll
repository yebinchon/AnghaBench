; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event*, %struct.perf_event_context* }
%struct.perf_event_context = type { i32, i64 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }

@EINVAL = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@PERF_EVENT_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_event_disable(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event_context*, align 8
  %6 = alloca %struct.perf_cpu_context*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.perf_event*
  store %struct.perf_event* %8, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 2
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %10, align 8
  store %struct.perf_event_context* %11, %struct.perf_event_context** %5, align 8
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %13 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %12)
  store %struct.perf_cpu_context* %13, %struct.perf_cpu_context** %6, align 8
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %15 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %20 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %19, i32 0, i32 0
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %20, align 8
  %22 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %23 = icmp ne %struct.perf_event_context* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %18, %1
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %29 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %38 = call i32 @update_context_time(%struct.perf_event_context* %37)
  %39 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %40 = call i32 @update_cgrp_time_from_event(%struct.perf_event* %39)
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = call i32 @update_group_times(%struct.perf_event* %41)
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 1
  %46 = load %struct.perf_event*, %struct.perf_event** %45, align 8
  %47 = icmp eq %struct.perf_event* %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %50 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %51 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %52 = call i32 @group_sched_out(%struct.perf_event* %49, %struct.perf_cpu_context* %50, %struct.perf_event_context* %51)
  br label %58

53:                                               ; preds = %36
  %54 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %55 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %6, align 8
  %56 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %57 = call i32 @event_sched_out(%struct.perf_event* %54, %struct.perf_cpu_context* %55, %struct.perf_event_context* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i64, i64* @PERF_EVENT_STATE_OFF, align 8
  %60 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %61 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %27
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %5, align 8
  %64 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_event(%struct.perf_event*) #1

declare dso_local i32 @update_group_times(%struct.perf_event*) #1

declare dso_local i32 @group_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @event_sched_out(%struct.perf_event*, %struct.perf_cpu_context*, %struct.perf_event_context*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
