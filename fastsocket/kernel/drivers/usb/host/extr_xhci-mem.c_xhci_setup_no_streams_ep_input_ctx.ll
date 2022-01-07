; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_setup_no_streams_ep_input_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_setup_no_streams_ep_input_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ep_ctx = type { i32, i32 }
%struct.xhci_virt_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EP_MAXPSTREAMS_MASK = common dso_local global i32 0, align 4
@EP_HAS_LSA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_setup_no_streams_ep_input_ctx(%struct.xhci_hcd* %0, %struct.xhci_ep_ctx* %1, %struct.xhci_virt_ep* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_ep_ctx*, align 8
  %6 = alloca %struct.xhci_virt_ep*, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_ep_ctx* %1, %struct.xhci_ep_ctx** %5, align 8
  store %struct.xhci_virt_ep* %2, %struct.xhci_virt_ep** %6, align 8
  %8 = load i32, i32* @EP_MAXPSTREAMS_MASK, align 4
  %9 = load i32, i32* @EP_HAS_LSA, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xhci_trb_virt_to_dma(i32 %21, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %6, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %28, %33
  %35 = call i32 @cpu_to_le64(i32 %34)
  %36 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @xhci_trb_virt_to_dma(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
