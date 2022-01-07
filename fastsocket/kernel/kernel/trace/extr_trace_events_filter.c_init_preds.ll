; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_init_preds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_init_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i64, i32 }

@TRACE_EVENT_FL_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_call*)* @init_preds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_preds(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftrace_event_call*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %3, align 8
  %4 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %5 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load i32, i32* @TRACE_EVENT_FL_FILTERED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %13 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = call i64 (...) @__alloc_preds()
  %17 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %18 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %20 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @IS_ERR(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %3, align 8
  %26 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @PTR_ERR(i64 %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @__alloc_preds(...) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
