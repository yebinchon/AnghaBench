; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_peek_next_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_peek_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { %struct.TYPE_2__*, %struct.ring_buffer_iter** }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_iter = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_entry* (%struct.trace_iterator*, i32, i32*)* @peek_next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_entry* @peek_next_entry(%struct.trace_iterator* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer_iter*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %9, i32 0, i32 1
  %11 = load %struct.ring_buffer_iter**, %struct.ring_buffer_iter*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %11, i64 %13
  %15 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %14, align 8
  store %struct.ring_buffer_iter* %15, %struct.ring_buffer_iter** %8, align 8
  %16 = call i32 (...) @ftrace_disable_cpu()
  %17 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %8, align 8
  %18 = icmp ne %struct.ring_buffer_iter* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %20, i32* %21)
  store %struct.ring_buffer_event* %22, %struct.ring_buffer_event** %7, align 8
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %25 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call %struct.ring_buffer_event* @ring_buffer_peek(i32 %28, i32 %29, i32* %30)
  store %struct.ring_buffer_event* %31, %struct.ring_buffer_event** %7, align 8
  br label %32

32:                                               ; preds = %23, %19
  %33 = call i32 (...) @ftrace_enable_cpu()
  %34 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %35 = icmp ne %struct.ring_buffer_event* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %38 = call %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %37)
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi %struct.trace_entry* [ %38, %36 ], [ null, %39 ]
  ret %struct.trace_entry* %41
}

declare dso_local i32 @ftrace_disable_cpu(...) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_peek(i32, i32, i32*) #1

declare dso_local i32 @ftrace_enable_cpu(...) #1

declare dso_local %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
