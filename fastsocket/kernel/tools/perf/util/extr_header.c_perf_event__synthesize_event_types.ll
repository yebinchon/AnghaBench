; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_event_types.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_perf_event__synthesize_event_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_trace_event_type = type { i32, i32 }
%struct.perf_tool = type { i32 }
%struct.machine = type { i32 }

@trace_event_count = common dso_local global i32 0, align 4
@trace_events = common dso_local global %struct.perf_trace_event_type* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"failed to create perf header event type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__synthesize_event_types(%struct.perf_tool* %0, i32 %1, %struct.machine* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_tool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.machine*, align 8
  %8 = alloca %struct.perf_trace_event_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_tool* %0, %struct.perf_tool** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.machine* %2, %struct.machine** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @trace_event_count, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.perf_trace_event_type*, %struct.perf_trace_event_type** @trace_events, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.perf_trace_event_type, %struct.perf_trace_event_type* %16, i64 %18
  store %struct.perf_trace_event_type* %19, %struct.perf_trace_event_type** %8, align 8
  %20 = load %struct.perf_tool*, %struct.perf_tool** %5, align 8
  %21 = load %struct.perf_trace_event_type*, %struct.perf_trace_event_type** %8, align 8
  %22 = getelementptr inbounds %struct.perf_trace_event_type, %struct.perf_trace_event_type* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.perf_trace_event_type*, %struct.perf_trace_event_type** %8, align 8
  %25 = getelementptr inbounds %struct.perf_trace_event_type, %struct.perf_trace_event_type* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.machine*, %struct.machine** %7, align 8
  %29 = call i32 @perf_event__synthesize_event_type(%struct.perf_tool* %20, i32 %23, i32 %26, i32 %27, %struct.machine* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @perf_event__synthesize_event_type(%struct.perf_tool*, i32, i32, i32, %struct.machine*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
