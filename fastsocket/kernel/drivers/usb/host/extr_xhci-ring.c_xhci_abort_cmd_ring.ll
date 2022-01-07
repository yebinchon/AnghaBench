; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_abort_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_xhci_abort_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Abort command ring\0A\00", align 1
@CMD_RING_STATE_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"The command ring isn't running, Have the command ring been stopped?\0A\00", align 1
@CMD_RING_RUNNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Command ring had been stopped\0A\00", align 1
@CMD_RING_STATE_ABORTED = common dso_local global i32 0, align 4
@CMD_RING_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Stopped the command ring failed, maybe the host is dead\0A\00", align 1
@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*)* @xhci_abort_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_abort_cmd_ring(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = call i32 @xhci_dbg(%struct.xhci_hcd* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CMD_RING_STATE_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %16 = call i32 @xhci_dbg(%struct.xhci_hcd* %15, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @xhci_read_64(%struct.xhci_hcd* %18, i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CMD_RING_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %30 = call i32 @xhci_dbg(%struct.xhci_hcd* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

31:                                               ; preds = %17
  %32 = load i32, i32* @CMD_RING_STATE_ABORTED, align 4
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CMD_RING_ABORT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @xhci_write_64(%struct.xhci_hcd* %35, i32 %38, i32* %42)
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* @CMD_RING_RUNNING, align 4
  %50 = call i32 @xhci_handshake(%struct.xhci_hcd* %44, i32* %48, i32 %49, i32 0, i32 5000000)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %31
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %55 = call i32 @xhci_err(%struct.xhci_hcd* %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @XHCI_STATE_DYING, align 4
  %57 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %58 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %62 = call i32 @xhci_quiesce(%struct.xhci_hcd* %61)
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %64 = call i32 @xhci_halt(%struct.xhci_hcd* %63)
  %65 = load i32, i32* @ESHUTDOWN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %53, %28, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_write_64(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @xhci_handshake(%struct.xhci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @xhci_quiesce(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
