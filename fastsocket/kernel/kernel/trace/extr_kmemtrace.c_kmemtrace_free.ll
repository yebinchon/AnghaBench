; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { i32 }
%struct.kmemtrace_free_entry = type { i32, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_event = type { i32 }

@event_kmem_free = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@kmemtrace_array = common dso_local global %struct.trace_array* null, align 8
@TRACE_KMEM_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @kmemtrace_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemtrace_free(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ftrace_event_call*, align 8
  %8 = alloca %struct.trace_array*, align 8
  %9 = alloca %struct.kmemtrace_free_entry*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.ftrace_event_call* @event_kmem_free, %struct.ftrace_event_call** %7, align 8
  %11 = load %struct.trace_array*, %struct.trace_array** @kmemtrace_array, align 8
  store %struct.trace_array* %11, %struct.trace_array** %8, align 8
  %12 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32 %14, i32 32)
  store %struct.ring_buffer_event* %15, %struct.ring_buffer_event** %10, align 8
  %16 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %17 = icmp ne %struct.ring_buffer_event* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %21 = call %struct.kmemtrace_free_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %20)
  store %struct.kmemtrace_free_entry* %21, %struct.kmemtrace_free_entry** %9, align 8
  %22 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %23 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %22, i32 0, i32 3
  %24 = call i32 @tracing_generic_entry_update(%struct.TYPE_2__* %23, i32 0, i32 0)
  %25 = load i32, i32* @TRACE_KMEM_FREE, align 4
  %26 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %27 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %31 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %34 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %37 = getelementptr inbounds %struct.kmemtrace_free_entry, %struct.kmemtrace_free_entry* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %7, align 8
  %39 = load %struct.kmemtrace_free_entry*, %struct.kmemtrace_free_entry** %9, align 8
  %40 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %41 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %44 = call i32 @filter_check_discard(%struct.ftrace_event_call* %38, %struct.kmemtrace_free_entry* %39, i32 %42, %struct.ring_buffer_event* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %19
  %47 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  %48 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %51 = call i32 @ring_buffer_unlock_commit(i32 %49, %struct.ring_buffer_event* %50)
  br label %52

52:                                               ; preds = %46, %19
  %53 = call i32 (...) @trace_wake_up()
  br label %54

54:                                               ; preds = %52, %18
  ret void
}

declare dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32, i32) #1

declare dso_local %struct.kmemtrace_free_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @tracing_generic_entry_update(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.kmemtrace_free_entry*, i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_unlock_commit(i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_wake_up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
