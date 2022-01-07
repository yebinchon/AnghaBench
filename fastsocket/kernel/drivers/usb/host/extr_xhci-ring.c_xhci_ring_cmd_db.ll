; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_ring_cmd_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_ring_cmd_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CMD_RING_STATE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"// Ding dong!\0A\00", align 1
@DB_VALUE_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_ring_cmd_db(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %3 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @CMD_RING_STATE_RUNNING, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %12 = call i32 @xhci_dbg(%struct.xhci_hcd* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %14 = load i32, i32* @DB_VALUE_HOST, align 4
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = call i32 @xhci_writel(%struct.xhci_hcd* %13, i32 %14, i32* %20)
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @xhci_readl(%struct.xhci_hcd* %22, i32* %28)
  br label %30

30:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_writel(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
