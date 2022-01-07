; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_endpoint_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_endpoint_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_hcd = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i64, i32*, i32* }
%struct.usb_device = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"Endpoint 0x%x not halted, refusing to reset.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Control endpoint stall already handled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Queueing reset endpoint command\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"FIXME allocate a new ring segment\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_endpoint_reset(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %11)
  store %struct.xhci_hcd* %12, %struct.xhci_hcd** %5, align 8
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.usb_device*
  store %struct.usb_device* %16, %struct.usb_device** %6, align 8
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %100

22:                                               ; preds = %2
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i32 0, i32 0
  %25 = call i32 @xhci_get_endpoint_index(%struct.TYPE_5__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %35, i64 %37
  store %struct.xhci_virt_ep* %38, %struct.xhci_virt_ep** %10, align 8
  %39 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %40 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %22
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %45 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %46 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %100

50:                                               ; preds = %22
  %51 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %52 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %51, i32 0, i32 0
  %53 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_5__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %57 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %100

58:                                               ; preds = %50
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %60 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %62 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %61, i32 0, i32 0
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %67 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @xhci_queue_reset_ep(%struct.xhci_hcd* %65, i64 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %58
  %74 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd* %74, %struct.usb_device* %75, i32 %76)
  %78 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %79 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %83 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %82)
  br label %84

84:                                               ; preds = %73, %58
  %85 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %86 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  %87 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %88 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  %89 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %10, align 8
  %90 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %92 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %91, i32 0, i32 0
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %99 = call i32 @xhci_warn(%struct.xhci_hcd* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %21, %43, %55, %97, %84
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_get_endpoint_index(%struct.TYPE_5__*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_queue_reset_ep(%struct.xhci_hcd*, i64, i32) #1

declare dso_local i32 @xhci_cleanup_stalled_ring(%struct.xhci_hcd*, %struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
