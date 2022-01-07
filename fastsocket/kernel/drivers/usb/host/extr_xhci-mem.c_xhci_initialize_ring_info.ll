; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_initialize_ring_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_initialize_ring_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32, i32, i32, i64, i64, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_ring*, i32)* @xhci_initialize_ring_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_initialize_ring_info(%struct.xhci_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.xhci_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_ring* %0, %struct.xhci_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %6 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %16 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %15, i32 0, i32 9
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %18 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %23 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %25, i32 0, i32 6
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %31 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %35 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = mul nsw i32 %36, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  %42 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
