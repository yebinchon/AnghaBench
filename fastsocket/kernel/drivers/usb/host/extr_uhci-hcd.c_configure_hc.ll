; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_configure_hc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-hcd.c_configure_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i64, i32 }

@USBSOF_DEFAULT = common dso_local global i32 0, align 4
@USBSOF = common dso_local global i64 0, align 8
@USBFLBASEADD = common dso_local global i64 0, align 8
@UHCI_MAX_SOF_NUMBER = common dso_local global i32 0, align 4
@USBFRNUM = common dso_local global i64 0, align 8
@USBLEGSUP = common dso_local global i32 0, align 4
@USBLEGSUP_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @configure_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_hc(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  %3 = load i32, i32* @USBSOF_DEFAULT, align 4
  %4 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USBSOF, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 %3, i64 %8)
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %11 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USBFLBASEADD, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 %12, i64 %17)
  %19 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UHCI_MAX_SOF_NUMBER, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USBFRNUM, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outw(i32 %23, i64 %28)
  %30 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %31 = call i32 @uhci_dev(%struct.uhci_hcd* %30)
  %32 = call i32 @to_pci_dev(i32 %31)
  %33 = load i32, i32* @USBLEGSUP, align 4
  %34 = load i32, i32* @USBLEGSUP_DEFAULT, align 4
  %35 = call i32 @pci_write_config_word(i32 %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
