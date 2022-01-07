; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_ftrace_syscall_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_syscalls.c_ftrace_syscall_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.syscall_trace_enter = type { i32, i32 }
%struct.syscall_metadata = type { i32, i32, i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer = type { i32 }

@current = common dso_local global i32 0, align 4
@enabled_enter_syscalls = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftrace_syscall_enter(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.syscall_trace_enter*, align 8
  %6 = alloca %struct.syscall_metadata*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @current, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = call i32 @trace_get_syscall_nr(i32 %11, %struct.pt_regs* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %72

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @enabled_enter_syscalls, align 4
  %20 = call i32 @test_bit(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %72

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.syscall_metadata* @syscall_nr_to_meta(i32 %24)
  store %struct.syscall_metadata* %25, %struct.syscall_metadata** %6, align 8
  %26 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %27 = icmp ne %struct.syscall_metadata* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %72

29:                                               ; preds = %23
  %30 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %31 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = add i64 8, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %38 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.ring_buffer_event* @trace_current_buffer_lock_reserve(%struct.ring_buffer** %8, i32 %39, i32 %40, i32 0, i32 0)
  store %struct.ring_buffer_event* %41, %struct.ring_buffer_event** %7, align 8
  %42 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %43 = icmp ne %struct.ring_buffer_event* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  br label %72

45:                                               ; preds = %29
  %46 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %47 = call %struct.syscall_trace_enter* @ring_buffer_event_data(%struct.ring_buffer_event* %46)
  store %struct.syscall_trace_enter* %47, %struct.syscall_trace_enter** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.syscall_trace_enter*, %struct.syscall_trace_enter** %5, align 8
  %50 = getelementptr inbounds %struct.syscall_trace_enter, %struct.syscall_trace_enter* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @current, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %53 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %54 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.syscall_trace_enter*, %struct.syscall_trace_enter** %5, align 8
  %57 = getelementptr inbounds %struct.syscall_trace_enter, %struct.syscall_trace_enter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @syscall_get_arguments(i32 %51, %struct.pt_regs* %52, i32 0, i32 %55, i32 %58)
  %60 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %61 = load %struct.syscall_metadata*, %struct.syscall_metadata** %6, align 8
  %62 = getelementptr inbounds %struct.syscall_metadata, %struct.syscall_metadata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.syscall_trace_enter*, %struct.syscall_trace_enter** %5, align 8
  %65 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %66 = call i32 @filter_current_check_discard(%struct.ring_buffer* %60, i32 %63, %struct.syscall_trace_enter* %64, %struct.ring_buffer_event* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %45
  %69 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %70 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %71 = call i32 @trace_current_buffer_unlock_commit(%struct.ring_buffer* %69, %struct.ring_buffer_event* %70, i32 0, i32 0)
  br label %72

72:                                               ; preds = %16, %22, %28, %44, %68, %45
  ret void
}

declare dso_local i32 @trace_get_syscall_nr(i32, %struct.pt_regs*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.syscall_metadata* @syscall_nr_to_meta(i32) #1

declare dso_local %struct.ring_buffer_event* @trace_current_buffer_lock_reserve(%struct.ring_buffer**, i32, i32, i32, i32) #1

declare dso_local %struct.syscall_trace_enter* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @syscall_get_arguments(i32, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @filter_current_check_discard(%struct.ring_buffer*, i32, %struct.syscall_trace_enter*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_current_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
