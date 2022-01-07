; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_quirks.c_usb_detect_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_quirks.c_usb_detect_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i64 }
%struct.usb_device = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@usb_quirk_list = common dso_local global %struct.usb_device_id* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"USB quirks for this device: %x\0A\00", align 1
@USB_CLASS_HUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_detect_quirks(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_device_id*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %4 = load %struct.usb_device_id*, %struct.usb_device_id** @usb_quirk_list, align 8
  store %struct.usb_device_id* %4, %struct.usb_device_id** %3, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = call %struct.usb_device_id* @find_id(%struct.usb_device* %5)
  store %struct.usb_device_id* %6, %struct.usb_device_id** %3, align 8
  %7 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %8 = icmp ne %struct.usb_device_id* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 4
  %23 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  ret void
}

declare dso_local %struct.usb_device_id* @find_id(%struct.usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
