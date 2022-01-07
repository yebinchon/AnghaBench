; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.perf_event_context*, i32 }
%struct.perf_event_context = type { i32, i64 }

@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@__perf_event_read = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @perf_event_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @__perf_event_read, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = call i32 @smp_call_function_single(i32 %13, i32 %14, %struct.perf_event* %15, i32 1)
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PERF_EVENT_STATE_INACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %25 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %24, i32 0, i32 1
  %26 = load %struct.perf_event_context*, %struct.perf_event_context** %25, align 8
  store %struct.perf_event_context* %26, %struct.perf_event_context** %3, align 8
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %27, i32 0, i32 0
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %32 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %37 = call i32 @update_context_time(%struct.perf_event_context* %36)
  %38 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %39 = call i32 @update_cgrp_time_from_event(%struct.perf_event* %38)
  br label %40

40:                                               ; preds = %35, %23
  %41 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %42 = call i32 @update_event_times(%struct.perf_event* %41)
  %43 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %44 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %40, %17
  br label %48

48:                                               ; preds = %47, %10
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = call i32 @perf_event_count(%struct.perf_event* %49)
  ret i32 %50
}

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.perf_event*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_event(%struct.perf_event*) #1

declare dso_local i32 @update_event_times(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @perf_event_count(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
