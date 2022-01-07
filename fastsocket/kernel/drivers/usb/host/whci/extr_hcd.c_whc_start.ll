; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32, i32 }
%struct.wusbhc = type { i32, i32 }
%struct.whc = type { i64 }

@WUSBINTR_GEN_CMD_DONE = common dso_local global i32 0, align 4
@WUSBINTR_HOST_ERR = common dso_local global i32 0, align 4
@WUSBINTR_ASYNC_SCHED_SYNCED = common dso_local global i32 0, align 4
@WUSBINTR_DNTS_INT = common dso_local global i32 0, align 4
@WUSBINTR_ERR_INT = common dso_local global i32 0, align 4
@WUSBINTR_INT = common dso_local global i32 0, align 4
@WUSBINTR = common dso_local global i64 0, align 8
@WUSBCMD_RUN = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @whc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whc_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.whc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %7)
  store %struct.wusbhc* %8, %struct.wusbhc** %3, align 8
  %9 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %10 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %9)
  store %struct.whc* %10, %struct.whc** %4, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %12 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @WUSBINTR_GEN_CMD_DONE, align 4
  %15 = load i32, i32* @WUSBINTR_HOST_ERR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WUSBINTR_ASYNC_SCHED_SYNCED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WUSBINTR_DNTS_INT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WUSBINTR_ERR_INT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WUSBINTR_INT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.whc*, %struct.whc** %4, align 8
  %26 = getelementptr inbounds %struct.whc, %struct.whc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WUSBINTR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @le_writel(i32 %24, i64 %29)
  %31 = call i32 (...) @wusb_cluster_id_get()
  store i32 %31, i32* %5, align 4
  %32 = load %struct.whc*, %struct.whc** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @whc_set_cluster_id(%struct.whc* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %55

38:                                               ; preds = %1
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %41 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.whc*, %struct.whc** %4, align 8
  %43 = load i32, i32* @WUSBCMD_RUN, align 4
  %44 = load i32, i32* @WUSBCMD_RUN, align 4
  %45 = call i32 @whc_write_wusbcmd(%struct.whc* %42, i32 %43, i32 %44)
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load i32, i32* @HC_STATE_RUNNING, align 4
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %37
  %56 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %57 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le_writel(i32, i64) #1

declare dso_local i32 @wusb_cluster_id_get(...) #1

declare dso_local i32 @whc_set_cluster_id(%struct.whc*, i32) #1

declare dso_local i32 @whc_write_wusbcmd(%struct.whc*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
