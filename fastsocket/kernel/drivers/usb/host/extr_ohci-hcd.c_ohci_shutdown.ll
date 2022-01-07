; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @ohci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %4)
  store %struct.ohci_hcd* %5, %struct.ohci_hcd** %3, align 8
  %6 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %7 = load i32, i32* @OHCI_INTR_MIE, align 4
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @ohci_writel(%struct.ohci_hcd* %6, i32 %7, i32* %11)
  %13 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %14 = call i32 @ohci_usb_reset(%struct.ohci_hcd* %13)
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %16 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @ohci_readl(%struct.ohci_hcd* %15, i32* %19)
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_usb_reset(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
