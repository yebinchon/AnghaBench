; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CMD_RUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"// Turn on HC, cmd = 0x%x.\0A\00", align 1
@STS_HALT = common dso_local global i32 0, align 4
@XHCI_MAX_HALT_USEC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Host took too long to start, waited %u microseconds.\0A\00", align 1
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*)* @xhci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_start(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @xhci_readl(%struct.xhci_hcd* %5, i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CMD_RUN, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @xhci_dbg(%struct.xhci_hcd* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @xhci_writel(%struct.xhci_hcd* %17, i32 %18, i32* %22)
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @STS_HALT, align 4
  %30 = load i32, i32* @XHCI_MAX_HALT_USEC, align 4
  %31 = call i32 @xhci_handshake(%struct.xhci_hcd* %24, i32* %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %38 = load i32, i32* @XHCI_MAX_HALT_USEC, align 4
  %39 = call i32 @xhci_err(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @xhci_writel(%struct.xhci_hcd*, i32, i32*) #1

declare dso_local i32 @xhci_handshake(%struct.xhci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
