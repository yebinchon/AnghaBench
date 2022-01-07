; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_boot.c_trace_boot_ret.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_boot.c_trace_boot_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.boot_trace_ret = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.trace_boot_ret = type { %struct.boot_trace_ret }

@event_boot_ret = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@boot_trace = common dso_local global %struct.trace_array* null, align 8
@pre_initcalls_finished = common dso_local global i32 0, align 4
@TRACE_BOOT_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_boot_ret(%struct.boot_trace_ret* %0, i64 %1) #0 {
  %3 = alloca %struct.boot_trace_ret*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ftrace_event_call*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.ring_buffer*, align 8
  %8 = alloca %struct.trace_boot_ret*, align 8
  %9 = alloca %struct.trace_array*, align 8
  store %struct.boot_trace_ret* %0, %struct.boot_trace_ret** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ftrace_event_call* @event_boot_ret, %struct.ftrace_event_call** %5, align 8
  %10 = load %struct.trace_array*, %struct.trace_array** @boot_trace, align 8
  store %struct.trace_array* %10, %struct.trace_array** %9, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %12 = icmp ne %struct.trace_array* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @pre_initcalls_finished, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %54

17:                                               ; preds = %13
  %18 = load %struct.boot_trace_ret*, %struct.boot_trace_ret** %3, align 8
  %19 = getelementptr inbounds %struct.boot_trace_ret, %struct.boot_trace_ret* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @sprint_symbol(i32 %20, i64 %21)
  %23 = call i32 (...) @preempt_disable()
  %24 = load %struct.trace_array*, %struct.trace_array** %9, align 8
  %25 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %24, i32 0, i32 0
  %26 = load %struct.ring_buffer*, %struct.ring_buffer** %25, align 8
  store %struct.ring_buffer* %26, %struct.ring_buffer** %7, align 8
  %27 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %28 = load i32, i32* @TRACE_BOOT_RET, align 4
  %29 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %27, i32 %28, i32 4, i32 0, i32 0)
  store %struct.ring_buffer_event* %29, %struct.ring_buffer_event** %6, align 8
  %30 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %31 = icmp ne %struct.ring_buffer_event* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %52

33:                                               ; preds = %17
  %34 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %35 = call %struct.trace_boot_ret* @ring_buffer_event_data(%struct.ring_buffer_event* %34)
  store %struct.trace_boot_ret* %35, %struct.trace_boot_ret** %8, align 8
  %36 = load %struct.trace_boot_ret*, %struct.trace_boot_ret** %8, align 8
  %37 = getelementptr inbounds %struct.trace_boot_ret, %struct.trace_boot_ret* %36, i32 0, i32 0
  %38 = load %struct.boot_trace_ret*, %struct.boot_trace_ret** %3, align 8
  %39 = bitcast %struct.boot_trace_ret* %37 to i8*
  %40 = bitcast %struct.boot_trace_ret* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  %41 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %5, align 8
  %42 = load %struct.trace_boot_ret*, %struct.trace_boot_ret** %8, align 8
  %43 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %44 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %45 = call i32 @filter_check_discard(%struct.ftrace_event_call* %41, %struct.trace_boot_ret* %42, %struct.ring_buffer* %43, %struct.ring_buffer_event* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %33
  %48 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %49 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %50 = call i32 @trace_buffer_unlock_commit(%struct.ring_buffer* %48, %struct.ring_buffer_event* %49, i32 0, i32 0)
  br label %51

51:                                               ; preds = %47, %33
  br label %52

52:                                               ; preds = %51, %32
  %53 = call i32 (...) @preempt_enable()
  br label %54

54:                                               ; preds = %52, %16
  ret void
}

declare dso_local i32 @sprint_symbol(i32, i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i32, i32) #1

declare dso_local %struct.trace_boot_ret* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.trace_boot_ret*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
