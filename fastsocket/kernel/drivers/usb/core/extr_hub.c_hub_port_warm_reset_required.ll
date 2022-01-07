; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_warm_reset_required.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_warm_reset_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32 }

@USB_PORT_STAT_LINK_STATE = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_SS_INACTIVE = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_COMP_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32)* @hub_port_warm_reset_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_warm_reset_required(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %6 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @hub_is_superspeed(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @USB_PORT_STAT_LINK_STATE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @USB_SS_PORT_LS_SS_INACTIVE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @USB_PORT_STAT_LINK_STATE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i1 [ true, %10 ], [ %21, %16 ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i1 [ false, %2 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @hub_is_superspeed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
