; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_triad_to_transfer_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_triad_to_transfer_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32 }
%struct.xhci_hcd = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_3__*, %struct.xhci_ring* }
%struct.TYPE_3__ = type { i32, %struct.xhci_ring** }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_ring* (%struct.xhci_hcd*, i32, i32, i32)* @xhci_triad_to_transfer_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_ring* @xhci_triad_to_transfer_ring(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_ring*, align 8
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %13, i64 %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %19, i64 %21
  store %struct.xhci_virt_ep* %22, %struct.xhci_virt_ep** %10, align 8
  %23 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EP_HAS_STREAMS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %31 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %30, i32 0, i32 2
  %32 = load %struct.xhci_ring*, %struct.xhci_ring** %31, align 8
  store %struct.xhci_ring* %32, %struct.xhci_ring** %5, align 8
  br label %71

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_warn(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store %struct.xhci_ring* null, %struct.xhci_ring** %5, align 8
  br label %71

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %44 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %42, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %51 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.xhci_ring**, %struct.xhci_ring*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.xhci_ring*, %struct.xhci_ring** %54, i64 %56
  %58 = load %struct.xhci_ring*, %struct.xhci_ring** %57, align 8
  store %struct.xhci_ring* %58, %struct.xhci_ring** %5, align 8
  br label %71

59:                                               ; preds = %41
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %64 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub i32 %67, 1
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_warn(%struct.xhci_hcd* %60, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %68, i32 %69)
  store %struct.xhci_ring* null, %struct.xhci_ring** %5, align 8
  br label %71

71:                                               ; preds = %59, %49, %36, %29
  %72 = load %struct.xhci_ring*, %struct.xhci_ring** %5, align 8
  ret %struct.xhci_ring* %72
}

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
