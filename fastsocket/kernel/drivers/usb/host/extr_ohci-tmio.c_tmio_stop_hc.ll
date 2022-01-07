; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_stop_hc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-tmio.c_tmio_stop_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32 }
%struct.tmio_hcd = type { i64 }

@CCR_PM_GKEN = common dso_local global i32 0, align 4
@CCR_PM_CKRNEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsupported amount of ports: %d\0A\00", align 1
@CCR_PM_USBPW3 = common dso_local global i32 0, align 4
@CCR_PM_USBPW2 = common dso_local global i32 0, align 4
@CCR_PM_USBPW1 = common dso_local global i32 0, align 4
@CCR_INTC = common dso_local global i64 0, align 8
@CCR_ILME = common dso_local global i64 0, align 8
@CCR_BASE = common dso_local global i64 0, align 8
@CCR_PM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tmio_stop_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_stop_hc(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca %struct.tmio_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %9)
  store %struct.ohci_hcd* %10, %struct.ohci_hcd** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd* %11)
  store %struct.tmio_hcd* %12, %struct.tmio_hcd** %5, align 8
  %13 = load i32, i32* @CCR_PM_GKEN, align 4
  %14 = load i32, i32* @CCR_PM_CKRNEN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %19 [
    i32 3, label %26
    i32 2, label %30
    i32 1, label %34
  ]

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %1, %19
  %27 = load i32, i32* @CCR_PM_USBPW3, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %1, %26
  %31 = load i32, i32* @CCR_PM_USBPW2, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %1, %30
  %35 = load i32, i32* @CCR_PM_USBPW1, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34
  %39 = load %struct.tmio_hcd*, %struct.tmio_hcd** %5, align 8
  %40 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CCR_INTC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @tmio_iowrite8(i32 0, i64 %43)
  %45 = load %struct.tmio_hcd*, %struct.tmio_hcd** %5, align 8
  %46 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CCR_ILME, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @tmio_iowrite8(i32 0, i64 %49)
  %51 = load %struct.tmio_hcd*, %struct.tmio_hcd** %5, align 8
  %52 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CCR_BASE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @tmio_iowrite16(i32 0, i64 %55)
  %57 = load %struct.tmio_hcd*, %struct.tmio_hcd** %5, align 8
  %58 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CCR_BASE, align 8
  %61 = add nsw i64 %59, %60
  %62 = add nsw i64 %61, 2
  %63 = call i32 @tmio_iowrite16(i32 0, i64 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.tmio_hcd*, %struct.tmio_hcd** %5, align 8
  %66 = getelementptr inbounds %struct.tmio_hcd, %struct.tmio_hcd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCR_PM, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @tmio_iowrite16(i32 %64, i64 %69)
  ret void
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local %struct.tmio_hcd* @hcd_to_tmio(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
