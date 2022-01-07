; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64, i64, i32, i32 }
%struct.ohci_hcd = type { i32 }

@PCI_DEVICE_ID_NS_87560_LIO = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_NS = common dso_local global i64 0, align 8
@OHCI_QUIRK_SUPERIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Using NSC SuperIO setup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_quirk_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_quirk_ns(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @PCI_SLOT(i32 %16)
  %18 = call i32 @PCI_DEVFN(i32 %17, i32 1)
  %19 = call %struct.pci_dev* @pci_get_slot(i32 %13, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI_DEVICE_ID_NS_87560_LIO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI_VENDOR_ID_NS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %36 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %35)
  store %struct.ohci_hcd* %36, %struct.ohci_hcd** %5, align 8
  %37 = load i32, i32* @OHCI_QUIRK_SUPERIO, align 4
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %39 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %43 = call i32 @ohci_dbg(%struct.ohci_hcd* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %34, %28, %22, %1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_dev_put(%struct.pci_dev* %45)
  ret i32 0
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
