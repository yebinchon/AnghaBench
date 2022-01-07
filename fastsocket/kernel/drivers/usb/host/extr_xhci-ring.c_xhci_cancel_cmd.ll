; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cancel_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_cancel_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32 }
%struct.xhci_command = type { i32 }
%union.xhci_trb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Abort the command ring, but the xHCI is dead.\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Queuing command descriptor failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Abort command ring failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"xHCI host controller is dead.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_cancel_cmd(%struct.xhci_hcd* %0, %struct.xhci_command* %1, %union.xhci_trb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_command*, align 8
  %7 = alloca %union.xhci_trb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_command* %1, %struct.xhci_command** %6, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XHCI_STATE_DYING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %22 = call i32 @xhci_warn(%struct.xhci_hcd* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ESHUTDOWN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %27 = load %struct.xhci_command*, %struct.xhci_command** %6, align 8
  %28 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %29 = call i32 @xhci_queue_cd(%struct.xhci_hcd* %26, %struct.xhci_command* %27, %union.xhci_trb* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %34 = call i32 @xhci_warn(%struct.xhci_hcd* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %65

35:                                               ; preds = %25
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %37 = call i32 @xhci_abort_cmd_ring(%struct.xhci_hcd* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %35
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %42 = call i32 @xhci_err(%struct.xhci_hcd* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ESHUTDOWN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %56 = call %struct.TYPE_2__* @xhci_to_hcd(%struct.xhci_hcd* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_hc_died(i32 %58)
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %61 = call i32 @xhci_dbg(%struct.xhci_hcd* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %71

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %32, %20
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %66, i32 0, i32 1
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %65, %50
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_queue_cd(%struct.xhci_hcd*, %struct.xhci_command*, %union.xhci_trb*) #1

declare dso_local i32 @xhci_abort_cmd_ring(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hc_died(i32) #1

declare dso_local %struct.TYPE_2__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
