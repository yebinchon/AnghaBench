; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_remove_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_qset_remove_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, %struct.wusbhc }
%struct.wusbhc = type { i32 }
%struct.whc_qset = type { i32 }
%struct.urb = type { %struct.whc_urb* }
%struct.whc_urb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qset_remove_urb(%struct.whc* %0, %struct.whc_qset* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.whc*, align 8
  %6 = alloca %struct.whc_qset*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wusbhc*, align 8
  %10 = alloca %struct.whc_urb*, align 8
  store %struct.whc* %0, %struct.whc** %5, align 8
  store %struct.whc_qset* %1, %struct.whc_qset** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.whc*, %struct.whc** %5, align 8
  %12 = getelementptr inbounds %struct.whc, %struct.whc* %11, i32 0, i32 1
  store %struct.wusbhc* %12, %struct.wusbhc** %9, align 8
  %13 = load %struct.urb*, %struct.urb** %7, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load %struct.whc_urb*, %struct.whc_urb** %14, align 8
  store %struct.whc_urb* %15, %struct.whc_urb** %10, align 8
  %16 = load %struct.wusbhc*, %struct.wusbhc** %9, align 8
  %17 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %16, i32 0, i32 0
  %18 = load %struct.urb*, %struct.urb** %7, align 8
  %19 = call i32 @usb_hcd_unlink_urb_from_ep(i32* %17, %struct.urb* %18)
  %20 = load %struct.whc*, %struct.whc** %5, align 8
  %21 = getelementptr inbounds %struct.whc, %struct.whc* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.wusbhc*, %struct.wusbhc** %9, align 8
  %24 = load %struct.urb*, %struct.urb** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @wusbhc_giveback_urb(%struct.wusbhc* %23, %struct.urb* %24, i32 %25)
  %27 = load %struct.whc*, %struct.whc** %5, align 8
  %28 = getelementptr inbounds %struct.whc, %struct.whc* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.whc_urb*, %struct.whc_urb** %10, align 8
  %31 = call i32 @kfree(%struct.whc_urb* %30)
  ret void
}

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32*, %struct.urb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wusbhc_giveback_urb(%struct.wusbhc*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kfree(%struct.whc_urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
