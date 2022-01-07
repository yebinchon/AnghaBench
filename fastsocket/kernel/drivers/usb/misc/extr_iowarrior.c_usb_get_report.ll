; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_usb_get_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_iowarrior.c_usb_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@GET_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_host_interface*, i8, i8, i8*, i32)* @usb_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_report(%struct.usb_device* %0, %struct.usb_host_interface* %1, i8 zeroext %2, i8 zeroext %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store %struct.usb_host_interface* %1, %struct.usb_host_interface** %8, align 8
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %15 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @USB_REQ_GET_REPORT, align 4
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = load i32, i32* @USB_TYPE_CLASS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load i8, i8* %9, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @GET_TIMEOUT, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @usb_control_msg(%struct.usb_device* %13, i32 %15, i32 %16, i32 %21, i8 zeroext %28, i32 %32, i8* %33, i32 %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i8 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
