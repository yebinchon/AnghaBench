; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_upload_pre_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_uea_upload_pre_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32*, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"firmware is not available\0A\00", align 1
@F8051_USBCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"modem reset failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"uploading firmware data failed with error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"modem de-assert failed with error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"firmware uploaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"firmware is corrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @uea_upload_pre_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uea_upload_pre_firmware(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.usb_device*
  store %struct.usb_device* %14, %struct.usb_device** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = call i32 @uea_enters(%struct.usb_device* %15)
  %17 = load %struct.firmware*, %struct.firmware** %3, align 8
  %18 = icmp ne %struct.firmware* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %21 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %112

22:                                               ; preds = %2
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.firmware*, %struct.firmware** %3, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %109

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @get_unaligned_le32(i32* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 4
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @crc32_be(i32 0, i32* %39, i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %109

45:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  %46 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %47 = load i32, i32* @F8051_USBCS, align 4
  %48 = call i32 @uea_send_modem_cmd(%struct.usb_device* %46, i32 %47, i32 4, i32* %7)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %112

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @FW_GET_BYTE(i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @get_unaligned_le16(i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 3
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %109

72:                                               ; preds = %59
  %73 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = call i32 @uea_send_modem_cmd(%struct.usb_device* %73, i32 %74, i32 %75, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %112

85:                                               ; preds = %72
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 3
  %88 = load i32*, i32** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %6, align 8
  br label %56

91:                                               ; preds = %56
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %109

95:                                               ; preds = %91
  store i32 0, i32* %7, align 4
  %96 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %97 = load i32, i32* @F8051_USBCS, align 4
  %98 = call i32 @uea_send_modem_cmd(%struct.usb_device* %96, i32 %97, i32 1, i32* %7)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %108

105:                                              ; preds = %95
  %106 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %107 = call i32 @uea_info(%struct.usb_device* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %101
  br label %112

109:                                              ; preds = %94, %71, %44, %31
  %110 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %111 = call i32 (%struct.usb_device*, i8*, ...) @uea_err(%struct.usb_device* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %108, %81, %51, %19
  %113 = load %struct.firmware*, %struct.firmware** %3, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  %115 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %116 = call i32 @uea_leaves(%struct.usb_device* %115)
  ret void
}

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @uea_err(%struct.usb_device*, i8*, ...) #1

declare dso_local i64 @get_unaligned_le32(i32*) #1

declare dso_local i64 @crc32_be(i32, i32*, i32) #1

declare dso_local i32 @uea_send_modem_cmd(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @FW_GET_BYTE(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @uea_leaves(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
