; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_qt_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/serqt_usb2/extr_serqt_usb2.c_qt_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.qt_get_device_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QT_SET_GET_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*, %struct.qt_get_device_data*)* @qt_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt_get_device(%struct.usb_serial* %0, %struct.qt_get_device_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial*, align 8
  %5 = alloca %struct.qt_get_device_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.usb_serial* %0, %struct.usb_serial** %4, align 8
  store %struct.qt_get_device_data* %1, %struct.qt_get_device_data** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 4, i32 %8)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %17 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_serial*, %struct.usb_serial** %4, align 8
  %20 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_rcvctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* @QT_SET_GET_DEVICE, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @usb_control_msg(i32 %18, i32 %22, i32 %23, i32 192, i32 0, i32 0, i8* %24, i32 4, i32 300)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load %struct.qt_get_device_data*, %struct.qt_get_device_data** %5, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @memcpy(%struct.qt_get_device_data* %29, i8* %30, i32 4)
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(%struct.qt_get_device_data*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
