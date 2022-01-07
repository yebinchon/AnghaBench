; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_ring_free(%struct.xhci_hcd* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_ring*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %4, align 8
  %5 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %6 = icmp ne %struct.xhci_ring* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %15 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @xhci_free_segments_for_ring(%struct.xhci_hcd* %14, i64 %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %21 = call i32 @kfree(%struct.xhci_ring* %20)
  br label %22

22:                                               ; preds = %19, %7
  ret void
}

declare dso_local i32 @xhci_free_segments_for_ring(%struct.xhci_hcd*, i64) #1

declare dso_local i32 @kfree(%struct.xhci_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
