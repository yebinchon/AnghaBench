; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_iter_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { i64, i64, %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_iter_empty(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %4 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %4, i32 0, i32 2
  %6 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.ring_buffer_per_cpu* %6, %struct.ring_buffer_per_cpu** %3, align 8
  %7 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %19 = call i64 @rb_commit_index(%struct.ring_buffer_per_cpu* %18)
  %20 = icmp eq i64 %17, %19
  br label %21

21:                                               ; preds = %14, %1
  %22 = phi i1 [ false, %1 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @rb_commit_index(%struct.ring_buffer_per_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
