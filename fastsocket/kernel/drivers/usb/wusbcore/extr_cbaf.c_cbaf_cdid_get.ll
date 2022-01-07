; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_cdid_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_cdid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbaf = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.wusb_cbaf_device_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_cbaf_device_info = type { i32, i32, i32, i32 }

@CBAF_REQ_GET_ASSOCIATION_REQUEST = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot request device information: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Not enough data in DEVICE_INFO reply (%zu vs %zu bytes needed)\0A\00", align 1
@CBA_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_cdid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_cdid_get(%struct.cbaf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbaf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wusb_cbaf_device_info*, align 8
  %7 = alloca i64, align 8
  store %struct.cbaf* %0, %struct.cbaf** %3, align 8
  %8 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %9 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %13 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %12, i32 0, i32 6
  %14 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %13, align 8
  store %struct.wusb_cbaf_device_info* %14, %struct.wusb_cbaf_device_info** %6, align 8
  %15 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %16 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %19 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_rcvctrlpipe(i32 %20, i32 0)
  %22 = load i32, i32* @CBAF_REQ_GET_ASSOCIATION_REQUEST, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = load i32, i32* @USB_TYPE_CLASS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %29 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %37 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %38 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_control_msg(i32 %17, i32 %21, i32 %22, i32 %27, i32 512, i32 %35, %struct.wusb_cbaf_device_info* %36, i32 %39, i32 1000)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %93

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %51, 16
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %60

54:                                               ; preds = %49
  %55 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %56 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = sext i32 %58 to i64
  br label %60

60:                                               ; preds = %54, %53
  %61 = phi i64 [ 16, %53 ], [ %59, %54 ]
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %7, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %93

73:                                               ; preds = %60
  %74 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %75 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %78 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CBA_NAME_LEN, align 4
  %81 = call i32 @strlcpy(i32 %76, i32 %79, i32 %80)
  %82 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %83 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %86 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %88 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %92 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %73, %66, %43
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_device_info*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
