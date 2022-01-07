; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_sevseg_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbsevseg.c_sevseg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_sevsegdev = type { i32, i32, i32, i32, %struct.usb_interface* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@dev_attr_grp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"USB 7 Segment device now attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sevseg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sevseg_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_sevsegdev*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store %struct.usb_sevsegdev* null, %struct.usb_sevsegdev** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_sevsegdev* @kzalloc(i32 24, i32 %13)
  store %struct.usb_sevsegdev* %14, %struct.usb_sevsegdev** %7, align 8
  %15 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %16 = icmp eq %struct.usb_sevsegdev* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_get_dev(%struct.usb_device* %22)
  %24 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %25 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %28 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %27, i32 0, i32 4
  store %struct.usb_interface* %26, %struct.usb_interface** %28, align 8
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %31 = call i32 @usb_set_intfdata(%struct.usb_interface* %29, %struct.usb_sevsegdev* %30)
  %32 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %33 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %35 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %34, i32 0, i32 1
  store i32 6, i32* %35, align 4
  %36 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %37 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %36, i32 0, i32 2
  store i32 63, i32* %37, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @sysfs_create_group(i32* %40, i32* @dev_attr_grp)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %49

45:                                               ; preds = %21
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = call i32 @dev_info(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %60

49:                                               ; preds = %44
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = call i32 @usb_set_intfdata(%struct.usb_interface* %50, %struct.usb_sevsegdev* null)
  %52 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %53 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_put_dev(i32 %54)
  %56 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %7, align 8
  %57 = call i32 @kfree(%struct.usb_sevsegdev* %56)
  br label %58

58:                                               ; preds = %49, %17
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %45
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_sevsegdev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_sevsegdev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usb_sevsegdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
