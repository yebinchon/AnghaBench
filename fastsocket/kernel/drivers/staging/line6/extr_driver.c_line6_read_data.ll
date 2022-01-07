; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_driver.c_line6_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@LINE6_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"read request failed (error %d)\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"receive length failed (error %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"length mismatch (expected %d, got %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"read failed (error %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line6_read_data(%struct.usb_line6* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  %24 = load i64, i64* %9, align 8
  %25 = shl i64 %24, 8
  %26 = or i64 %25, 33
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LINE6_TIMEOUT, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @usb_control_msg(%struct.usb_device* %16, i32 %18, i32 103, i32 %23, i32 %27, i32 %28, i8* null, i64 0, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %37 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %111

42:                                               ; preds = %4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %45 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %46 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %45, i32 0)
  %47 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %48 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @USB_DIR_IN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LINE6_TIMEOUT, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @usb_control_msg(%struct.usb_device* %44, i32 %46, i32 103, i32 %51, i32 18, i32 0, i8* %12, i64 1, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %60 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %111

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %43, label %70

70:                                               ; preds = %66
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i64
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %77 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %111

86:                                               ; preds = %70
  %87 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %88 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %89 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %88, i32 0)
  %90 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %91 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @USB_DIR_IN, align 4
  %94 = or i32 %92, %93
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* @LINE6_TIMEOUT, align 4
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 @usb_control_msg(%struct.usb_device* %87, i32 %89, i32 103, i32 %94, i32 19, i32 0, i8* %95, i64 %96, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %86
  %104 = load %struct.usb_line6*, %struct.usb_line6** %6, align 8
  %105 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %111

110:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %103, %75, %58, %35
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
