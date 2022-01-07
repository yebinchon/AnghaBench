; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace_trace_special.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_ftrace_trace_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.trace_array = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.special_entry = type { i64, i64, i64 }

@event_special = common dso_local global %struct.ftrace_event_call zeroinitializer, align 4
@TRACE_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i32)* @ftrace_trace_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftrace_trace_special(i8* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ftrace_event_call*, align 8
  %12 = alloca %struct.ring_buffer_event*, align 8
  %13 = alloca %struct.trace_array*, align 8
  %14 = alloca %struct.ring_buffer*, align 8
  %15 = alloca %struct.special_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ftrace_event_call* @event_special, %struct.ftrace_event_call** %11, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.trace_array*
  store %struct.trace_array* %17, %struct.trace_array** %13, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  %19 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %18, i32 0, i32 0
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %19, align 8
  store %struct.ring_buffer* %20, %struct.ring_buffer** %14, align 8
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %22 = load i32, i32* @TRACE_SPECIAL, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer* %21, i32 %22, i32 24, i32 0, i32 %23)
  store %struct.ring_buffer_event* %24, %struct.ring_buffer_event** %12, align 8
  %25 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %26 = icmp ne %struct.ring_buffer_event* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  br label %51

28:                                               ; preds = %5
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %30 = call %struct.special_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %29)
  store %struct.special_entry* %30, %struct.special_entry** %15, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.special_entry*, %struct.special_entry** %15, align 8
  %33 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.special_entry*, %struct.special_entry** %15, align 8
  %36 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.special_entry*, %struct.special_entry** %15, align 8
  %39 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %11, align 8
  %41 = load %struct.special_entry*, %struct.special_entry** %15, align 8
  %42 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %43 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %44 = call i32 @filter_check_discard(%struct.ftrace_event_call* %40, %struct.special_entry* %41, %struct.ring_buffer* %42, %struct.ring_buffer_event* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %28
  %47 = load %struct.ring_buffer*, %struct.ring_buffer** %14, align 8
  %48 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @trace_buffer_unlock_commit(%struct.ring_buffer* %47, %struct.ring_buffer_event* %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %27, %46, %28
  ret void
}

declare dso_local %struct.ring_buffer_event* @trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i32, i32) #1

declare dso_local %struct.special_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @filter_check_discard(%struct.ftrace_event_call*, %struct.special_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
