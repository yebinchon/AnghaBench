; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-at91.c_ohci_hcd_at91_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-at91.c_ohci_hcd_at91_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.at91_usbh_data* }
%struct.at91_usbh_data = type { i64* }

@.str = private unnamed_addr constant [10 x i8] c"ohci_vbus\00", align 1
@ohci_at91_hc_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_at91_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_at91_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.at91_usbh_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %7, align 8
  store %struct.at91_usbh_data* %8, %struct.at91_usbh_data** %3, align 8
  %9 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %3, align 8
  %10 = icmp ne %struct.at91_usbh_data* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %46, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %3, align 8
  %15 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  %20 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %3, align 8
  %21 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %46

29:                                               ; preds = %19
  %30 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %3, align 8
  %31 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpio_request(i64 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.at91_usbh_data*, %struct.at91_usbh_data** %3, align 8
  %39 = getelementptr inbounds %struct.at91_usbh_data, %struct.at91_usbh_data* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @gpio_direction_output(i64 %44, i32 0)
  br label %46

46:                                               ; preds = %29, %28
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %12

49:                                               ; preds = %12
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @device_init_wakeup(%struct.TYPE_2__* %52, i32 1)
  %54 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %55 = call i32 @usb_hcd_at91_probe(i32* @ohci_at91_hc_driver, %struct.platform_device* %54)
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @gpio_request(i64, i8*) #1

declare dso_local i32 @gpio_direction_output(i64, i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @usb_hcd_at91_probe(i32*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
