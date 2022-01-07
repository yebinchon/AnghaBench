; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_set_peripheral.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_set_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_transceiver = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.twl4030_usb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.usb_gadget* }

@ENODEV = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otg_transceiver*, %struct.usb_gadget*)* @twl4030_set_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_peripheral(%struct.otg_transceiver* %0, %struct.usb_gadget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otg_transceiver*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.twl4030_usb*, align 8
  store %struct.otg_transceiver* %0, %struct.otg_transceiver** %4, align 8
  store %struct.usb_gadget* %1, %struct.usb_gadget** %5, align 8
  %7 = load %struct.otg_transceiver*, %struct.otg_transceiver** %4, align 8
  %8 = icmp ne %struct.otg_transceiver* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.otg_transceiver*, %struct.otg_transceiver** %4, align 8
  %14 = call %struct.twl4030_usb* @xceiv_to_twl(%struct.otg_transceiver* %13)
  store %struct.twl4030_usb* %14, %struct.twl4030_usb** %6, align 8
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %16 = load %struct.twl4030_usb*, %struct.twl4030_usb** %6, align 8
  %17 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.usb_gadget* %15, %struct.usb_gadget** %18, align 8
  %19 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %20 = icmp ne %struct.usb_gadget* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %23 = load %struct.twl4030_usb*, %struct.twl4030_usb** %6, align 8
  %24 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %12
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.twl4030_usb* @xceiv_to_twl(%struct.otg_transceiver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
