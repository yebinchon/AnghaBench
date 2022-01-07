; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_irq_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_softirq.c_irq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@IRQ_EXIT_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_exit() #0 {
  %1 = load i32, i32* @current, align 4
  %2 = call i32 @account_system_vtime(i32 %1)
  %3 = call i32 (...) @trace_hardirq_exit()
  %4 = load i32, i32* @IRQ_EXIT_OFFSET, align 4
  %5 = call i32 @sub_preempt_count(i32 %4)
  %6 = call i32 (...) @in_interrupt()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = call i64 (...) @local_softirq_pending()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (...) @invoke_softirq()
  br label %13

13:                                               ; preds = %11, %8, %0
  %14 = call i32 (...) @preempt_enable_no_resched()
  ret void
}

declare dso_local i32 @account_system_vtime(i32) #1

declare dso_local i32 @trace_hardirq_exit(...) #1

declare dso_local i32 @sub_preempt_count(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @local_softirq_pending(...) #1

declare dso_local i32 @invoke_softirq(...) #1

declare dso_local i32 @preempt_enable_no_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
