; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sierra_ms.c_sierra_get_swoc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sierra_ms.c_sierra_get_swoc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.swoc_info = type { i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"SWIMS: Attempting to get TRU-Install info.\0A\00", align 1
@SWIMS_USB_REQUEST_GetSwocInfo = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.swoc_info*)* @sierra_get_swoc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_get_swoc_info(%struct.usb_device* %0, %struct.swoc_info* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.swoc_info*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.swoc_info* %1, %struct.swoc_info** %4, align 8
  %6 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %8, i32 0)
  %10 = load i32, i32* @SWIMS_USB_REQUEST_GetSwocInfo, align 4
  %11 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %12 = load i32, i32* @USB_DIR_IN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %15 = bitcast %struct.swoc_info* %14 to i8*
  %16 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %17 = call i32 @usb_control_msg(%struct.usb_device* %7, i32 %9, i32 %10, i32 %13, i32 0, i32 0, i8* %15, i32 16, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %19 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @le16_to_cpu(i8* %20)
  %22 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %23 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %25 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @le16_to_cpu(i8* %26)
  %28 = load %struct.swoc_info*, %struct.swoc_info** %4, align 8
  %29 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
