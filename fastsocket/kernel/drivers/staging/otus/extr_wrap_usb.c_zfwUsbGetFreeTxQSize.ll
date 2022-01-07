; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_usb.c_zfwUsbGetFreeTxQSize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_usb.c_zfwUsbGetFreeTxQSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i64 }

@ZM_MAX_TX_BUF_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfwUsbGetFreeTxQSize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.usbdrv_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  store %struct.usbdrv_private* %8, %struct.usbdrv_private** %3, align 8
  %9 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %10 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i64, i64* @ZM_MAX_TX_BUF_NUM, align 8
  %14 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %15 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %4, align 8
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %3, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i64, i64* %4, align 8
  ret i64 %22
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
