; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_resume_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_resume_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.clock_event_device* }
%struct.clock_event_device = type { i32 }

@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CLOCK_EVT_MODE_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_resume_broadcast() #0 {
  %1 = alloca %struct.clock_event_device*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %4)
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 1), align 8
  store %struct.clock_event_device* %6, %struct.clock_event_device** %1, align 8
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %8 = icmp ne %struct.clock_event_device* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %11 = load i32, i32* @CLOCK_EVT_MODE_RESUME, align 4
  %12 = call i32 @clockevents_set_mode(%struct.clock_event_device* %10, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  switch i32 %13, label %28 [
    i32 128, label %14
    i32 129, label %25
  ]

14:                                               ; preds = %9
  %15 = call i32 (...) @tick_get_broadcast_mask()
  %16 = call i32 @cpumask_empty(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %20 = call i32 @tick_broadcast_start_periodic(%struct.clock_event_device* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = call i32 (...) @smp_processor_id()
  %23 = call i32 (...) @tick_get_broadcast_mask()
  %24 = call i32 @cpumask_test_cpu(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %9
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %27 = call i32 @tick_resume_broadcast_oneshot(%struct.clock_event_device* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %9, %25, %21
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clockevents_set_mode(%struct.clock_event_device*, i32) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @tick_get_broadcast_mask(...) #1

declare dso_local i32 @tick_broadcast_start_periodic(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @tick_resume_broadcast_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
