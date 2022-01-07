; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_ck_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_dev-sysfs.c_wusb_ck_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }
%struct.wusbhc = type { i32 }
%struct.wusb_ckhdid = type { i32* }

@.str = private unnamed_addr constant [113 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wusb_ck_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_ck_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.wusbhc*, align 8
  %13 = alloca %struct.wusb_ckhdid, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  %33 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 7
  %39 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  %45 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  %48 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 11
  %51 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 13
  %57 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 14
  %60 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 15
  %63 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %20, i32* %23, i32* %26, i32* %29, i32* %32, i32* %35, i32* %38, i32* %41, i32* %44, i32* %47, i32* %50, i32* %53, i32* %56, i32* %59, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 16
  br i1 %65, label %66, label %69

66:                                               ; preds = %4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %98

69:                                               ; preds = %4
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call %struct.usb_device* @to_usb_device(%struct.device* %70)
  store %struct.usb_device* %71, %struct.usb_device** %11, align 8
  %72 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %73 = call %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device* %72)
  store %struct.wusbhc* %73, %struct.wusbhc** %12, align 8
  %74 = load %struct.wusbhc*, %struct.wusbhc** %12, align 8
  %75 = icmp eq %struct.wusbhc* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %98

79:                                               ; preds = %69
  %80 = load %struct.wusbhc*, %struct.wusbhc** %12, align 8
  %81 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wusb_dev_4way_handshake(%struct.wusbhc* %80, i32 %83, %struct.wusb_ckhdid* %13)
  store i32 %84, i32* %10, align 4
  %85 = call i32 @memset(%struct.wusb_ckhdid* %13, i32 0, i32 8)
  %86 = load %struct.wusbhc*, %struct.wusbhc** %12, align 8
  %87 = call i32 @wusbhc_put(%struct.wusbhc* %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  br label %95

93:                                               ; preds = %79
  %94 = load i64, i64* %9, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i64 [ %92, %90 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %76, %66
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device*) #1

declare dso_local i32 @wusb_dev_4way_handshake(%struct.wusbhc*, i32, %struct.wusb_ckhdid*) #1

declare dso_local i32 @memset(%struct.wusb_ckhdid*, i32, i32) #1

declare dso_local i32 @wusbhc_put(%struct.wusbhc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
