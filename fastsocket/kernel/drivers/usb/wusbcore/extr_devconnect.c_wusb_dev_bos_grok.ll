; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_bos_grok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_bos_grok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { i8* }
%struct.usb_bos_descriptor = type { i32 }
%struct.usb_dev_cap_header = type { i64, i32 }

@.str = private unnamed_addr constant [83 x i8] c"Device BUG? premature end of BOS header data [offset 0x%02x]: only %zu bytes left\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"Device BUG? premature end of BOS data [offset 0x%02x cap %02x %zu bytes]: only %zu bytes left\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Device BUG? WUSB Capability descriptor is %zu bytes vs %zu needed\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"BUG? Unknown BOS capability 0x%02x (%zu bytes) at offset 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.wusb_dev*, %struct.usb_bos_descriptor*, i64)* @wusb_dev_bos_grok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_dev_bos_grok(%struct.usb_device* %0, %struct.wusb_dev* %1, %struct.usb_bos_descriptor* %2, i64 %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.wusb_dev*, align 8
  %7 = alloca %struct.usb_bos_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.usb_dev_cap_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %6, align 8
  store %struct.usb_bos_descriptor* %2, %struct.usb_bos_descriptor** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %7, align 8
  %19 = bitcast %struct.usb_bos_descriptor* %18 to i8*
  %20 = getelementptr i8, i8* %19, i64 4
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = getelementptr i8, i8* %23, i64 -4
  store i8* %24, i8** %12, align 8
  br label %25

25:                                               ; preds = %120, %4
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %124

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast i8* %30 to %struct.usb_dev_cap_header*
  store %struct.usb_dev_cap_header* %31, %struct.usb_dev_cap_header** %13, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %7, align 8
  %42 = bitcast %struct.usb_bos_descriptor* %41 to i8*
  %43 = ptrtoint i8* %40 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %51)
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %125

55:                                               ; preds = %29
  %56 = load %struct.usb_dev_cap_header*, %struct.usb_dev_cap_header** %13, align 8
  %57 = getelementptr inbounds %struct.usb_dev_cap_header, %struct.usb_dev_cap_header* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load %struct.usb_dev_cap_header*, %struct.usb_dev_cap_header** %13, align 8
  %60 = getelementptr inbounds %struct.usb_dev_cap_header, %struct.usb_dev_cap_header* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %15, align 4
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %124

65:                                               ; preds = %55
  %66 = load i64, i64* %14, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = icmp ugt i64 %66, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %7, align 8
  %77 = bitcast %struct.usb_bos_descriptor* %76 to i8*
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %14, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %83, i64 %84, i64 %89)
  %91 = load i32, i32* @EBADF, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %125

93:                                               ; preds = %65
  %94 = load i32, i32* %15, align 4
  switch i32 %94, label %108 [
    i32 128, label %95
  ]

95:                                               ; preds = %93
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.device*, %struct.device** %10, align 8
  %100 = load i64, i64* %14, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %101, i64 1)
  br label %107

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.wusb_dev*, %struct.wusb_dev** %6, align 8
  %106 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %98
  br label %120

108:                                              ; preds = %93
  %109 = load %struct.device*, %struct.device** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i64, i64* %14, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %7, align 8
  %114 = bitcast %struct.usb_bos_descriptor* %113 to i8*
  %115 = ptrtoint i8* %112 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %110, i64 %111, i32 %118)
  br label %120

120:                                              ; preds = %108, %107
  %121 = load i64, i64* %14, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr i8, i8* %122, i64 %121
  store i8* %123, i8** %11, align 8
  br label %25

124:                                              ; preds = %64, %25
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %124, %73, %38
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
