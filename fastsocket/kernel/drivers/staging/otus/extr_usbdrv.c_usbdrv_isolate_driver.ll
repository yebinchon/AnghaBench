; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_isolate_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_usbdrv_isolate_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbdrv_private = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbdrv_isolate_driver(%struct.usbdrv_private* %0) #0 {
  %2 = alloca %struct.usbdrv_private*, align 8
  store %struct.usbdrv_private* %0, %struct.usbdrv_private** %2, align 8
  %3 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %4 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %3, i32 0, i32 1
  %5 = call i32 @write_lock_irq(i32* %4)
  %6 = load i32, i32* @TRUE, align 4
  %7 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %8 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %10 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %9, i32 0, i32 1
  %11 = call i32 @write_unlock_irq(i32* %10)
  %12 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %13 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @netif_running(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_carrier_off(i32 %20)
  %22 = load %struct.usbdrv_private*, %struct.usbdrv_private** %2, align 8
  %23 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_stop_queue(i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
