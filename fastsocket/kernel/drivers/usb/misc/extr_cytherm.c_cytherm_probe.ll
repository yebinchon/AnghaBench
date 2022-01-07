; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_cytherm_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_cytherm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_cytherm = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@dev_attr_brightness = common dso_local global i32 0, align 4
@dev_attr_temp = common dso_local global i32 0, align 4
@dev_attr_button = common dso_local global i32 0, align 4
@dev_attr_port0 = common dso_local global i32 0, align 4
@dev_attr_port1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cypress thermometer device now attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cytherm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cytherm_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_cytherm*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store %struct.usb_cytherm* null, %struct.usb_cytherm** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_cytherm* @kzalloc(i32 8, i32 %13)
  store %struct.usb_cytherm* %14, %struct.usb_cytherm** %7, align 8
  %15 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %16 = icmp eq %struct.usb_cytherm* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_get_dev(%struct.usb_device* %22)
  %24 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %25 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, %struct.usb_cytherm* %27)
  %29 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %30 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %29, i32 0, i32 0
  store i32 255, i32* %30, align 4
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = call i32 @device_create_file(i32* %32, i32* @dev_attr_brightness)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %69

37:                                               ; preds = %21
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %38, i32 0, i32 0
  %40 = call i32 @device_create_file(i32* %39, i32* @dev_attr_temp)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %69

44:                                               ; preds = %37
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 0
  %47 = call i32 @device_create_file(i32* %46, i32* @dev_attr_button)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %69

51:                                               ; preds = %44
  %52 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = call i32 @device_create_file(i32* %53, i32* @dev_attr_port0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = call i32 @device_create_file(i32* %60, i32* @dev_attr_port1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %58
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 0
  %68 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

69:                                               ; preds = %64, %57, %50, %43, %36
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 @device_remove_file(i32* %71, i32* @dev_attr_brightness)
  %73 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %74 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %73, i32 0, i32 0
  %75 = call i32 @device_remove_file(i32* %74, i32* @dev_attr_temp)
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 0
  %78 = call i32 @device_remove_file(i32* %77, i32* @dev_attr_button)
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 0
  %81 = call i32 @device_remove_file(i32* %80, i32* @dev_attr_port0)
  %82 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 0
  %84 = call i32 @device_remove_file(i32* %83, i32* @dev_attr_port1)
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = call i32 @usb_set_intfdata(%struct.usb_interface* %85, %struct.usb_cytherm* null)
  %87 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %88 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @usb_put_dev(i32 %89)
  %91 = load %struct.usb_cytherm*, %struct.usb_cytherm** %7, align 8
  %92 = call i32 @kfree(%struct.usb_cytherm* %91)
  br label %93

93:                                               ; preds = %69, %17
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %65
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_cytherm* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_cytherm*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usb_cytherm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
