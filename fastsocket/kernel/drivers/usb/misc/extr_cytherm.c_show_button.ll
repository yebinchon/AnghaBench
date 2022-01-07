; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_show_button.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_cytherm.c_show_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_cytherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@READ_RAM = common dso_local global i32 0, align 4
@BUTTON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_button(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_cytherm*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.usb_interface* @to_usb_interface(%struct.device* %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %15 = call %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface* %14)
  store %struct.usb_cytherm* %15, %struct.usb_cytherm** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i32 8, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %22 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %58

26:                                               ; preds = %3
  %27 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %28 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* @READ_RAM, align 4
  %31 = load i32, i32* @BUTTON, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @vendor_command(%struct.TYPE_2__* %29, i32 %30, i32 %31, i32 0, i8* %32, i32 8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.usb_cytherm*, %struct.usb_cytherm** %9, align 8
  %38 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %26
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @kfree(i8* %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %43
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %52, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @vendor_command(%struct.TYPE_2__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
