; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_segments_for_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_free_segments_for_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_segment = type { %struct.xhci_segment* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_segment*)* @xhci_free_segments_for_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_free_segments_for_ring(%struct.xhci_hcd* %0, %struct.xhci_segment* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca %struct.xhci_segment*, align 8
  %6 = alloca %struct.xhci_segment*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %4, align 8
  %7 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %8 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %7, i32 0, i32 0
  %9 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  store %struct.xhci_segment* %9, %struct.xhci_segment** %5, align 8
  br label %10

10:                                               ; preds = %14, %2
  %11 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %12 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %13 = icmp ne %struct.xhci_segment* %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %16 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %15, i32 0, i32 0
  %17 = load %struct.xhci_segment*, %struct.xhci_segment** %16, align 8
  store %struct.xhci_segment* %17, %struct.xhci_segment** %6, align 8
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %19 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %20 = call i32 @xhci_segment_free(%struct.xhci_hcd* %18, %struct.xhci_segment* %19)
  %21 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  store %struct.xhci_segment* %21, %struct.xhci_segment** %5, align 8
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %25 = call i32 @xhci_segment_free(%struct.xhci_hcd* %23, %struct.xhci_segment* %24)
  ret void
}

declare dso_local i32 @xhci_segment_free(%struct.xhci_hcd*, %struct.xhci_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
