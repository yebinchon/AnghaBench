; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ep_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ep_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_virt_ep = type { i32, %struct.xhci_ring*, %struct.TYPE_2__* }
%struct.xhci_ring = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.xhci_ring** }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Dev %d endpoint %d stream ID %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Dev %d endpoint ring %d:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbg_ep_rings(%struct.xhci_hcd* %0, i32 %1, i32 %2, %struct.xhci_virt_ep* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xhci_virt_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_ring*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.xhci_virt_ep* %3, %struct.xhci_virt_ep** %8, align 8
  %11 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %12 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EP_HAS_STREAMS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %18

18:                                               ; preds = %46, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %21 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %18
  %27 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %28 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.xhci_ring**, %struct.xhci_ring*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xhci_ring*, %struct.xhci_ring** %31, i64 %33
  %35 = load %struct.xhci_ring*, %struct.xhci_ring** %34, align 8
  store %struct.xhci_ring* %35, %struct.xhci_ring** %10, align 8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_dbg(%struct.xhci_hcd* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %42 = load %struct.xhci_ring*, %struct.xhci_ring** %10, align 8
  %43 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xhci_debug_segment(%struct.xhci_hcd* %41, i32 %44)
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %18

49:                                               ; preds = %18
  br label %67

50:                                               ; preds = %4
  %51 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %52 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %51, i32 0, i32 1
  %53 = load %struct.xhci_ring*, %struct.xhci_ring** %52, align 8
  store %struct.xhci_ring* %53, %struct.xhci_ring** %10, align 8
  %54 = load %struct.xhci_ring*, %struct.xhci_ring** %10, align 8
  %55 = icmp ne %struct.xhci_ring* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %67

57:                                               ; preds = %50
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_dbg(%struct.xhci_hcd* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %63 = load %struct.xhci_ring*, %struct.xhci_ring** %10, align 8
  %64 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @xhci_debug_segment(%struct.xhci_hcd* %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %57, %49
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32, ...) #1

declare dso_local i32 @xhci_debug_segment(%struct.xhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
