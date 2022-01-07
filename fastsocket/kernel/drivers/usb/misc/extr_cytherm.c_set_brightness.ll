; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_cytherm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@WRITE_RAM = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@BRIGHTNESS_SEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_brightness(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_cytherm*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = call %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.usb_cytherm* %17, %struct.usb_cytherm** %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 8, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %24 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %90

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @simple_strtoul(i8* %29, i32* null, i32 10)
  %31 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %32 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %34 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %39 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %38, i32 0, i32 0
  store i32 255, i32* %39, align 8
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %42 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %47 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %51 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* @WRITE_RAM, align 4
  %54 = load i32, i32* @BRIGHTNESS, align 4
  %55 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %56 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @vendor_command(%struct.TYPE_2__* %52, i32 %53, i32 %54, i32 %57, i8* %58, i32 8)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %64 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %49
  %70 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %71 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* @WRITE_RAM, align 4
  %74 = load i32, i32* @BRIGHTNESS_SEM, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @vendor_command(%struct.TYPE_2__* %72, i32 %73, i32 %74, i32 1, i8* %75, i32 8)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %81 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @dev_dbg(i32* %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %69
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %86, %22
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @vendor_command(%struct.TYPE_2__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
