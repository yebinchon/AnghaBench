; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_firmware_request_complete_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_firmware_request_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.usbduxsub = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Firmware complete handler without firmware!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not upload firmware (err=%d)\0A\00", align 1
@BOARDNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @usbdux_firmware_request_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbdux_firmware_request_complete_handler(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usbduxsub*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.usbduxsub*
  store %struct.usbduxsub* %9, %struct.usbduxsub** %5, align 8
  %10 = load %struct.usbduxsub*, %struct.usbduxsub** %5, align 8
  %11 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %10, i32 0, i32 0
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.firmware*, %struct.firmware** %3, align 8
  %14 = icmp eq %struct.firmware* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.usbduxsub*, %struct.usbduxsub** %5, align 8
  %21 = load %struct.firmware*, %struct.firmware** %3, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.firmware*, %struct.firmware** %3, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @firmwareUpload(%struct.usbduxsub* %20, i32 %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = load i32, i32* @BOARDNAME, align 4
  %38 = call i32 @comedi_usb_auto_config(%struct.usb_device* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.firmware*, %struct.firmware** %3, align 8
  %41 = call i32 @release_firmware(%struct.firmware* %40)
  br label %42

42:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @firmwareUpload(%struct.usbduxsub*, i32, i32) #1

declare dso_local i32 @comedi_usb_auto_config(%struct.usb_device*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
