; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_hcd.c_whc_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.wusbhc = type { i32 }
%struct.whc = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @whc_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whc_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusbhc*, align 8
  %8 = alloca %struct.whc*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd* %10)
  store %struct.wusbhc* %11, %struct.wusbhc** %7, align 8
  %12 = load %struct.wusbhc*, %struct.wusbhc** %7, align 8
  %13 = call %struct.whc* @wusbhc_to_whc(%struct.wusbhc* %12)
  store %struct.whc* %13, %struct.whc** %8, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_pipetype(i32 %16)
  switch i32 %17, label %27 [
    i32 129, label %18
    i32 128, label %23
    i32 130, label %26
    i32 131, label %26
  ]

18:                                               ; preds = %3
  %19 = load %struct.whc*, %struct.whc** %8, align 8
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pzl_urb_dequeue(%struct.whc* %19, %struct.urb* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %32

26:                                               ; preds = %3, %3
  br label %27

27:                                               ; preds = %3, %26
  %28 = load %struct.whc*, %struct.whc** %8, align 8
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @asl_urb_dequeue(%struct.whc* %28, %struct.urb* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %23, %18
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.wusbhc* @usb_hcd_to_wusbhc(%struct.usb_hcd*) #1

declare dso_local %struct.whc* @wusbhc_to_whc(%struct.wusbhc*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @pzl_urb_dequeue(%struct.whc*, %struct.urb*, i32) #1

declare dso_local i32 @asl_urb_dequeue(%struct.whc*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
