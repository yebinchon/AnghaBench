; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_requires_manual_halt_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_requires_manual_halt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ep_ctx = type { i32 }

@COMP_TX_ERR = common dso_local global i32 0, align 4
@COMP_BABBLE = common dso_local global i32 0, align 4
@COMP_SPLIT_ERR = common dso_local global i32 0, align 4
@EP_STATE_MASK = common dso_local global i32 0, align 4
@EP_STATE_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_ep_ctx*, i32)* @xhci_requires_manual_halt_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_requires_manual_halt_cleanup(%struct.xhci_hcd* %0, %struct.xhci_ep_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ep_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ep_ctx* %1, %struct.xhci_ep_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @COMP_TX_ERR, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @COMP_BABBLE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @COMP_SPLIT_ERR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15, %11, %3
  %20 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EP_STATE_MASK, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = and i32 %22, %24
  %26 = load i32, i32* @EP_STATE_HALTED, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %32

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %15
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
