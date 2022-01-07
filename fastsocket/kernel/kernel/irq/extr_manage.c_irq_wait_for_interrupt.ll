; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_irq_wait_for_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/irq/extr_manage.c_irq_wait_for_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irqaction*)* @irq_wait_for_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_wait_for_interrupt(%struct.irqaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irqaction*, align 8
  store %struct.irqaction* %0, %struct.irqaction** %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = call i32 (...) @kthread_should_stop()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %10 = call i32 @set_current_state(i32 %9)
  %11 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %12 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  %13 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %12, i32 0, i32 0
  %14 = call i64 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* @TASK_RUNNING, align 4
  %18 = call i32 @__set_current_state(i32 %17)
  store i32 0, i32* %2, align 4
  br label %22

19:                                               ; preds = %8
  %20 = call i32 (...) @schedule()
  br label %4

21:                                               ; preds = %4
  store i32 -1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
