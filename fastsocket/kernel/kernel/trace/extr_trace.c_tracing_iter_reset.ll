; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_iter_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_iter_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.trace_array*, %struct.ring_buffer_iter** }
%struct.trace_array = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.ring_buffer_iter = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_iterator*, i32)* @tracing_iter_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_iter_reset(%struct.trace_iterator* %0, i32 %1) #0 {
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.ring_buffer_iter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 0
  %12 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  store %struct.trace_array* %12, %struct.trace_array** %5, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %14 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %21, i32 0, i32 1
  %23 = load %struct.ring_buffer_iter**, %struct.ring_buffer_iter*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %23, i64 %25
  %27 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %26, align 8
  %28 = icmp ne %struct.ring_buffer_iter* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %68

30:                                               ; preds = %2
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 1
  %33 = load %struct.ring_buffer_iter**, %struct.ring_buffer_iter*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %33, i64 %35
  %37 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %36, align 8
  store %struct.ring_buffer_iter* %37, %struct.ring_buffer_iter** %7, align 8
  %38 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %39 = call i32 @ring_buffer_iter_reset(%struct.ring_buffer_iter* %38)
  br label %40

40:                                               ; preds = %53, %30
  %41 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %42 = call %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %41, i64* %9)
  store %struct.ring_buffer_event* %42, %struct.ring_buffer_event** %6, align 8
  %43 = icmp ne %struct.ring_buffer_event* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %47 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %46, i32 0, i32 0
  %48 = load %struct.trace_array*, %struct.trace_array** %47, align 8
  %49 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %58

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %7, align 8
  %57 = call i32 @ring_buffer_read(%struct.ring_buffer_iter* %56, i32* null)
  br label %40

58:                                               ; preds = %52, %40
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %61 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 %59, i64* %67, align 8
  br label %68

68:                                               ; preds = %58, %29
  ret void
}

declare dso_local i32 @ring_buffer_iter_reset(%struct.ring_buffer_iter*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter*, i64*) #1

declare dso_local i32 @ring_buffer_read(%struct.ring_buffer_iter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
