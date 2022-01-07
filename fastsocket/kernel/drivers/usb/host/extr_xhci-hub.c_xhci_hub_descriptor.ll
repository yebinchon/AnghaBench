; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-hub.c_xhci_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i64 }
%struct.xhci_hcd = type { i32 }
%struct.usb_hub_descriptor = type { i32 }

@HCD_USB3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*)* @xhci_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_hub_descriptor(%struct.usb_hcd* %0, %struct.xhci_hcd* %1, %struct.usb_hub_descriptor* %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hub_descriptor*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %5, align 8
  store %struct.usb_hub_descriptor* %2, %struct.usb_hub_descriptor** %6, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HCD_USB3, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %16 = call i32 @xhci_usb3_hub_descriptor(%struct.usb_hcd* %13, %struct.xhci_hcd* %14, %struct.usb_hub_descriptor* %15)
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %20 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %6, align 8
  %21 = call i32 @xhci_usb2_hub_descriptor(%struct.usb_hcd* %18, %struct.xhci_hcd* %19, %struct.usb_hub_descriptor* %20)
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @xhci_usb3_hub_descriptor(%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*) #1

declare dso_local i32 @xhci_usb2_hub_descriptor(%struct.usb_hcd*, %struct.xhci_hcd*, %struct.usb_hub_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
