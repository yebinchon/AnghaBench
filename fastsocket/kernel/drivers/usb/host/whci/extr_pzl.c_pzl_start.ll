; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_pzl.c_pzl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WUSBPERIODICLISTBASE = common dso_local global i64 0, align 8
@WUSBCMD_PERIODIC_EN = common dso_local global i32 0, align 4
@WUSBSTS = common dso_local global i64 0, align 8
@WUSBSTS_PERIODIC_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"start PZL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pzl_start(%struct.whc* %0) #0 {
  %2 = alloca %struct.whc*, align 8
  store %struct.whc* %0, %struct.whc** %2, align 8
  %3 = load %struct.whc*, %struct.whc** %2, align 8
  %4 = getelementptr inbounds %struct.whc, %struct.whc* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.whc*, %struct.whc** %2, align 8
  %7 = getelementptr inbounds %struct.whc, %struct.whc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WUSBPERIODICLISTBASE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @le_writeq(i32 %5, i64 %10)
  %12 = load %struct.whc*, %struct.whc** %2, align 8
  %13 = load i32, i32* @WUSBCMD_PERIODIC_EN, align 4
  %14 = load i32, i32* @WUSBCMD_PERIODIC_EN, align 4
  %15 = call i32 @whc_write_wusbcmd(%struct.whc* %12, i32 %13, i32 %14)
  %16 = load %struct.whc*, %struct.whc** %2, align 8
  %17 = getelementptr inbounds %struct.whc, %struct.whc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.whc*, %struct.whc** %2, align 8
  %21 = getelementptr inbounds %struct.whc, %struct.whc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WUSBSTS, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @WUSBSTS_PERIODIC_SCHED, align 4
  %26 = load i32, i32* @WUSBSTS_PERIODIC_SCHED, align 4
  %27 = call i32 @whci_wait_for(i32* %19, i64 %24, i32 %25, i32 %26, i32 1000, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @le_writeq(i32, i64) #1

declare dso_local i32 @whc_write_wusbcmd(%struct.whc*, i32, i32) #1

declare dso_local i32 @whci_wait_for(i32*, i64, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
