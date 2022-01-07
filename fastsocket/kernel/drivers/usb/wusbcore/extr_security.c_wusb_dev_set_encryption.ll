; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_set_encryption.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_security.c_wusb_dev_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.wusb_dev*, %struct.device }
%struct.wusb_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@USB_REQ_SET_ENCRYPTION = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Can't set device's WUSB encryption to %s (value %d): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @wusb_dev_set_encryption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_dev_set_encryption(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.wusb_dev*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load %struct.wusb_dev*, %struct.wusb_dev** %11, align 8
  store %struct.wusb_dev* %12, %struct.wusb_dev** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %17 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = call i32 @usb_sndctrlpipe(%struct.usb_device* %23, i32 0)
  %25 = load i32, i32* @USB_REQ_SET_ENCRYPTION, align 4
  %26 = load i32, i32* @USB_DIR_OUT, align 4
  %27 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @usb_control_msg(%struct.usb_device* %22, i32 %24, i32 %25, i32 %30, i32 %31, i32 0, i32* null, i32 0, i32 1000)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %38 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wusb_et_name(i32 %40)
  %42 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %43 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @wusb_et_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
