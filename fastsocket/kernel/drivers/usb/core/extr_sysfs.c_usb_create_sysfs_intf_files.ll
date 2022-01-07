; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_sysfs.c_usb_create_sysfs_intf_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_sysfs.c_usb_create_sysfs_intf_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, i64, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@USB_QUIRK_CONFIG_INTF_STRINGS = common dso_local global i32 0, align 4
@dev_attr_interface = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_create_sysfs_intf_files(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 3
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  store %struct.usb_host_interface* %11, %struct.usb_host_interface** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %55

22:                                               ; preds = %16
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_QUIRK_CONFIG_INTF_STRINGS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %37 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @usb_cache_string(%struct.usb_device* %35, i32 %39)
  %41 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %42 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %27, %22
  %44 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %45 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 1
  %51 = call i32 @device_create_file(i32* %50, i32* @dev_attr_interface)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %54 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %21
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32* @usb_cache_string(%struct.usb_device*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
