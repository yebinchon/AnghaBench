; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_free_syscall_print_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_free_syscall_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { %struct.TYPE_2__, %struct.syscall_metadata* }
%struct.TYPE_2__ = type { i32 }
%struct.syscall_metadata = type { %struct.ftrace_event_call* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_syscall_print_fmt(%struct.ftrace_event_call* %0) #0 {
  %2 = alloca %struct.ftrace_event_call*, align 8
  %3 = alloca %struct.syscall_metadata*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %2, align 8
  %4 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %5 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %4, i32 0, i32 1
  %6 = load %struct.syscall_metadata*, %struct.syscall_metadata** %5, align 8
  store %struct.syscall_metadata* %6, %struct.syscall_metadata** %3, align 8
  %7 = load %struct.syscall_metadata*, %struct.syscall_metadata** %3, align 8
  %8 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %7, i32 0, i32 0
  %9 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %8, align 8
  %10 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %11 = icmp eq %struct.ftrace_event_call* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %2, align 8
  %14 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kfree(i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
