; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_urb_to_transfer_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_urb_to_transfer_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_ring = type { i32 }
%struct.xhci_hcd = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_8__*, %struct.xhci_ring* }
%struct.TYPE_8__ = type { i32, %struct.xhci_ring** }
%struct.urb = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EP_HAS_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_ring* (%struct.xhci_hcd*, %struct.urb*)* @xhci_urb_to_transfer_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.xhci_ring*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %10 = load %struct.urb*, %struct.urb** %5, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @xhci_get_endpoint_index(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %31, i64 %33
  store %struct.xhci_virt_ep* %34, %struct.xhci_virt_ep** %9, align 8
  %35 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %36 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EP_HAS_STREAMS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %2
  %42 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %43 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %42, i32 0, i32 2
  %44 = load %struct.xhci_ring*, %struct.xhci_ring** %43, align 8
  store %struct.xhci_ring* %44, %struct.xhci_ring** %3, align 8
  br label %83

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_warn(%struct.xhci_hcd* %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  store %struct.xhci_ring* null, %struct.xhci_ring** %3, align 8
  br label %83

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %56 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %63 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.xhci_ring**, %struct.xhci_ring*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.xhci_ring*, %struct.xhci_ring** %66, i64 %68
  %70 = load %struct.xhci_ring*, %struct.xhci_ring** %69, align 8
  store %struct.xhci_ring* %70, %struct.xhci_ring** %3, align 8
  br label %83

71:                                               ; preds = %53
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %9, align 8
  %76 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub i32 %79, 1
  %81 = load i32, i32* %8, align 4
  %82 = call i32 (%struct.xhci_hcd*, i8*, i32, i32, ...) @xhci_warn(%struct.xhci_hcd* %72, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 %80, i32 %81)
  store %struct.xhci_ring* null, %struct.xhci_ring** %3, align 8
  br label %83

83:                                               ; preds = %71, %61, %48, %41
  %84 = load %struct.xhci_ring*, %struct.xhci_ring** %3, align 8
  ret %struct.xhci_ring* %84
}

declare dso_local i32 @xhci_get_endpoint_index(i32*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
