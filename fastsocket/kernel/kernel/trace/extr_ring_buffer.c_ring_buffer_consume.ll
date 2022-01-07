; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_consume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i32 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_consume(%struct.ring_buffer* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %8, align 8
  %11 = call i32 (...) @rb_ok_to_lock()
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %66, %3
  %13 = call i32 (...) @preempt_disable()
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpumask_test_cpu(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %56

21:                                               ; preds = %12
  %22 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %22, i32 0, i32 0
  %24 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %24, i64 %26
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %27, align 8
  store %struct.ring_buffer_per_cpu* %28, %struct.ring_buffer_per_cpu** %7, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  br label %37

37:                                               ; preds = %33, %21
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %38, i32* %39)
  store %struct.ring_buffer_event* %40, %struct.ring_buffer_event** %8, align 8
  %41 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %42 = icmp ne %struct.ring_buffer_event* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %45 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @local_irq_restore(i64 %54)
  br label %56

56:                                               ; preds = %53, %20
  %57 = call i32 (...) @preempt_enable()
  %58 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %59 = icmp ne %struct.ring_buffer_event* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %62 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %12

67:                                               ; preds = %60, %56
  %68 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  ret %struct.ring_buffer_event* %68
}

declare dso_local i32 @rb_ok_to_lock(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu*, i32*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
