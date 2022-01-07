; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_empty_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_empty_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_empty_cpu(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpumask_test_cpu(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = call i32 (...) @rb_ok_to_lock()
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %19, i32 0, i32 0
  %21 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %21, i64 %23
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %24, align 8
  store %struct.ring_buffer_per_cpu* %25, %struct.ring_buffer_per_cpu** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %32 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  br label %34

34:                                               ; preds = %30, %17
  %35 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %36 = call i32 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %41 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @rb_ok_to_lock(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
