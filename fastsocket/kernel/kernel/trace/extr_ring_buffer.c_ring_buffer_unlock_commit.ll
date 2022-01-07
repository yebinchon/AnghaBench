; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_unlock_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_unlock_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer_event = type { i32 }

@rb_need_resched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_unlock_commit(%struct.ring_buffer* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  %7 = call i32 (...) @raw_smp_processor_id()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %8, i32 0, i32 0
  %10 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, i64 %12
  %14 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %13, align 8
  store %struct.ring_buffer_per_cpu* %14, %struct.ring_buffer_per_cpu** %5, align 8
  %15 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %16 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %17 = call i32 @rb_commit(%struct.ring_buffer_per_cpu* %15, %struct.ring_buffer_event* %16)
  %18 = call i32 (...) @trace_recursive_unlock()
  %19 = call i32 (...) @preempt_count()
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @rb_need_resched, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @per_cpu(i32 %22, i32 %23)
  %25 = call i32 @ftrace_preempt_enable(i32 %24)
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @preempt_enable_no_resched_notrace()
  br label %28

28:                                               ; preds = %26, %21
  ret i32 0
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @rb_commit(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @trace_recursive_unlock(...) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @ftrace_preempt_enable(i32) #1

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @preempt_enable_no_resched_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
