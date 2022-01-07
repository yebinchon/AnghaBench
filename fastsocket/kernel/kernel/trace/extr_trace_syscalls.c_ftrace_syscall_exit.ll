; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_ftrace_syscall_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_ftrace_syscall_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.syscall_trace_exit = type { i32, i32 }
%struct.syscall_metadata = type { i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer = type { i32 }

@current = common dso_local global i32 0, align 4
@enabled_exit_syscalls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_syscall_exit(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.syscall_trace_exit*, align 8
  %6 = alloca %struct.syscall_metadata*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @current, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = call i32 @trace_get_syscall_nr(i32 %10, %struct.pt_regs* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @enabled_exit_syscalls, align 4
  %19 = call i32 @test_bit(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.syscall_metadata* @syscall_nr_to_meta(i32 %23)
  store %struct.syscall_metadata* %24, %struct.syscall_metadata** %6, align 8
  %25 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %26 = icmp ne %struct.syscall_metadata* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %59

28:                                               ; preds = %22
  %29 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %30 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.ring_buffer_event* @trace_current_buffer_lock_reserve(%struct.ring_buffer** %8, i32 %31, i32 8, i32 0, i32 0)
  store %struct.ring_buffer_event* %32, %struct.ring_buffer_event** %7, align 8
  %33 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %34 = icmp ne %struct.ring_buffer_event* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %59

36:                                               ; preds = %28
  %37 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %38 = call %struct.syscall_trace_exit* @ring_buffer_event_data(%struct.ring_buffer_event* %37)
  store %struct.syscall_trace_exit* %38, %struct.syscall_trace_exit** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.syscall_trace_exit*, %struct.syscall_trace_exit** %5, align 8
  %41 = getelementptr inbounds %struct.syscall_trace_exit, %struct.syscall_trace_exit* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @current, align 4
  %43 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %44 = call i32 @syscall_get_return_value(i32 %42, %struct.pt_regs* %43)
  %45 = load %struct.syscall_trace_exit*, %struct.syscall_trace_exit** %5, align 8
  %46 = getelementptr inbounds %struct.syscall_trace_exit, %struct.syscall_trace_exit* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %48 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %49 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.syscall_trace_exit*, %struct.syscall_trace_exit** %5, align 8
  %52 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %53 = call i32 @filter_current_check_discard(%struct.ring_buffer* %47, i32 %50, %struct.syscall_trace_exit* %51, %struct.ring_buffer_event* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %36
  %56 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %57 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %58 = call i32 @trace_current_buffer_unlock_commit(%struct.ring_buffer* %56, %struct.ring_buffer_event* %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %15, %21, %27, %35, %55, %36
  ret void
}

declare dso_local i32 @trace_get_syscall_nr(i32, %struct.pt_regs*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.syscall_metadata* @syscall_nr_to_meta(i32) #1

declare dso_local %struct.ring_buffer_event* @trace_current_buffer_lock_reserve(%struct.ring_buffer**, i32, i32, i32, i32) #1

declare dso_local %struct.syscall_trace_exit* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @syscall_get_return_value(i32, %struct.pt_regs*) #1

declare dso_local i32 @filter_current_check_discard(%struct.ring_buffer*, i32, %struct.syscall_trace_exit*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_current_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
