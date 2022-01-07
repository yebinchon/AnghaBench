; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_shutdown_broadcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_shutdown_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.clock_event_device* }
%struct.clock_event_device = type { i32 }

@tick_broadcast_lock = common dso_local global i32 0, align 4
@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TICKDEV_MODE_PERIODIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_shutdown_broadcast(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @tick_broadcast_lock, i64 %8)
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 1), align 8
  store %struct.clock_event_device* %10, %struct.clock_event_device** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (...) @tick_get_broadcast_mask()
  %13 = call i32 @cpumask_clear_cpu(i32 %11, i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %15 = load i64, i64* @TICKDEV_MODE_PERIODIC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %19 = icmp ne %struct.clock_event_device* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = call i32 (...) @tick_get_broadcast_mask()
  %22 = call i64 @cpumask_empty(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %26 = call i32 @clockevents_shutdown(%struct.clock_event_device* %25)
  br label %27

27:                                               ; preds = %24, %20, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @tick_broadcast_lock, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32) #1

declare dso_local i32 @tick_get_broadcast_mask(...) #1

declare dso_local i64 @cpumask_empty(i32) #1

declare dso_local i32 @clockevents_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
