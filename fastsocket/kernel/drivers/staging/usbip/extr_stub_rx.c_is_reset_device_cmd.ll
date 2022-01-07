; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_is_reset_device_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_rx.c_is_reset_device_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64 }
%struct.usb_ctrlrequest = type { i64, i64, i32, i32 }

@USB_REQ_SET_FEATURE = common dso_local global i64 0, align 8
@USB_RT_PORT = common dso_local global i64 0, align 8
@USB_PORT_FEAT_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"reset_device_cmd, port %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @is_reset_device_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_reset_device_cmd(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %3, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %10, %struct.usb_ctrlrequest** %4, align 8
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @le16_to_cpu(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_REQ_SET_FEATURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB_RT_PORT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @USB_PORT_FEAT_RESET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @usbip_dbg_stub_rx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %35)
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %30, %24, %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @usbip_dbg_stub_rx(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
