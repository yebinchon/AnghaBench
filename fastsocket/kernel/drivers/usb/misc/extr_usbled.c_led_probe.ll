; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbled.c_led_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_usbled.c_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_led = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@dev_attr_blue = common dso_local global i32 0, align 4
@dev_attr_red = common dso_local global i32 0, align 4
@dev_attr_green = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"USB LED device now attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_led*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  store %struct.usb_led* null, %struct.usb_led** %7, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usb_led* @kzalloc(i32 4, i32 %13)
  store %struct.usb_led* %14, %struct.usb_led** %7, align 8
  %15 = load %struct.usb_led*, %struct.usb_led** %7, align 8
  %16 = icmp eq %struct.usb_led* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_get_dev(%struct.usb_device* %22)
  %24 = load %struct.usb_led*, %struct.usb_led** %7, align 8
  %25 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = load %struct.usb_led*, %struct.usb_led** %7, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, %struct.usb_led* %27)
  %29 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %30 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %29, i32 0, i32 0
  %31 = call i32 @device_create_file(i32* %30, i32* @dev_attr_blue)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %53

35:                                               ; preds = %21
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = call i32 @device_create_file(i32* %37, i32* @dev_attr_red)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %53

42:                                               ; preds = %35
  %43 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = call i32 @device_create_file(i32* %44, i32* @dev_attr_green)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

53:                                               ; preds = %48, %41, %34
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %54, i32 0, i32 0
  %56 = call i32 @device_remove_file(i32* %55, i32* @dev_attr_blue)
  %57 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %58 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %57, i32 0, i32 0
  %59 = call i32 @device_remove_file(i32* %58, i32* @dev_attr_red)
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %60, i32 0, i32 0
  %62 = call i32 @device_remove_file(i32* %61, i32* @dev_attr_green)
  %63 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %64 = call i32 @usb_set_intfdata(%struct.usb_interface* %63, %struct.usb_led* null)
  %65 = load %struct.usb_led*, %struct.usb_led** %7, align 8
  %66 = getelementptr inbounds %struct.usb_led, %struct.usb_led* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @usb_put_dev(i32 %67)
  %69 = load %struct.usb_led*, %struct.usb_led** %7, align 8
  %70 = call i32 @kfree(%struct.usb_led* %69)
  br label %71

71:                                               ; preds = %53, %17
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %49
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.usb_led* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_led*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.usb_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
