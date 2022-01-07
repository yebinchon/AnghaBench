; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_chid_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wusbhc.c_wusb_chid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wusbhc = type { i32 }
%struct.wusb_ckhdid = type { i32* }

@.str = private unnamed_addr constant [113 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unrecognized CHID (need 16 8-bit hex digits): %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wusb_chid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_chid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wusbhc*, align 8
  %11 = alloca %struct.wusb_ckhdid, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.wusbhc* @usbhc_dev_to_wusbhc(%struct.device* %13)
  store %struct.wusbhc* %14, %struct.wusbhc** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  %37 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 9
  %46 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 10
  %49 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 11
  %52 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 13
  %58 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 14
  %61 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %11, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 15
  %64 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32* %18, i32* %21, i32* %24, i32* %27, i32* %30, i32* %33, i32* %36, i32* %39, i32* %42, i32* %45, i32* %48, i32* %51, i32* %54, i32* %57, i32* %60, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 16
  br i1 %66, label %67, label %73

67:                                               ; preds = %4
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %86

73:                                               ; preds = %4
  %74 = load %struct.wusbhc*, %struct.wusbhc** %10, align 8
  %75 = call i32 @wusbhc_chid_set(%struct.wusbhc* %74, %struct.wusb_ckhdid* %11)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  br label %83

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i64 [ %80, %78 ], [ %82, %81 ]
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %67
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.wusbhc* @usbhc_dev_to_wusbhc(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wusbhc_chid_set(%struct.wusbhc*, %struct.wusb_ckhdid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
