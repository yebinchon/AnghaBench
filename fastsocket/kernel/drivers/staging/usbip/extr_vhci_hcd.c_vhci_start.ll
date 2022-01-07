; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i64 }
%struct.vhci_hcd = type { i32, i32, %struct.vhci_device* }
%struct.vhci_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"enter vhci_start\0A\00", align 1
@VHCI_NPORTS = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@dev_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"create sysfs files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @vhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.vhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vhci_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd* %8)
  store %struct.vhci_hcd* %9, %struct.vhci_hcd** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VHCI_NPORTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %16, i32 0, i32 2
  %18 = load %struct.vhci_device*, %struct.vhci_device** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %18, i64 %20
  store %struct.vhci_device* %21, %struct.vhci_device** %7, align 8
  %22 = load %struct.vhci_device*, %struct.vhci_device** %7, align 8
  %23 = call i32 @vhci_device_init(%struct.vhci_device* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.vhci_device*, %struct.vhci_device** %7, align 8
  %26 = getelementptr inbounds %struct.vhci_device, %struct.vhci_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %31, i32 0, i32 1
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %35 = getelementptr inbounds %struct.vhci_hcd, %struct.vhci_hcd* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @HC_STATE_RUNNING, align 4
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.vhci_hcd*, %struct.vhci_hcd** %4, align 8
  %45 = call %struct.TYPE_2__* @vhci_dev(%struct.vhci_hcd* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @sysfs_create_group(i32* %46, i32* @dev_attr_group)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = call i32 @usbip_uerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.vhci_hcd* @hcd_to_vhci(%struct.usb_hcd*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*) #1

declare dso_local i32 @vhci_device_init(%struct.vhci_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @vhci_dev(%struct.vhci_hcd*) #1

declare dso_local i32 @usbip_uerr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
