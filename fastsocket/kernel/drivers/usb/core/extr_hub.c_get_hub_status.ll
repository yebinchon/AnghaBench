; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_get_hub_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_get_hub_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub_status = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@USB_STS_RETRIES = common dso_local global i32 0, align 4
@USB_REQ_GET_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RT_HUB = common dso_local global i32 0, align 4
@USB_STS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_hub_status*)* @get_hub_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hub_status(%struct.usb_device* %0, %struct.usb_hub_status* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_hub_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store %struct.usb_hub_status* %1, %struct.usb_hub_status** %4, align 8
  %7 = load i32, i32* @ETIMEDOUT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %31, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @USB_STS_RETRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ETIMEDOUT, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %23 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %22, i32 0)
  %24 = load i32, i32* @USB_REQ_GET_STATUS, align 4
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = load i32, i32* @USB_RT_HUB, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.usb_hub_status*, %struct.usb_hub_status** %4, align 8
  %29 = load i32, i32* @USB_STS_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(%struct.usb_device* %21, i32 %23, i32 %24, i32 %27, i32 0, i32 0, %struct.usb_hub_status* %28, i32 4, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %9

34:                                               ; preds = %18
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.usb_hub_status*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
