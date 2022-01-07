; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_reset_ep_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_handle_reset_ep_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.xhci_event_cmd = type { i32 }
%union.xhci_trb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"Ignoring reset ep completion code of %u\0A\00", align 1
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Queueing configure endpoint command\0A\00", align 1
@EP_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_event_cmd*, %union.xhci_trb*)* @handle_reset_ep_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_reset_ep_completion(%struct.xhci_hcd* %0, %struct.xhci_event_cmd* %1, %union.xhci_trb* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_event_cmd*, align 8
  %6 = alloca %union.xhci_trb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_event_cmd* %1, %struct.xhci_event_cmd** %5, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %6, align 8
  %9 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %10 = bitcast %union.xhci_trb* %9 to %struct.TYPE_5__*
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = call i32 @TRB_TO_SLOT_ID(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %18 = bitcast %union.xhci_trb* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = call i32 @TRB_TO_EP_INDEX(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %26 = load %struct.xhci_event_cmd*, %struct.xhci_event_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.xhci_event_cmd, %struct.xhci_event_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = call i32 @GET_COMP_CODE(i32 %29)
  %31 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %3
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %40 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd* %41, i32 %52, i32 %53, i32 0)
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %56 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %55)
  br label %79

57:                                               ; preds = %3
  %58 = load i32, i32* @EP_HALTED, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %61 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %62, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %59
  store i32 %74, i32* %72, align 4
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %57, %38
  ret void
}

declare dso_local i32 @TRB_TO_SLOT_ID(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TO_EP_INDEX(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @xhci_queue_configure_endpoint(%struct.xhci_hcd*, i32, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

declare dso_local i32 @ring_doorbell_for_active_rings(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
