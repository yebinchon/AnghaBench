; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxSubmitRegInUrb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wwrap.c_zfLnxSubmitRegInUrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { i32, i32, i32 }

@USB_REG_IN_PIPE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@ZM_USB_REG_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@zfLnxUsbRegIn_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfLnxSubmitRegInUrb(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.usbdrv_private*, %struct.usbdrv_private** %6, align 8
  store %struct.usbdrv_private* %7, %struct.usbdrv_private** %4, align 8
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %9 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %12 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @USB_REG_IN_PIPE, align 4
  %15 = load i32, i32* @USB_DIR_IN, align 4
  %16 = load %struct.usbdrv_private*, %struct.usbdrv_private** %4, align 8
  %17 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ZM_USB_REG_MAX_BUF_SIZE, align 4
  %20 = load i32, i32* @zfLnxUsbRegIn_callback, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @zfLnxUsbSubmitIntUrb(i32 %10, i32 %13, i32 %14, i32 %15, i32 %18, i32 %19, i32 %20, %struct.TYPE_4__* %21, i32 1)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @zfLnxUsbSubmitIntUrb(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
