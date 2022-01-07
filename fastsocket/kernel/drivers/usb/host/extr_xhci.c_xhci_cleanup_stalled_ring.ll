; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_cleanup_stalled_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_cleanup_stalled_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, i32 }
%struct.usb_device = type { i64 }
%struct.xhci_dequeue_state = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Cleaning up stalled endpoint ring\0A\00", align 1
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Queueing new dequeue state\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Setting up input context for configure endpoint command\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_cleanup_stalled_ring(%struct.xhci_hcd* %0, %struct.usb_device* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_dequeue_state, align 4
  %8 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = call i32 @xhci_dbg(%struct.xhci_hcd* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %20, i64 %22
  store %struct.xhci_virt_ep* %23, %struct.xhci_virt_ep** %8, align 8
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %33 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xhci_find_new_dequeue_state(%struct.xhci_hcd* %24, i64 %27, i32 %28, i32 %31, i32 %34, %struct.xhci_dequeue_state* %7)
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %3
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %44 = call i32 @xhci_dbg(%struct.xhci_hcd* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %8, align 8
  %51 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @xhci_queue_new_dequeue_state(%struct.xhci_hcd* %45, i64 %48, i32 %49, i32 %52, %struct.xhci_dequeue_state* %7)
  br label %63

54:                                               ; preds = %3
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %56 = call i32 @xhci_dbg(%struct.xhci_hcd* %55, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %59 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @xhci_setup_input_ctx_for_quirk(%struct.xhci_hcd* %57, i64 %60, i32 %61, %struct.xhci_dequeue_state* %7)
  br label %63

63:                                               ; preds = %54, %42
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_find_new_dequeue_state(%struct.xhci_hcd*, i64, i32, i32, i32, %struct.xhci_dequeue_state*) #1

declare dso_local i32 @xhci_queue_new_dequeue_state(%struct.xhci_hcd*, i64, i32, i32, %struct.xhci_dequeue_state*) #1

declare dso_local i32 @xhci_setup_input_ctx_for_quirk(%struct.xhci_hcd*, i64, i32, %struct.xhci_dequeue_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
