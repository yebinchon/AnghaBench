; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_onetouch.c_onetouch_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_onetouch.c_onetouch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i32 }

@onetouch_usb_ids = common dso_local global %struct.usb_device_id* null, align 8
@onetouch_unusual_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @onetouch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onetouch_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** @onetouch_usb_ids, align 8
  %12 = ptrtoint %struct.usb_device_id* %10 to i64
  %13 = ptrtoint %struct.usb_device_id* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = load i32, i32* @onetouch_unusual_dev_list, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = call i32 @usb_stor_probe1(%struct.us_data** %6, %struct.usb_interface* %8, %struct.usb_device_id* %9, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.us_data*, %struct.us_data** %6, align 8
  %27 = call i32 @usb_stor_probe2(%struct.us_data* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
