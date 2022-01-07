; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cypress_cy7c63.c_cypress_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cypress_cy7c63.c_cypress_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.cypress = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@dev_attr_port0 = common dso_local global i32 0, align 4
@dev_attr_port1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cypress CY7C63xxx device now attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @cypress_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.cypress*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.cypress* null, %struct.cypress** %6, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cypress* @kzalloc(i32 4, i32 %10)
  store %struct.cypress* %11, %struct.cypress** %6, align 8
  %12 = load %struct.cypress*, %struct.cypress** %6, align 8
  %13 = icmp eq %struct.cypress* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = call i32 @interface_to_usbdev(%struct.usb_interface* %19)
  %21 = call i32 @usb_get_dev(i32 %20)
  %22 = load %struct.cypress*, %struct.cypress** %6, align 8
  %23 = getelementptr inbounds %struct.cypress, %struct.cypress* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = load %struct.cypress*, %struct.cypress** %6, align 8
  %26 = call i32 @usb_set_intfdata(%struct.usb_interface* %24, %struct.cypress* %25)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 @device_create_file(i32* %28, i32* @dev_attr_port0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %44

33:                                               ; preds = %18
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 0
  %36 = call i32 @device_create_file(i32* %35, i32* @dev_attr_port1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %41, i32 0, i32 0
  %43 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

44:                                               ; preds = %39, %32
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 0
  %47 = call i32 @device_remove_file(i32* %46, i32* @dev_attr_port0)
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 0
  %50 = call i32 @device_remove_file(i32* %49, i32* @dev_attr_port1)
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = call i32 @usb_set_intfdata(%struct.usb_interface* %51, %struct.cypress* null)
  %53 = load %struct.cypress*, %struct.cypress** %6, align 8
  %54 = getelementptr inbounds %struct.cypress, %struct.cypress* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_put_dev(i32 %55)
  %57 = load %struct.cypress*, %struct.cypress** %6, align 8
  %58 = call i32 @kfree(%struct.cypress* %57)
  br label %59

59:                                               ; preds = %44, %14
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.cypress* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.cypress*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.cypress*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
