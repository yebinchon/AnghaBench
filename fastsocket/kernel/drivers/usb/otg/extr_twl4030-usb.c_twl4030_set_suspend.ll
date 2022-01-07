; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_set_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_twl4030-usb.c_twl4030_set_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_transceiver = type { i32 }
%struct.twl4030_usb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otg_transceiver*, i32)* @twl4030_set_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_suspend(%struct.otg_transceiver* %0, i32 %1) #0 {
  %3 = alloca %struct.otg_transceiver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_usb*, align 8
  store %struct.otg_transceiver* %0, %struct.otg_transceiver** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.otg_transceiver*, %struct.otg_transceiver** %3, align 8
  %7 = call %struct.twl4030_usb* @xceiv_to_twl(%struct.otg_transceiver* %6)
  store %struct.twl4030_usb* %7, %struct.twl4030_usb** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %12 = call i32 @twl4030_phy_suspend(%struct.twl4030_usb* %11, i32 1)
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.twl4030_usb*, %struct.twl4030_usb** %5, align 8
  %15 = call i32 @twl4030_phy_resume(%struct.twl4030_usb* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret i32 0
}

declare dso_local %struct.twl4030_usb* @xceiv_to_twl(%struct.otg_transceiver*) #1

declare dso_local i32 @twl4030_phy_suspend(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @twl4030_phy_resume(%struct.twl4030_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
