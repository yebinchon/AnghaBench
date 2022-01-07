; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_start_sched_switch_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_sched_switch.c_tracing_start_sched_switch_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx_trace = common dso_local global i32 0, align 4
@sched_register_mutex = common dso_local global i32 0, align 4
@tracer_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tracing_start_sched_switch_record() #0 {
  %1 = load i32, i32* @ctx_trace, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i64 @unlikely(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @WARN_ON(i32 1)
  br label %15

9:                                                ; preds = %0
  %10 = call i32 (...) @tracing_start_sched_switch()
  %11 = call i32 @mutex_lock(i32* @sched_register_mutex)
  %12 = load i32, i32* @tracer_enabled, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @tracer_enabled, align 4
  %14 = call i32 @mutex_unlock(i32* @sched_register_mutex)
  br label %15

15:                                               ; preds = %9, %7
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tracing_start_sched_switch(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
