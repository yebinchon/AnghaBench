; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_endpoint_zero.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_endpoint_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.xhci_ep_ctx = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_endpoint_zero(%struct.xhci_hcd* %0, %struct.xhci_virt_device* %1, %struct.usb_host_endpoint* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_ep_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_virt_device* %1, %struct.xhci_virt_device** %5, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %6, align 8
  %9 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %10 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %9, i32 0, i32 0
  %11 = call i32 @xhci_get_endpoint_index(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %13 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %14 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %12, i32 %15, i32 %16)
  store %struct.xhci_ep_ctx* %17, %struct.xhci_ep_ctx** %8, align 8
  %18 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
