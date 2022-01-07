; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_device_uses_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_device_uses_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.clock_event_device = type { i32, i32 }

@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_handle_periodic = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_device_uses_broadcast(%struct.clock_event_device* %0, i32 %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %8)
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %11 = call i32 @tick_device_is_functional(%struct.clock_event_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @tick_handle_periodic, align 4
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %16 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (...) @tick_get_broadcast_mask()
  %19 = call i32 @cpumask_set_cpu(i32 %17, i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 4
  %21 = call i32 @tick_broadcast_start_periodic(i32 %20)
  store i32 1, i32* %6, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %24 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = call i32 (...) @smp_processor_id()
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (...) @tick_get_broadcast_mask()
  %33 = call i32 @cpumask_clear_cpu(i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @tick_broadcast_clear_oneshot(i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36, %13
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tick_device_is_functional(%struct.clock_event_device*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @tick_get_broadcast_mask(...) #1

declare dso_local i32 @tick_broadcast_start_periodic(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @tick_broadcast_clear_oneshot(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
