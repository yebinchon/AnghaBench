; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.vhci_hcd = type { %struct.vhci_device* }
%struct.vhci_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"stop VHCI controller\0A\00", align 1
@dev_attr_group = common dso_local global i32 0, align 4
@VHCI_NPORTS = common dso_local global i32 0, align 4
@VDEV_EVENT_REMOVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"vhci_stop done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @vhci_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhci_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.vhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhci_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd* %6)
  store %struct.vhci_hcd* %7, %struct.vhci_hcd** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %10 = call %struct.TYPE_2__* @vhci_dev(%struct.vhci_hcd* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_group(i32* %11, i32* @dev_attr_group)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VHCI_NPORTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.vhci_hcd*, %struct.vhci_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %18, i32 0, i32 0
  %20 = load %struct.vhci_device*, %struct.vhci_device** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %20, i64 %22
  store %struct.vhci_device* %23, %struct.vhci_device** %5, align 8
  %24 = load %struct.vhci_device*, %struct.vhci_device** %5, align 8
  %25 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %24, i32 0, i32 0
  %26 = load i32, i32* @VDEV_EVENT_REMOVED, align 4
  %27 = call i32 @usbip_event_add(i32* %25, i32 %26)
  %28 = load %struct.vhci_device*, %struct.vhci_device** %5, align 8
  %29 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %28, i32 0, i32 0
  %30 = call i32 @usbip_stop_eh(i32* %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %13
  %35 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @vhci_dev(%struct.vhci_hcd*) #1

declare dso_local i32 @usbip_event_add(i32*, i32) #1

declare dso_local i32 @usbip_stop_eh(i32*) #1

declare dso_local i32 @usbip_uinfo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
