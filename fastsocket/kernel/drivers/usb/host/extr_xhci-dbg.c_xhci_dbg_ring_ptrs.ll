; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ring_ptrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ring_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Ring deq = %p (virt), 0x%llx (dma)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Ring deq updated %u times\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Ring enq = %p (virt), 0x%llx (dma)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Ring enq updated %u times\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbg_ring_ptrs(%struct.xhci_hcd* %0, %struct.xhci_ring* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_ring*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %4, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %7 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %13 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @xhci_trb_virt_to_dma(i32 %11, i32 %14)
  %16 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %15)
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %18 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %23 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %24 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %27 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %30 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @xhci_trb_virt_to_dma(i32 %28, i32 %31)
  %33 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %25, i64 %32)
  %34 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %4, align 8
  %36 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, ...) #1

declare dso_local i64 @xhci_trb_virt_to_dma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
