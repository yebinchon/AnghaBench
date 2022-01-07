; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umc_dev = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umc_dev*)* @whc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whc_remove(%struct.umc_dev* %0) #0 {
  %2 = alloca %struct.umc_dev*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.whc*, align 8
  store %struct.umc_dev* %0, %struct.umc_dev** %2, align 8
  %6 = load %struct.umc_dev*, %struct.umc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.umc_dev, %struct.umc_dev* %6, i32 0, i32 0
  %8 = call %struct.usb_hcd* @dev_get_drvdata(i32* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %9)
  store %struct.wusbhc* %10, %struct.wusbhc** %4, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %12 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %11)
  store %struct.whc* %12, %struct.whc** %5, align 8
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %14 = icmp ne %struct.usb_hcd* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.whc*, %struct.whc** %5, align 8
  %17 = call i32 @whc_dbg_clean_up(%struct.whc* %16)
  %18 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %19 = call i32 @wusbhc_b_destroy(%struct.wusbhc* %18)
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = call i32 @usb_remove_hcd(%struct.usb_hcd* %20)
  %22 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %23 = call i32 @wusbhc_destroy(%struct.wusbhc* %22)
  %24 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %25 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uwb_rc_put(i32 %26)
  %28 = load %struct.whc*, %struct.whc** %5, align 8
  %29 = call i32 @whc_clean_up(%struct.whc* %28)
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %31 = call i32 @usb_put_hcd(%struct.usb_hcd* %30)
  br label %32

32:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(i32*) #1

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @whc_dbg_clean_up(%struct.whc*) #1

declare dso_local i32 @wusbhc_b_destroy(%struct.wusbhc*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @wusbhc_destroy(%struct.wusbhc*) #1

declare dso_local i32 @uwb_rc_put(i32) #1

declare dso_local i32 @whc_clean_up(%struct.whc*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
