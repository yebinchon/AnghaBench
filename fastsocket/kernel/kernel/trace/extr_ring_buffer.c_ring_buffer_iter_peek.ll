; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer_iter = type { %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i32 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %0, i32* %1) #0 {
  %3 = alloca %struct.ring_buffer_iter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca i64, align 8
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %9 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %8, i32 0, i32 0
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  store %struct.ring_buffer_per_cpu* %10, %struct.ring_buffer_per_cpu** %5, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter* %16, i32* %17)
  store %struct.ring_buffer_event* %18, %struct.ring_buffer_event** %6, align 8
  %19 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %24 = icmp ne %struct.ring_buffer_event* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %27 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %11

32:                                               ; preds = %25, %11
  %33 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  ret %struct.ring_buffer_event* %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
