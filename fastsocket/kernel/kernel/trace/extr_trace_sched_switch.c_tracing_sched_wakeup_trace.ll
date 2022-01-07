; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_sched_wakeup_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_sched_wakeup_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.task_struct = type { i32, i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ctx_switch_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@event_wakeup = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@TRACE_WAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_sched_wakeup_trace(%struct.trace_array* %0, %struct.task_struct* %1, %struct.task_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.trace_array*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ftrace_event_call*, align 8
  %12 = alloca %struct.ring_buffer_event*, align 8
  %13 = alloca %struct.ctx_switch_entry*, align 8
  %14 = alloca %struct.ring_buffer*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ftrace_event_call* @event_wakeup, %struct.ftrace_event_call** %11, align 8
  %15 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %16 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %15, i32 0, i32 0
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %16, align 8
  store %struct.ring_buffer* %17, %struct.ring_buffer** %14, align 8
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %19 = load i32, i32* @TRACE_WAKE, align 4
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %18, i32 %19, i32 28, i64 %20, i32 %21)
  store %struct.ring_buffer_event* %22, %struct.ring_buffer_event** %12, align 8
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %24 = icmp ne %struct.ring_buffer_event* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %86

26:                                               ; preds = %5
  %27 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %28 = call %struct.ctx_switch_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %27)
  store %struct.ctx_switch_entry* %28, %struct.ctx_switch_entry** %13, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %33 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %38 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %43 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %48 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %53 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %58 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %60 = call i32 @task_cpu(%struct.task_struct* %59)
  %61 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %62 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %11, align 8
  %64 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %13, align 8
  %65 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %66 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %67 = call i32 @filter_check_discard(%struct.ftrace_event_call* %63, %struct.ctx_switch_entry* %64, %struct.ring_buffer* %65, %struct.ring_buffer_event* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %26
  %70 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %71 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %72 = call i32 @ring_buffer_unlock_commit(%struct.ring_buffer* %70, %struct.ring_buffer_event* %71)
  br label %73

73:                                               ; preds = %69, %26
  %74 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %75 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %74, i32 0, i32 0
  %76 = load %struct.ring_buffer*, %struct.ring_buffer** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ftrace_trace_stack(%struct.ring_buffer* %76, i64 %77, i32 6, i32 %78)
  %80 = load %struct.trace_array*, %struct.trace_array** %6, align 8
  %81 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %80, i32 0, i32 0
  %82 = load %struct.ring_buffer*, %struct.ring_buffer** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @ftrace_trace_userstack(%struct.ring_buffer* %82, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %73, %25
  ret void
}

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.ctx_switch_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.ctx_switch_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_trace_stack(%struct.ring_buffer*, i64, i32, i32) #1

declare dso_local i32 @ftrace_trace_userstack(%struct.ring_buffer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
