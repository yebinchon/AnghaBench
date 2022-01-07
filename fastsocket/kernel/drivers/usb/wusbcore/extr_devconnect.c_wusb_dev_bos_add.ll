; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_bos_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_dev_bos_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32*, %struct.usb_bos_descriptor* }
%struct.usb_bos_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DT_BOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Can't get BOS descriptor or too short: %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Can't get  BOS descriptor or too short (need %zu bytes): %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.wusb_dev*)* @wusb_dev_bos_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusb_dev_bos_add(%struct.usb_device* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.wusb_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_bos_descriptor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %5, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  store i64 32, i64* %9, align 8
  store i64 4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.usb_bos_descriptor* @kmalloc(i64 %13, i32 %14)
  store %struct.usb_bos_descriptor* %15, %struct.usb_bos_descriptor** %8, align 8
  %16 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %17 = icmp eq %struct.usb_bos_descriptor* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = load i32, i32* @USB_DT_BOS, align 4
  %24 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @usb_get_descriptor(%struct.usb_device* %22, i32 %23, i32 0, %struct.usb_bos_descriptor* %24, i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %103

34:                                               ; preds = %21
  %35 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %44 = call i32 @kfree(%struct.usb_bos_descriptor* %43)
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.usb_bos_descriptor* @kmalloc(i64 %46, i32 %47)
  store %struct.usb_bos_descriptor* %48, %struct.usb_bos_descriptor** %8, align 8
  %49 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %50 = icmp eq %struct.usb_bos_descriptor* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %109

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %34
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = load i32, i32* @USB_DT_BOS, align 4
  %58 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @usb_get_descriptor(%struct.usb_device* %56, i32 %57, i32 0, %struct.usb_bos_descriptor* %58, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63, %55
  %69 = load %struct.device*, %struct.device** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %71)
  br label %103

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 4
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %79 = getelementptr inbounds %struct.usb_bos_descriptor, %struct.usb_bos_descriptor* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le16_to_cpu(i32 %80)
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77, %73
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = load i64, i64* %10, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %87)
  br label %103

89:                                               ; preds = %77
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %92 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @wusb_dev_bos_grok(%struct.usb_device* %90, %struct.wusb_dev* %91, %struct.usb_bos_descriptor* %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %102

98:                                               ; preds = %89
  %99 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %100 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %101 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %100, i32 0, i32 1
  store %struct.usb_bos_descriptor* %99, %struct.usb_bos_descriptor** %101, align 8
  store i32 0, i32* %3, align 4
  br label %109

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %84, %68, %29
  %104 = load %struct.usb_bos_descriptor*, %struct.usb_bos_descriptor** %8, align 8
  %105 = call i32 @kfree(%struct.usb_bos_descriptor* %104)
  %106 = load %struct.wusb_dev*, %struct.wusb_dev** %5, align 8
  %107 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %98, %51, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.usb_bos_descriptor* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_get_descriptor(%struct.usb_device*, i32, i32, %struct.usb_bos_descriptor*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.usb_bos_descriptor*) #1

declare dso_local i32 @wusb_dev_bos_grok(%struct.usb_device*, %struct.wusb_dev*, %struct.usb_bos_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
