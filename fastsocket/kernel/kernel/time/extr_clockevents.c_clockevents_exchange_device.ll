; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_exchange_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_exchange_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i32 }

@CLOCK_EVT_MODE_UNUSED = common dso_local global i64 0, align 8
@clockevents_released = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clockevents_exchange_device(%struct.clock_event_device* %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %9 = icmp ne %struct.clock_event_device* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = load i64, i64* @CLOCK_EVT_MODE_UNUSED, align 8
  %13 = call i32 @clockevents_set_mode(%struct.clock_event_device* %11, i64 %12)
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %18 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %17, i32 0, i32 1
  %19 = call i32 @list_add(i32* %18, i32* @clockevents_released)
  br label %20

20:                                               ; preds = %10, %2
  %21 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %22 = icmp ne %struct.clock_event_device* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CLOCK_EVT_MODE_UNUSED, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %32 = call i32 @clockevents_shutdown(%struct.clock_event_device* %31)
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @clockevents_set_mode(%struct.clock_event_device*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clockevents_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
