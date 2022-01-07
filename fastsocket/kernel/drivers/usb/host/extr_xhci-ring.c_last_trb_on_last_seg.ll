; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_last_trb_on_last_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_last_trb_on_last_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.xhci_ring* }
%struct.xhci_ring = type { i64 }
%struct.xhci_segment = type { i64, %union.xhci_trb* }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i64 0, align 8
@LINK_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment*, %union.xhci_trb*)* @last_trb_on_last_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @last_trb_on_last_seg(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, %struct.xhci_segment* %2, %union.xhci_trb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  %8 = alloca %struct.xhci_segment*, align 8
  %9 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %7, align 8
  store %struct.xhci_segment* %2, %struct.xhci_segment** %8, align 8
  store %union.xhci_trb* %3, %union.xhci_trb** %9, align 8
  %10 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load %struct.xhci_ring*, %struct.xhci_ring** %12, align 8
  %14 = icmp eq %struct.xhci_ring* %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %17 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %18 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %17, i32 0, i32 1
  %19 = load %union.xhci_trb*, %union.xhci_trb** %18, align 8
  %20 = load i64, i64* @TRBS_PER_SEGMENT, align 8
  %21 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %19, i64 %20
  %22 = icmp eq %union.xhci_trb* %16, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %25 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %28 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %27, i32 0, i32 0
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %28, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br label %33

33:                                               ; preds = %23, %15
  %34 = phi i1 [ false, %15 ], [ %32, %23 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %44

36:                                               ; preds = %4
  %37 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %38 = bitcast %union.xhci_trb* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LINK_TOGGLE, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = and i32 %40, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
