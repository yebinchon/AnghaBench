; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_giveback_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusbhc_giveback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.urb = type { i32 }
%struct.wusb_dev = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@wusbd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wusbhc_giveback_urb(%struct.wusbhc* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wusb_dev*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc* %8, i32 %11)
  store %struct.wusb_dev* %12, %struct.wusb_dev** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %17 = icmp ne %struct.wusb_dev* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %21 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %23 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %22, i32 0, i32 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @wusbd, align 4
  %28 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %29 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.wusb_dev*, %struct.wusb_dev** %7, align 8
  %33 = call i32 @wusb_dev_put(%struct.wusb_dev* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %15, %3
  %36 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 0
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @usb_hcd_giveback_urb(i32* %37, %struct.urb* %38, i32 %39)
  ret void
}

declare dso_local %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wusb_dev_put(%struct.wusb_dev*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
