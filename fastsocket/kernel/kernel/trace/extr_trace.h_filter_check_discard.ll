; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.h_filter_check_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.h_filter_check_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32, i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }

@TRACE_EVENT_FL_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_call*, i8*, %struct.ring_buffer*, %struct.ring_buffer_event*)* @filter_check_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_check_discard(%struct.ftrace_event_call* %0, i8* %1, %struct.ring_buffer* %2, %struct.ring_buffer_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftrace_event_call*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ring_buffer* %2, %struct.ring_buffer** %8, align 8
  store %struct.ring_buffer_event* %3, %struct.ring_buffer_event** %9, align 8
  %10 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %11 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TRACE_EVENT_FL_FILTERED, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %19 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @filter_match_preds(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %27 = call i32 @ring_buffer_discard_commit(%struct.ring_buffer* %25, %struct.ring_buffer_event* %26)
  store i32 1, i32* %5, align 4
  br label %29

28:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @filter_match_preds(i32, i8*) #1

declare dso_local i32 @ring_buffer_discard_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
