; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cleanup_halted_endpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cleanup_halted_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %union.xhci_trb*, %struct.xhci_td*, i32 }
%struct.xhci_td = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.xhci_trb = type { i32 }

@EP_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, i32, i32, %struct.xhci_td*, %union.xhci_trb*)* @xhci_cleanup_halted_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_cleanup_halted_endpoint(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3, %struct.xhci_td* %4, %union.xhci_trb* %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xhci_td*, align 8
  %12 = alloca %union.xhci_trb*, align 8
  %13 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xhci_td* %4, %struct.xhci_td** %11, align 8
  store %union.xhci_trb* %5, %union.xhci_trb** %12, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i64 %24
  store %struct.xhci_virt_ep* %25, %struct.xhci_virt_ep** %13, align 8
  %26 = load i32, i32* @EP_HALTED, align 4
  %27 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %28 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.xhci_td*, %struct.xhci_td** %11, align 8
  %32 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %33 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %32, i32 0, i32 2
  store %struct.xhci_td* %31, %struct.xhci_td** %33, align 8
  %34 = load %union.xhci_trb*, %union.xhci_trb** %12, align 8
  %35 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %36 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %35, i32 0, i32 1
  store %union.xhci_trb* %34, %union.xhci_trb** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %39 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @xhci_queue_reset_ep(%struct.xhci_hcd* %40, i32 %41, i32 %42)
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %45 = load %struct.xhci_td*, %struct.xhci_td** %11, align 8
  %46 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd* %44, i32 %49, i32 %50)
  %52 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %53 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %52, i32 0, i32 2
  store %struct.xhci_td* null, %struct.xhci_td** %53, align 8
  %54 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %55 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %54, i32 0, i32 1
  store %union.xhci_trb* null, %union.xhci_trb** %55, align 8
  %56 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %13, align 8
  %57 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %59 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %58)
  ret void
}

declare dso_local i32 @xhci_queue_reset_ep(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
