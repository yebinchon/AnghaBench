; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.TYPE_3__ = type { %struct.ring_buffer* }

@tracing_start_lock = common dso_local global i32 0, align 4
@trace_stop_count = common dso_local global i32 0, align 4
@ftrace_max_lock = common dso_local global i32 0, align 4
@global_trace = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@max_tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_stop() #0 {
  %1 = alloca %struct.ring_buffer*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @ftrace_stop()
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @tracing_start_lock, i64 %4)
  %6 = load i32, i32* @trace_stop_count, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @trace_stop_count, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %27

10:                                               ; preds = %0
  %11 = call i32 @__raw_spin_lock(i32* @ftrace_max_lock)
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global_trace, i32 0, i32 0), align 8
  store %struct.ring_buffer* %12, %struct.ring_buffer** %1, align 8
  %13 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %14 = icmp ne %struct.ring_buffer* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %17 = call i32 @ring_buffer_record_disable(%struct.ring_buffer* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @max_tr, i32 0, i32 0), align 8
  store %struct.ring_buffer* %19, %struct.ring_buffer** %1, align 8
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %21 = icmp ne %struct.ring_buffer* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %1, align 8
  %24 = call i32 @ring_buffer_record_disable(%struct.ring_buffer* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = call i32 @__raw_spin_unlock(i32* @ftrace_max_lock)
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @tracing_start_lock, i64 %28)
  ret void
}

declare dso_local i32 @ftrace_stop(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_spin_lock(i32*) #1

declare dso_local i32 @ring_buffer_record_disable(%struct.ring_buffer*) #1

declare dso_local i32 @__raw_spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
