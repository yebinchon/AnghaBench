; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c___trace_mmiotrace_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_mmiotrace.c___trace_mmiotrace_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.trace_array_cpu = type { i32 }
%struct.mmiotrace_map = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.trace_mmiotrace_map = type { %struct.mmiotrace_map }

@event_mmiotrace_map = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@TRACE_MMIO_MAP = common dso_local global i32 0, align 4
@dropped_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_array*, %struct.trace_array_cpu*, %struct.mmiotrace_map*)* @__trace_mmiotrace_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__trace_mmiotrace_map(%struct.trace_array* %0, %struct.trace_array_cpu* %1, %struct.mmiotrace_map* %2) #0 {
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca %struct.trace_array_cpu*, align 8
  %6 = alloca %struct.mmiotrace_map*, align 8
  %7 = alloca %struct.ftrace_event_call*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca %struct.trace_mmiotrace_map*, align 8
  %11 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store %struct.trace_array_cpu* %1, %struct.trace_array_cpu** %5, align 8
  store %struct.mmiotrace_map* %2, %struct.mmiotrace_map** %6, align 8
  store %struct.ftrace_event_call* @event_mmiotrace_map, %struct.ftrace_event_call** %7, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = load %struct.ring_buffer*, %struct.ring_buffer** %13, align 8
  store %struct.ring_buffer* %14, %struct.ring_buffer** %8, align 8
  %15 = call i32 (...) @preempt_count()
  store i32 %15, i32* %11, align 4
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %17 = load i32, i32* @TRACE_MMIO_MAP, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %16, i32 %17, i32 4, i32 0, i32 %18)
  store %struct.ring_buffer_event* %19, %struct.ring_buffer_event** %9, align 8
  %20 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %21 = icmp ne %struct.ring_buffer_event* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = call i32 @atomic_inc(i32* @dropped_count)
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %26 = call %struct.trace_mmiotrace_map* @ring_buffer_event_data(%struct.ring_buffer_event* %25)
  store %struct.trace_mmiotrace_map* %26, %struct.trace_mmiotrace_map** %10, align 8
  %27 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %10, align 8
  %28 = getelementptr inbounds %struct.trace_mmiotrace_map, %struct.trace_mmiotrace_map* %27, i32 0, i32 0
  %29 = load %struct.mmiotrace_map*, %struct.mmiotrace_map** %6, align 8
  %30 = bitcast %struct.mmiotrace_map* %28 to i8*
  %31 = bitcast %struct.mmiotrace_map* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %7, align 8
  %33 = load %struct.trace_mmiotrace_map*, %struct.trace_mmiotrace_map** %10, align 8
  %34 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %35 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %36 = call i32 @filter_check_discard(%struct.ftrace_event_call* %32, %struct.trace_mmiotrace_map* %33, %struct.ring_buffer* %34, %struct.ring_buffer_event* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %24
  %39 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %40 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @trace_buffer_unlock_commit(%struct.ring_buffer* %39, %struct.ring_buffer_event* %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %22, %38, %24
  ret void
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.trace_mmiotrace_map* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.trace_mmiotrace_map*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
