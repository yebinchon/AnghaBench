; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_queue_new_dequeue_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_queue_new_dequeue_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_dequeue_state = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [98 x i8] c"Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u\0A\00", align 1
@SET_DEQ_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_queue_new_dequeue_state(%struct.xhci_hcd* %0, i32 %1, i32 %2, i32 %3, %struct.xhci_dequeue_state* %4) #0 {
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_dequeue_state*, align 8
  %11 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.xhci_dequeue_state* %4, %struct.xhci_dequeue_state** %10, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %20, i64 %22
  store %struct.xhci_virt_ep* %23, %struct.xhci_virt_ep** %11, align 8
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %25 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %26 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %29 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %34 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %37 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %40 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @xhci_trb_virt_to_dma(%struct.TYPE_6__* %38, i32 %41)
  %43 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %44 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @xhci_dbg(%struct.xhci_hcd* %24, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %27, i64 %32, i32 %35, i64 %42, i64 %45)
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %52 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %55 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.xhci_dequeue_state*, %struct.xhci_dequeue_state** %10, align 8
  %58 = getelementptr inbounds %struct.xhci_dequeue_state, %struct.xhci_dequeue_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @queue_set_tr_deq(%struct.xhci_hcd* %47, i32 %48, i32 %49, i32 %50, %struct.TYPE_6__* %53, i32 %56, i32 %60)
  %62 = load i32, i32* @SET_DEQ_PENDING, align 4
  %63 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %64 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, %struct.TYPE_6__*, i64, i32, i64, i64) #1

declare dso_local i64 @xhci_trb_virt_to_dma(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @queue_set_tr_deq(%struct.xhci_hcd*, i32, i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
