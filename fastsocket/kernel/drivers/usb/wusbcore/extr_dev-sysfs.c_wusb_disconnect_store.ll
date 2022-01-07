; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_disconnect_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_disconnect_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }
%struct.wusbhc = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wusb_disconnect_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wusb_disconnect_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.wusbhc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %52

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %5, align 8
  br label %52

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call %struct.usb_device* @to_usb_device(%struct.device* %26)
  store %struct.usb_device* %27, %struct.usb_device** %10, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %29 = call %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device* %28)
  store %struct.wusbhc* %29, %struct.wusbhc** %11, align 8
  %30 = load %struct.wusbhc*, %struct.wusbhc** %11, align 8
  %31 = icmp eq %struct.wusbhc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i64, i64* @ENODEV, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.wusbhc*, %struct.wusbhc** %11, align 8
  %37 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wusb_port_no_to_idx(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.wusbhc*, %struct.wusbhc** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @__wusbhc_dev_disable(%struct.wusbhc* %43, i32 %44)
  %46 = load %struct.wusbhc*, %struct.wusbhc** %11, align 8
  %47 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.wusbhc*, %struct.wusbhc** %11, align 8
  %50 = call i32 @wusbhc_put(%struct.wusbhc* %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %35, %32, %23, %17
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wusb_port_no_to_idx(i32) #1

declare dso_local i32 @__wusbhc_dev_disable(%struct.wusbhc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wusbhc_put(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
