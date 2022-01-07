; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_is_broadcast_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_tick-broadcast.c_tick_is_broadcast_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clock_event_device* }
%struct.clock_event_device = type { i32 }

@tick_broadcast_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tick_is_broadcast_device(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %4 = icmp ne %struct.clock_event_device* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tick_broadcast_device, i32 0, i32 0), align 8
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %8 = icmp eq %struct.clock_event_device* %6, %7
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
