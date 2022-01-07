; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_reset_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_reset_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_buffer_reset_cpu(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %7, i32 0, i32 1
  %9 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, i64 %11
  %13 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %12, align 8
  store %struct.ring_buffer_per_cpu* %13, %struct.ring_buffer_per_cpu** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpumask_test_cpu(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 1
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %30 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %31 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %30, i32 0, i32 3
  %32 = call i32 @local_read(i32* %31)
  %33 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %45

36:                                               ; preds = %21
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 2
  %39 = call i32 @__raw_spin_lock(i32* %38)
  %40 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %41 = call i32 @rb_reset_cpu(%struct.ring_buffer_per_cpu* %40)
  %42 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %43 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %42, i32 0, i32 2
  %44 = call i32 @__raw_spin_unlock(i32* %43)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %46, i32 0, i32 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %50, i32 0, i32 0
  %52 = call i32 @atomic_dec(i32* %51)
  br label %53

53:                                               ; preds = %45, %20
  ret void
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i32 @rb_reset_cpu(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
