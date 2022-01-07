; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_ring_doorbell_for_active_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_ring_doorbell_for_active_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.xhci_stream_info*, %struct.TYPE_4__* }
%struct.xhci_stream_info = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32, i32)* @ring_doorbell_for_active_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_doorbell_for_active_rings(%struct.xhci_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_ep*, align 8
  %9 = alloca %struct.xhci_stream_info*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %18, i64 %20
  store %struct.xhci_virt_ep* %21, %struct.xhci_virt_ep** %8, align 8
  %22 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EP_HAS_STREAMS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %3
  %29 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %36, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %35, %28
  br label %74

41:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %45 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %44, i32 0, i32 1
  %46 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %45, align 8
  %47 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %43, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %52 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %51, i32 0, i32 1
  %53 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %52, align 8
  store %struct.xhci_stream_info* %53, %struct.xhci_stream_info** %9, align 8
  %54 = load %struct.xhci_stream_info*, %struct.xhci_stream_info** %9, align 8
  %55 = getelementptr inbounds %struct.xhci_stream_info, %struct.xhci_stream_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @list_empty(i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %50
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %42

74:                                               ; preds = %40, %42
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xhci_ring_ep_doorbell(%struct.xhci_hcd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
