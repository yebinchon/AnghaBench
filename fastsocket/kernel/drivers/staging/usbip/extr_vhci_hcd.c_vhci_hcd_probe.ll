; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_hcd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_vhci_hcd.c_vhci_hcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_hcd = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"proving...\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"name %s id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"vhci_hcd DMA not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@vhci_hc_driver = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"create hcd failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@the_controller = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"usb_add_hcd failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bye\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vhci_hcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_hcd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call i32 @usbip_uinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_info(%struct.TYPE_4__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_name(%struct.TYPE_4__* %29)
  %31 = call %struct.usb_hcd* @usb_create_hcd(i32* @vhci_hc_driver, %struct.TYPE_4__* %27, i32 %30)
  store %struct.usb_hcd* %31, %struct.usb_hcd** %4, align 8
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %33 = icmp ne %struct.usb_hcd* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = call i32 (i8*, ...) @usbip_uerr(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %25
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %40 = call i32* @hcd_to_vhci(%struct.usb_hcd* %39)
  store i32* %40, i32** @the_controller, align 8
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %42 = call i32 @usb_add_hcd(%struct.usb_hcd* %41, i32 0, i32 0)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, ...) @usbip_uerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %49 = call i32 @usb_put_hcd(%struct.usb_hcd* %48)
  store i32* null, i32** @the_controller, align 8
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %38
  %52 = call i32 (i8*, ...) @usbip_dbg_vhci_hc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %45, %34, %19
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @usbip_uinfo(i8*) #1

declare dso_local i32 @usbip_dbg_vhci_hc(i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @usbip_uerr(i8*, ...) #1

declare dso_local i32* @hcd_to_vhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
