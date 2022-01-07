; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-pci.c_ehci_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-pci.c_ehci_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ehci_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.usb_device*)* @ehci_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_update_device(%struct.usb_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %7)
  store %struct.ehci_hcd* %8, %struct.ehci_hcd** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ehci_lpm_set_da(%struct.ehci_hcd* %27, i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ehci_lpm_check(%struct.ehci_hcd* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %26
  br label %44

44:                                               ; preds = %43, %19, %14
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @ehci_lpm_set_da(%struct.ehci_hcd*, i32, i32) #1

declare dso_local i32 @ehci_lpm_check(%struct.ehci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
