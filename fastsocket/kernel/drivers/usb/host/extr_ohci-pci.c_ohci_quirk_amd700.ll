; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_amd700.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-pci.c_ohci_quirk_amd700.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32 }
%struct.pci_dev = type { i32 }

@OHCI_QUIRK_AMD_PLL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ATI = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_ATI_SBX00_SMBUS = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"enabled AMD prefetch quirk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_quirk_amd700 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_quirk_amd700(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %7)
  store %struct.ohci_hcd* %8, %struct.ohci_hcd** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = call i64 (...) @usb_amd_find_chipset_info()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @OHCI_QUIRK_AMD_PLL, align 4
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %14 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @PCI_VENDOR_ID_ATI, align 4
  %19 = load i32, i32* @PCI_DEVICE_ID_ATI_SBX00_SMBUS, align 4
  %20 = call %struct.pci_dev* @pci_get_device(i32 %18, i32 %19, i32* null)
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %44

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* @PCI_REVISION_ID, align 4
  %27 = call i32 @pci_read_config_byte(%struct.pci_dev* %25, i32 %26, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 64
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp sle i32 %31, 79
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* @OHCI_QUIRK_AMD_PREFETCH, align 4
  %35 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %36 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %40 = call i32 @ohci_dbg(%struct.ohci_hcd* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %33, %30, %24
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = call i32 @pci_dev_put(%struct.pci_dev* %42)
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i64 @usb_amd_find_chipset_info(...) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
