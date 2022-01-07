; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_dev = type { %struct.usb_ctrlrequest*, %struct.urb*, i32, %struct.wusbhc* }
%struct.usb_ctrlrequest = type { i32, i8*, i64, i8*, i32 }
%struct.urb = type { i32 }
%struct.wusbhc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@wusbhc_devconnect_acked_work = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_REQ_SET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wusb_dev* (%struct.wusbhc*)* @wusb_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wusb_dev* @wusb_dev_alloc(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusb_dev*, align 8
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wusb_dev* @kzalloc(i32 32, i32 %7)
  store %struct.wusb_dev* %8, %struct.wusb_dev** %4, align 8
  %9 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %10 = icmp eq %struct.wusb_dev* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %14, i32 0, i32 3
  store %struct.wusbhc* %13, %struct.wusbhc** %15, align 8
  %16 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %17 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %16, i32 0, i32 2
  %18 = load i32, i32* @wusbhc_devconnect_acked_work, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %5, align 8
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = icmp eq %struct.urb* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %68

25:                                               ; preds = %12
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %26)
  store %struct.usb_ctrlrequest* %27, %struct.usb_ctrlrequest** %6, align 8
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %29 = icmp eq %struct.usb_ctrlrequest* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* @USB_DIR_OUT, align 4
  %33 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %38 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @USB_REQ_SET_DESCRIPTOR, align 4
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @USB_DT_KEY, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %45 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %54 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.urb*, %struct.urb** %5, align 8
  %62 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %63 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %62, i32 0, i32 1
  store %struct.urb* %61, %struct.urb** %63, align 8
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %65 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %66 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %65, i32 0, i32 0
  store %struct.usb_ctrlrequest* %64, %struct.usb_ctrlrequest** %66, align 8
  %67 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  store %struct.wusb_dev* %67, %struct.wusb_dev** %2, align 8
  br label %71

68:                                               ; preds = %30, %24, %11
  %69 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %70 = call i32 @wusb_dev_free(%struct.wusb_dev* %69)
  store %struct.wusb_dev* null, %struct.wusb_dev** %2, align 8
  br label %71

71:                                               ; preds = %68, %31
  %72 = load %struct.wusb_dev*, %struct.wusb_dev** %2, align 8
  ret %struct.wusb_dev* %72
}

declare dso_local %struct.wusb_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wusb_dev_free(%struct.wusb_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
