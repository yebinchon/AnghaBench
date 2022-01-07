; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_dma_to_transfer_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_dma_to_transfer_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32 }
%struct.xhci_virt_ep = type { i32, %struct.xhci_ring*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@TRB_SEGMENT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_ring*, align 8
  %4 = alloca %struct.xhci_virt_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.xhci_virt_ep* %0, %struct.xhci_virt_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %4, align 8
  %7 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @EP_HAS_STREAMS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @TRB_SEGMENT_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = call %struct.xhci_ring* @radix_tree_lookup(i32* %16, i32 %19)
  store %struct.xhci_ring* %20, %struct.xhci_ring** %3, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i32 0, i32 1
  %24 = load %struct.xhci_ring*, %struct.xhci_ring** %23, align 8
  store %struct.xhci_ring* %24, %struct.xhci_ring** %3, align 8
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  ret %struct.xhci_ring* %26
}

declare dso_local %struct.xhci_ring* @radix_tree_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
