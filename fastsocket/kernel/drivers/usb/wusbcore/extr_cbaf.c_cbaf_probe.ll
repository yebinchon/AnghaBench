; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.cbaf = type { i32, %struct.cbaf*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"This device is not WUSB-CBAF compliantand is not supported yet.\0A\00", align 1
@cbaf_dev_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't register sysfs attr group: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cbaf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.cbaf*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cbaf* @kzalloc(i32 24, i32 %13)
  store %struct.cbaf* %14, %struct.cbaf** %6, align 8
  %15 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %16 = icmp eq %struct.cbaf* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %70

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.cbaf* @kmalloc(i32 512, i32 %19)
  %21 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %22 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %21, i32 0, i32 1
  store %struct.cbaf* %20, %struct.cbaf** %22, align 8
  %23 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %24 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %23, i32 0, i32 1
  %25 = load %struct.cbaf*, %struct.cbaf** %24, align 8
  %26 = icmp eq %struct.cbaf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %67

28:                                               ; preds = %18
  %29 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %30 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %29, i32 0, i32 0
  store i32 512, i32* %30, align 8
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @interface_to_usbdev(%struct.usb_interface* %31)
  %33 = call i32 @usb_get_dev(i32 %32)
  %34 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %35 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = call i32 @usb_get_intf(%struct.usb_interface* %36)
  %38 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %39 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %41 = call i32 @cbaf_check(%struct.cbaf* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %62

47:                                               ; preds = %28
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = call i32 @sysfs_create_group(i32* %49, i32* @cbaf_dev_attr_group)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %60 = call i32 @usb_set_intfdata(%struct.usb_interface* %58, %struct.cbaf* %59)
  store i32 0, i32* %3, align 4
  br label %72

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %64 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %63, i32 0, i32 1
  %65 = load %struct.cbaf*, %struct.cbaf** %64, align 8
  %66 = call i32 @kfree(%struct.cbaf* %65)
  br label %67

67:                                               ; preds = %62, %27
  %68 = load %struct.cbaf*, %struct.cbaf** %6, align 8
  %69 = call i32 @kfree(%struct.cbaf* %68)
  br label %70

70:                                               ; preds = %67, %17
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %57
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.cbaf* @kzalloc(i32, i32) #1

declare dso_local %struct.cbaf* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @cbaf_check(%struct.cbaf*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.cbaf*) #1

declare dso_local i32 @kfree(%struct.cbaf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
