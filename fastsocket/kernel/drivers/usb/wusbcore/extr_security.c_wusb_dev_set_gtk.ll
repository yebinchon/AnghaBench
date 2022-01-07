; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_set_gtk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_set_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wusb_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_REQ_SET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, %struct.wusb_dev*)* @wusb_dev_set_gtk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_dev_set_gtk(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.usb_device*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %6 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %7 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %6, i32 0, i32 0
  %8 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  store %struct.usb_device* %8, %struct.usb_device** %5, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = call i32 @usb_sndctrlpipe(%struct.usb_device* %10, i32 0)
  %12 = load i32, i32* @USB_REQ_SET_DESCRIPTOR, align 4
  %13 = load i32, i32* @USB_DIR_OUT, align 4
  %14 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_DT_KEY, align 4
  %19 = shl i32 %18, 8
  %20 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %21 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %28 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_control_msg(%struct.usb_device* %9, i32 %11, i32 %12, i32 %17, i32 %23, i32 0, %struct.TYPE_4__* %26, i32 %31, i32 1000)
  ret i32 %32
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
