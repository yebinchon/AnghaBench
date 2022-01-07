; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_filter_current_check_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_filter_current_check_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32 }
%struct.ftrace_event_call = type { i32 }
%struct.ring_buffer_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_current_check_discard(%struct.ring_buffer* %0, %struct.ftrace_event_call* %1, i8* %2, %struct.ring_buffer_event* %3) #0 {
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca %struct.ftrace_event_call*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store %struct.ftrace_event_call* %1, %struct.ftrace_event_call** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ring_buffer_event* %3, %struct.ring_buffer_event** %8, align 8
  %9 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %12 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %13 = call i32 @filter_check_discard(%struct.ftrace_event_call* %9, i8* %10, %struct.ring_buffer* %11, %struct.ring_buffer_event* %12)
  ret i32 %13
}

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, i8*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
