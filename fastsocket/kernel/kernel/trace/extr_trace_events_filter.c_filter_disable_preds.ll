; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_disable_preds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_disable_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32, %struct.event_filter* }
%struct.event_filter = type { %struct.TYPE_2__**, i64 }
%struct.TYPE_2__ = type { i32 }

@TRACE_EVENT_FL_FILTERED = common dso_local global i32 0, align 4
@MAX_FILTER_PRED = common dso_local global i32 0, align 4
@filter_pred_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftrace_event_call*)* @filter_disable_preds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_disable_preds(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca i32, align 4
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %5 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %6 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %5, i32 0, i32 1
  %7 = load %struct.event_filter*, %struct.event_filter** %6, align 8
  store %struct.event_filter* %7, %struct.event_filter** %3, align 8
  %8 = load i32, i32* @TRACE_EVENT_FL_FILTERED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %11 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %15 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAX_FILTER_PRED, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* @filter_pred_none, align 4
  %22 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %23 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %21, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
