; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_pci_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ohci_hcd = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }

@ohci_pci_quirks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_pci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_pci_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_device_id*, align 8
  %8 = alloca i32 (%struct.usb_hcd*)*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %9)
  store %struct.ohci_hcd* %10, %struct.ohci_hcd** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.pci_dev* @to_pci_dev(i64 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* @ohci_pci_quirks, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = call %struct.pci_device_id* @pci_match_id(i32 %22, %struct.pci_dev* %23)
  store %struct.pci_device_id* %24, %struct.pci_device_id** %7, align 8
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** %7, align 8
  %26 = icmp ne %struct.pci_device_id* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %7, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to i32 (%struct.usb_hcd*)*
  store i32 (%struct.usb_hcd*)* %32, i32 (%struct.usb_hcd*)** %8, align 8
  %33 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %8, align 8
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %35 = call i32 %33(%struct.usb_hcd* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %27, %16
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %42 = call i32 @ohci_hcd_init(%struct.ohci_hcd* %41)
  %43 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %44 = call i32 @ohci_init(%struct.ohci_hcd* %43)
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i64) #1

declare dso_local %struct.pci_device_id* @pci_match_id(i32, %struct.pci_dev*) #1

declare dso_local i32 @ohci_hcd_init(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_init(%struct.ohci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
