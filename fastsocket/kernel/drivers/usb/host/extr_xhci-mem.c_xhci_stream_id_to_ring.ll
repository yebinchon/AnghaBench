; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_stream_id_to_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_stream_id_to_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32 }
%struct.xhci_virt_device = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { %struct.TYPE_2__*, %struct.xhci_ring* }
%struct.TYPE_2__ = type { i32, %struct.xhci_ring** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_ring* @xhci_stream_id_to_ring(%struct.xhci_virt_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_ring*, align 8
  %5 = alloca %struct.xhci_virt_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_virt_device* %0, %struct.xhci_virt_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %9, i32 0, i32 0
  %11 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %11, i64 %13
  store %struct.xhci_virt_ep* %14, %struct.xhci_virt_ep** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %19 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %18, i32 0, i32 1
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %19, align 8
  store %struct.xhci_ring* %20, %struct.xhci_ring** %4, align 8
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.xhci_ring* null, %struct.xhci_ring** %4, align 8
  br label %46

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ugt i32 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.xhci_ring* null, %struct.xhci_ring** %4, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %38 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.xhci_ring**, %struct.xhci_ring*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xhci_ring*, %struct.xhci_ring** %41, i64 %43
  %45 = load %struct.xhci_ring*, %struct.xhci_ring** %44, align 8
  store %struct.xhci_ring* %45, %struct.xhci_ring** %4, align 8
  br label %46

46:                                               ; preds = %36, %35, %26, %17
  %47 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  ret %struct.xhci_ring* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
