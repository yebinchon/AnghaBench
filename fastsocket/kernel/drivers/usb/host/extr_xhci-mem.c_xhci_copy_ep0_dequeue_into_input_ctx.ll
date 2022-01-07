; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_copy_ep0_dequeue_into_input_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_copy_ep0_dequeue_into_input_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.xhci_ring* }
%struct.xhci_ring = type { i32, i32, i32 }
%struct.usb_device = type { i64 }
%struct.xhci_ep_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_copy_ep0_dequeue_into_input_ctx(%struct.xhci_hcd* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca %struct.xhci_ep_ctx*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %9, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, i64 %13
  %15 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %14, align 8
  store %struct.xhci_virt_device* %15, %struct.xhci_virt_device** %5, align 8
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %17 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %16, i32 %19, i32 0)
  store %struct.xhci_ep_ctx* %20, %struct.xhci_ep_ctx** %6, align 8
  %21 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %22 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.xhci_ring*, %struct.xhci_ring** %25, align 8
  store %struct.xhci_ring* %26, %struct.xhci_ring** %7, align 8
  %27 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %28 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %31 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xhci_trb_virt_to_dma(i32 %29, i32 %32)
  %34 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %35 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @cpu_to_le64(i32 %37)
  %39 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @xhci_trb_virt_to_dma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
