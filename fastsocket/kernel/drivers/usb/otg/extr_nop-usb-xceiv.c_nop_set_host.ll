; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_nop-usb-xceiv.c_nop_set_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_nop-usb-xceiv.c_nop_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otg_transceiver = type { i32 }
%struct.usb_bus = type { i32 }
%struct.nop_usb_xceiv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_bus* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.otg_transceiver*, %struct.usb_bus*)* @nop_set_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nop_set_host(%struct.otg_transceiver* %0, %struct.usb_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.otg_transceiver*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca %struct.nop_usb_xceiv*, align 8
  store %struct.otg_transceiver* %0, %struct.otg_transceiver** %4, align 8
  store %struct.usb_bus* %1, %struct.usb_bus** %5, align 8
  %7 = load %struct.otg_transceiver*, %struct.otg_transceiver** %4, align 8
  %8 = icmp ne %struct.otg_transceiver* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.otg_transceiver*, %struct.otg_transceiver** %4, align 8
  %14 = call %struct.nop_usb_xceiv* @xceiv_to_nop(%struct.otg_transceiver* %13)
  store %struct.nop_usb_xceiv* %14, %struct.nop_usb_xceiv** %6, align 8
  %15 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %16 = icmp ne %struct.usb_bus* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.nop_usb_xceiv*, %struct.nop_usb_xceiv** %6, align 8
  %19 = getelementptr inbounds %struct.nop_usb_xceiv, %struct.nop_usb_xceiv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.usb_bus* null, %struct.usb_bus** %20, align 8
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %12
  %24 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %25 = load %struct.nop_usb_xceiv*, %struct.nop_usb_xceiv** %6, align 8
  %26 = getelementptr inbounds %struct.nop_usb_xceiv, %struct.nop_usb_xceiv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.usb_bus* %24, %struct.usb_bus** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %23, %17, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.nop_usb_xceiv* @xceiv_to_nop(%struct.otg_transceiver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
