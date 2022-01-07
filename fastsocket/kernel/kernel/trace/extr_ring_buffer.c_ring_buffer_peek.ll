; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer = type { i32, %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_peek(%struct.ring_buffer* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ring_buffer_per_cpu*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %12, i32 0, i32 1
  %14 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %14, i64 %16
  %18 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %17, align 8
  store %struct.ring_buffer_per_cpu* %18, %struct.ring_buffer_per_cpu** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cpumask_test_cpu(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %4, align 8
  br label %73

26:                                               ; preds = %3
  %27 = call i32 (...) @rb_ok_to_lock()
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %70, %26
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @local_irq_save(i64 %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %38, i32* %39)
  store %struct.ring_buffer_event* %40, %struct.ring_buffer_event** %9, align 8
  %41 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %42 = icmp ne %struct.ring_buffer_event* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %45 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %51 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %50)
  br label %52

52:                                               ; preds = %49, %43, %37
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %57 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @local_irq_restore(i64 %60)
  %62 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %63 = icmp ne %struct.ring_buffer_event* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %66 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %28

71:                                               ; preds = %64, %59
  %72 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  store %struct.ring_buffer_event* %72, %struct.ring_buffer_event** %4, align 8
  br label %73

73:                                               ; preds = %71, %25
  %74 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  ret %struct.ring_buffer_event* %74
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @rb_ok_to_lock(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu*, i32*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
