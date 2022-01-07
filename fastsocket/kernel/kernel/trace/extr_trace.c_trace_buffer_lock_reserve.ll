; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_buffer_lock_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_trace_buffer_lock_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer = type { i32 }
%struct.trace_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca %struct.trace_entry*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.ring_buffer_event* @ring_buffer_lock_reserve(%struct.ring_buffer* %13, i64 %14)
  store %struct.ring_buffer_event* %15, %struct.ring_buffer_event** %11, align 8
  %16 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %17 = icmp ne %struct.ring_buffer_event* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %20 = call %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %19)
  store %struct.trace_entry* %20, %struct.trace_entry** %12, align 8
  %21 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @tracing_generic_entry_update(%struct.trace_entry* %21, i64 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.trace_entry*, %struct.trace_entry** %12, align 8
  %27 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %5
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  ret %struct.ring_buffer_event* %29
}

declare dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(%struct.ring_buffer*, i64) #1

declare dso_local %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @tracing_generic_entry_update(%struct.trace_entry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
