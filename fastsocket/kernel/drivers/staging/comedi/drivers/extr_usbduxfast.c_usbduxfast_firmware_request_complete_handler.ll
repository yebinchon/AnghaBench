; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_firmware_request_complete_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_firmware_request_complete_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.usbduxfastsub_s = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Could not upload firmware (err=%d)\0A\00", align 1
@BOARDNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @usbduxfast_firmware_request_complete_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxfast_firmware_request_complete_handler(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usbduxfastsub_s*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.usbduxfastsub_s*
  store %struct.usbduxfastsub_s* %9, %struct.usbduxfastsub_s** %5, align 8
  %10 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %11 = getelementptr inbounds %struct.usbduxfastsub_s, %struct.usbduxfastsub_s* %10, i32 0, i32 0
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  %13 = load %struct.firmware*, %struct.firmware** %3, align 8
  %14 = icmp eq %struct.firmware* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.usbduxfastsub_s*, %struct.usbduxfastsub_s** %5, align 8
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.firmware*, %struct.firmware** %3, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @firmwareUpload(%struct.usbduxfastsub_s* %17, i32 %20, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %36

32:                                               ; preds = %16
  %33 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %34 = load i32, i32* @BOARDNAME, align 4
  %35 = call i32 @comedi_usb_auto_config(%struct.usb_device* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.firmware*, %struct.firmware** %3, align 8
  %38 = call i32 @release_firmware(%struct.firmware* %37)
  br label %39

39:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @firmwareUpload(%struct.usbduxfastsub_s*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @comedi_usb_auto_config(%struct.usb_device*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
