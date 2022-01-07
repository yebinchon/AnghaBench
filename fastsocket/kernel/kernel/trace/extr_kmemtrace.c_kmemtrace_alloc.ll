; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_kmemtrace.c_kmemtrace_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.trace_array = type { i32 }
%struct.kmemtrace_alloc_entry = type { i32, i64, i64, i64, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_event = type { i32 }

@event_kmem_alloc = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@kmemtrace_array = common dso_local global %struct.trace_array* null, align 8
@TRACE_KMEM_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*, i64, i64, i32, i32)* @kmemtrace_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemtrace_alloc(i32 %0, i64 %1, i8* %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ftrace_event_call*, align 8
  %16 = alloca %struct.trace_array*, align 8
  %17 = alloca %struct.kmemtrace_alloc_entry*, align 8
  %18 = alloca %struct.ring_buffer_event*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.ftrace_event_call* @event_kmem_alloc, %struct.ftrace_event_call** %15, align 8
  %19 = load %struct.trace_array*, %struct.trace_array** @kmemtrace_array, align 8
  store %struct.trace_array* %19, %struct.trace_array** %16, align 8
  %20 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  %21 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32 %22, i32 56)
  store %struct.ring_buffer_event* %23, %struct.ring_buffer_event** %18, align 8
  %24 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %18, align 8
  %25 = icmp ne %struct.ring_buffer_event* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %7
  br label %74

27:                                               ; preds = %7
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %18, align 8
  %29 = call %struct.kmemtrace_alloc_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %28)
  store %struct.kmemtrace_alloc_entry* %29, %struct.kmemtrace_alloc_entry** %17, align 8
  %30 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %31 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %30, i32 0, i32 7
  %32 = call i32 @tracing_generic_entry_update(%struct.TYPE_2__* %31, i32 0, i32 0)
  %33 = load i32, i32* @TRACE_KMEM_ALLOC, align 4
  %34 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %35 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %39 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %42 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %45 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %48 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %51 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %54 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %57 = getelementptr inbounds %struct.kmemtrace_alloc_entry, %struct.kmemtrace_alloc_entry* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %15, align 8
  %59 = load %struct.kmemtrace_alloc_entry*, %struct.kmemtrace_alloc_entry** %17, align 8
  %60 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  %61 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %18, align 8
  %64 = call i32 @filter_check_discard(%struct.ftrace_event_call* %58, %struct.kmemtrace_alloc_entry* %59, i32 %62, %struct.ring_buffer_event* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %27
  %67 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  %68 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %18, align 8
  %71 = call i32 @ring_buffer_unlock_commit(i32 %69, %struct.ring_buffer_event* %70)
  br label %72

72:                                               ; preds = %66, %27
  %73 = call i32 (...) @trace_wake_up()
  br label %74

74:                                               ; preds = %72, %26
  ret void
}

declare dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32, i32) #1

declare dso_local %struct.kmemtrace_alloc_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @tracing_generic_entry_update(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.kmemtrace_alloc_entry*, i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @ring_buffer_unlock_commit(i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_wake_up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
