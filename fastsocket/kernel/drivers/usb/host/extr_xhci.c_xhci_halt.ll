; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"// Halt the HC\0A\00", align 1
@STS_HALT = common dso_local global i32 0, align 4
@XHCI_MAX_HALT_USEC = common dso_local global i32 0, align 4
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@CMD_RING_STATE_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Host not halted after %u microseconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_halt(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = call i32 @xhci_dbg(%struct.xhci_hcd* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %7 = call i32 @xhci_quiesce(%struct.xhci_hcd* %6)
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @STS_HALT, align 4
  %14 = load i32, i32* @STS_HALT, align 4
  %15 = load i32, i32* @XHCI_MAX_HALT_USEC, align 4
  %16 = call i32 @xhci_handshake(%struct.xhci_hcd* %8, i32* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @CMD_RING_STATE_STOPPED, align 4
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %30 = load i32, i32* @XHCI_MAX_HALT_USEC, align 4
  %31 = call i32 @xhci_warn(%struct.xhci_hcd* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_quiesce(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_handshake(%struct.xhci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
