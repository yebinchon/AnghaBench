; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.xhci_hcd = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @xhci_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_get_drvdata(%struct.pci_dev* %4)
  %6 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %5)
  store %struct.xhci_hcd* %6, %struct.xhci_hcd** %3, align 8
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @usb_remove_hcd(i64 %14)
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %17 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @usb_put_hcd(i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @usb_hcd_pci_remove(%struct.pci_dev* %21)
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = call i32 @kfree(%struct.xhci_hcd* %23)
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local i32 @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @usb_remove_hcd(i64) #1

declare dso_local i32 @usb_put_hcd(i64) #1

declare dso_local i32 @usb_hcd_pci_remove(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
