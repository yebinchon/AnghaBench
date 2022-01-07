; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_ep0setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_usb.c_usb_ep0setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@CARL9170_EP0_STALL = common dso_local global i32 0, align 4
@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CARL9170_EP0_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_ep0setup() #0 {
  %1 = alloca %struct.usb_ctrlrequest, align 4
  %2 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  %3 = call i32 @usb_ep0rx_data(%struct.usb_ctrlrequest* %1, i32 4)
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USB_TYPE_MASK, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 130, label %10
    i32 128, label %12
  ]

8:                                                ; preds = %0
  %9 = call i32 @usb_standard_command(%struct.usb_ctrlrequest* %1)
  store i32 %9, i32* %2, align 4
  br label %15

10:                                               ; preds = %0
  %11 = call i32 @usb_class_command(%struct.usb_ctrlrequest* %1)
  store i32 %11, i32* %2, align 4
  br label %15

12:                                               ; preds = %0
  %13 = call i32 @usb_vendor_command(%struct.usb_ctrlrequest* %1)
  store i32 %13, i32* %2, align 4
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %14, %12, %10, %8
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @CARL9170_EP0_STALL, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 4
  br label %22

22:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @usb_ep0rx_data(%struct.usb_ctrlrequest*, i32) #1

declare dso_local i32 @usb_standard_command(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_class_command(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_vendor_command(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
