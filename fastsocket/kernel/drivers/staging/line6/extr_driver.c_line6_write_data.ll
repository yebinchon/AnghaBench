; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"write request failed (error %d)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"receiving status failed (error %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"write failed (error %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_write_data(%struct.usb_line6* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_line6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.usb_line6* %0, %struct.usb_line6** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %14 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %13, i32 0, i32 1
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %18 = call i32 @usb_sndctrlpipe(%struct.usb_device* %17, i32 0)
  %19 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %20 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @LINE6_TIMEOUT, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @usb_control_msg(%struct.usb_device* %16, i32 %18, i32 103, i32 %23, i32 34, i32 %24, i8* %25, i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %36 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %82

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %44 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %45 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %44, i32 0)
  %46 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %47 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @USB_DIR_IN, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @LINE6_TIMEOUT, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32 @usb_control_msg(%struct.usb_device* %43, i32 %45, i32 103, i32 %50, i32 18, i32 0, i8* %12, i32 1, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %59 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %82

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %42, label %69

69:                                               ; preds = %65
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %75 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %82

81:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %73, %57, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
