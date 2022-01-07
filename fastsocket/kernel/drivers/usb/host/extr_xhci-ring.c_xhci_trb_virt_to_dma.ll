; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_trb_virt_to_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_trb_virt_to_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_segment = type { i64, %union.xhci_trb* }
%union.xhci_trb = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xhci_trb_virt_to_dma(%struct.xhci_segment* %0, %union.xhci_trb* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca %union.xhci_trb*, align 8
  %6 = alloca i64, align 8
  store %struct.xhci_segment* %0, %struct.xhci_segment** %4, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %5, align 8
  %7 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %8 = icmp ne %struct.xhci_segment* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %union.xhci_trb*, %union.xhci_trb** %5, align 8
  %11 = icmp ne %union.xhci_trb* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %union.xhci_trb*, %union.xhci_trb** %5, align 8
  %14 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %14, i32 0, i32 1
  %16 = load %union.xhci_trb*, %union.xhci_trb** %15, align 8
  %17 = icmp ult %union.xhci_trb* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9, %2
  store i64 0, i64* %3, align 8
  br label %39

19:                                               ; preds = %12
  %20 = load %union.xhci_trb*, %union.xhci_trb** %5, align 8
  %21 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %21, i32 0, i32 1
  %23 = load %union.xhci_trb*, %union.xhci_trb** %22, align 8
  %24 = ptrtoint %union.xhci_trb* %20 to i64
  %25 = ptrtoint %union.xhci_trb* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @TRBS_PER_SEGMENT, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %34 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = mul i64 %36, 4
  %38 = add i64 %35, %37
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %32, %31, %18
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
