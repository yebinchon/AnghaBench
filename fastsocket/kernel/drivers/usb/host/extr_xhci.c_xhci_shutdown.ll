; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_hcd = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@XHCI_SPURIOUS_REBOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xhci_shutdown completed - status = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %4)
  store %struct.xhci_hcd* %5, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XHCI_SPURIOUS_REBOOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @to_pci_dev(i32 %16)
  %18 = call i32 @usb_disable_xhci_ports(i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = call i32 @xhci_halt(%struct.xhci_hcd* %23)
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %29 = call i32 @xhci_cleanup_msix(%struct.xhci_hcd* %28)
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @xhci_readl(%struct.xhci_hcd* %31, i32* %35)
  %37 = call i32 @xhci_dbg(%struct.xhci_hcd* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %36)
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_disable_xhci_ports(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @xhci_cleanup_msix(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
