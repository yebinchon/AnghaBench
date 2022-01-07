; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_destroy_preds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_destroy_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32, i32* }

@TRACE_EVENT_FL_FILTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_preds(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %3 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %4 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @__free_preds(i32* %5)
  %7 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %8 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @TRACE_EVENT_FL_FILTERED, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %12 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  ret void
}

declare dso_local i32 @__free_preds(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
