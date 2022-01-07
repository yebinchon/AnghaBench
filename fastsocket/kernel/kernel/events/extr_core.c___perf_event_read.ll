; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c___perf_event_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_2__*, %struct.perf_event_context* }
%struct.TYPE_2__ = type { i32 (%struct.perf_event*)* }
%struct.perf_event_context = type { i32, i64, i64 }
%struct.perf_cpu_context = type { %struct.perf_event_context* }

@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__perf_event_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__perf_event_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.perf_event*
  store %struct.perf_event* %7, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load %struct.perf_event_context*, %struct.perf_event_context** %9, align 8
  store %struct.perf_event_context* %10, %struct.perf_event_context** %4, align 8
  %11 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %12 = call %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context* %11)
  store %struct.perf_cpu_context* %12, %struct.perf_cpu_context** %5, align 8
  %13 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %14 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %19 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %18, i32 0, i32 0
  %20 = load %struct.perf_event_context*, %struct.perf_event_context** %19, align 8
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %22 = icmp ne %struct.perf_event_context* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %57

24:                                               ; preds = %17, %1
  %25 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %26 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %29 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %34 = call i32 @update_context_time(%struct.perf_event_context* %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 @update_cgrp_time_from_event(%struct.perf_event* %35)
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = call i32 @update_event_times(%struct.perf_event* %38)
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %49, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %52 = call i32 %50(%struct.perf_event* %51)
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %55 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %23
  ret void
}

declare dso_local %struct.perf_cpu_context* @__get_cpu_context(%struct.perf_event_context*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_context_time(%struct.perf_event_context*) #1

declare dso_local i32 @update_cgrp_time_from_event(%struct.perf_event*) #1

declare dso_local i32 @update_event_times(%struct.perf_event*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
