; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_storage_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_storage_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32 }
%struct.usb_interface = type { i32 }
%struct.us_data = type { i32 }

@USB_US_TYPE_STOR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@usb_storage_usb_ids = common dso_local global %struct.usb_device_id* null, align 8
@us_unusual_dev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @storage_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storage_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %9 = load i32, i32* @USB_US_TYPE_STOR, align 4
  %10 = call i64 @usb_usual_check_type(%struct.usb_device_id* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call i64 @usb_usual_ignore_device(%struct.usb_interface* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %23 = load %struct.usb_device_id*, %struct.usb_device_id** @usb_storage_usb_ids, align 8
  %24 = ptrtoint %struct.usb_device_id* %22 to i64
  %25 = ptrtoint %struct.usb_device_id* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = load i32, i32* @us_unusual_dev_list, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @usb_stor_probe1(%struct.us_data** %6, %struct.usb_interface* %20, %struct.usb_device_id* %21, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %19
  %38 = load %struct.us_data*, %struct.us_data** %6, align 8
  %39 = call i32 @usb_stor_probe2(%struct.us_data* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @usb_usual_check_type(%struct.usb_device_id*, i32) #1

declare dso_local i64 @usb_usual_ignore_device(%struct.usb_interface*) #1

declare dso_local i32 @usb_stor_probe1(%struct.us_data**, %struct.usb_interface*, %struct.usb_device_id*, i32) #1

declare dso_local i32 @usb_stor_probe2(%struct.us_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
