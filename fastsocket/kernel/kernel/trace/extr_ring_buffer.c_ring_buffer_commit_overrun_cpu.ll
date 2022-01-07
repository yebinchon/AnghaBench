; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_commit_overrun_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_commit_overrun_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ring_buffer_commit_overrun_cpu(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca i64, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @cpumask_test_cpu(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 0
  %18 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %18, i64 %20
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %21, align 8
  store %struct.ring_buffer_per_cpu* %22, %struct.ring_buffer_per_cpu** %6, align 8
  %23 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %23, i32 0, i32 0
  %25 = call i64 @local_read(i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i64 @local_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
