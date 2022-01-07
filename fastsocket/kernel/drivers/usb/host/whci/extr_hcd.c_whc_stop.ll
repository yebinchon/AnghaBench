; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.wusbhc = type { i32, i32 }
%struct.whc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WUSBINTR = common dso_local global i64 0, align 8
@WUSBCMD_RUN = common dso_local global i32 0, align 4
@WUSBSTS = common dso_local global i64 0, align 8
@WUSBSTS_HCHALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"HC to halt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @whc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whc_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.whc*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %5)
  store %struct.wusbhc* %6, %struct.wusbhc** %3, align 8
  %7 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %8 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %7)
  store %struct.whc* %8, %struct.whc** %4, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.whc*, %struct.whc** %4, align 8
  %13 = getelementptr inbounds %struct.whc, %struct.whc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WUSBINTR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @le_writel(i32 0, i64 %16)
  %18 = load %struct.whc*, %struct.whc** %4, align 8
  %19 = load i32, i32* @WUSBCMD_RUN, align 4
  %20 = call i32 @whc_write_wusbcmd(%struct.whc* %18, i32 %19, i32 0)
  %21 = load %struct.whc*, %struct.whc** %4, align 8
  %22 = getelementptr inbounds %struct.whc, %struct.whc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.whc*, %struct.whc** %4, align 8
  %26 = getelementptr inbounds %struct.whc, %struct.whc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WUSBSTS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @WUSBSTS_HCHALTED, align 4
  %31 = load i32, i32* @WUSBSTS_HCHALTED, align 4
  %32 = call i32 @whci_wait_for(i32* %24, i64 %29, i32 %30, i32 %31, i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %34 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wusb_cluster_id_put(i32 %35)
  %37 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %38 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @whc_write_wusbcmd(%struct.whc*, i32, i32) #1

declare dso_local i32 @whci_wait_for(i32*, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @wusb_cluster_id_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
