; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_usb.c_zfwUsbRegisterCallBack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_usb.c_zfwUsbRegisterCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.usbdrv_private* }
%struct.usbdrv_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.zfCbUsbFuncTbl = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfwUsbRegisterCallBack(%struct.TYPE_5__* %0, %struct.zfCbUsbFuncTbl* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.zfCbUsbFuncTbl*, align 8
  %5 = alloca %struct.usbdrv_private*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.zfCbUsbFuncTbl* %1, %struct.zfCbUsbFuncTbl** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.usbdrv_private*, %struct.usbdrv_private** %7, align 8
  store %struct.usbdrv_private* %8, %struct.usbdrv_private** %5, align 8
  %9 = load %struct.zfCbUsbFuncTbl*, %struct.zfCbUsbFuncTbl** %4, align 8
  %10 = getelementptr inbounds %struct.zfCbUsbFuncTbl, %struct.zfCbUsbFuncTbl* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %13 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load %struct.zfCbUsbFuncTbl*, %struct.zfCbUsbFuncTbl** %4, align 8
  %16 = getelementptr inbounds %struct.zfCbUsbFuncTbl, %struct.zfCbUsbFuncTbl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %19 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.zfCbUsbFuncTbl*, %struct.zfCbUsbFuncTbl** %4, align 8
  %22 = getelementptr inbounds %struct.zfCbUsbFuncTbl, %struct.zfCbUsbFuncTbl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usbdrv_private*, %struct.usbdrv_private** %5, align 8
  %25 = getelementptr inbounds %struct.usbdrv_private, %struct.usbdrv_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
