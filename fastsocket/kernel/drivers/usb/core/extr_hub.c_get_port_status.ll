; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_get_port_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_port_status = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@USB_STS_RETRIES = common dso_local global i32 0, align 4
@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RT_PORT = common dso_local global i32 0, align 4
@USB_STS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, %struct.usb_port_status*)* @get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port_status(%struct.usb_device* %0, i32 %1, %struct.usb_port_status* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_port_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.usb_port_status* %2, %struct.usb_port_status** %6, align 8
  %9 = load i32, i32* @ETIMEDOUT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @USB_STS_RETRIES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ETIMEDOUT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ false, %11 ], [ %19, %15 ]
  br i1 %21, label %22, label %37

22:                                               ; preds = %20
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %24, i32 0)
  %26 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_RT_PORT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.usb_port_status*, %struct.usb_port_status** %6, align 8
  %32 = load i32, i32* @USB_STS_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(%struct.usb_device* %23, i32 %25, i32 %26, i32 %29, i32 0, i32 %30, %struct.usb_port_status* %31, i32 4, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %20
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.usb_port_status*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
