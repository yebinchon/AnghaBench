; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_get_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, %struct.TYPE_4__, %struct.hwarc* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hwarc = type { %struct.usb_device* }
%struct.usb_device = type { i8**, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.uwb_rc_control_intf_class_desc = type { i32 }
%struct.usb_descriptor_header = type { i64, i64 }

@.str = private unnamed_addr constant [62 x i8] c"Extra device descriptor: type %02x/%u bytes @ %zu (%zu left)\0A\00", align 1
@USB_DT_CS_RADIO_CONTROL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"cannot find Radio Control Interface Class descriptor\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"incomplete Radio Control Interface Class descriptor (%zu bytes left, %u needed)\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"short Radio Control Interface Class descriptor\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Device reports protocol version 0x%04x. We do not support that. \0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Device supports WUSB protocol version 0x%04x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*)* @hwarc_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwarc_get_version(%struct.uwb_rc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwarc*, align 8
  %6 = alloca %struct.uwb_rc_control_intf_class_desc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.usb_descriptor_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %15 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %14, i32 0, i32 2
  %16 = load %struct.hwarc*, %struct.hwarc** %15, align 8
  store %struct.hwarc* %16, %struct.hwarc** %5, align 8
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %18 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load %struct.hwarc*, %struct.hwarc** %5, align 8
  %21 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %20, i32 0, i32 0
  %22 = load %struct.usb_device*, %struct.usb_device** %21, align 8
  store %struct.usb_device* %22, %struct.usb_device** %8, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = ptrtoint %struct.TYPE_6__* %25 to i64
  %30 = ptrtoint %struct.TYPE_6__* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = udiv i64 %32, 4
  store i64 %33, i64* %12, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  %40 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le16_to_cpu(i32 %45)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %79, %1
  %48 = load i64, i64* %11, align 8
  %49 = icmp uge i64 %48, 16
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %52, %struct.usb_descriptor_header** %10, align 8
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %55 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %59 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %61 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load i64, i64* %11, align 8
  %72 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %60, i64 %70, i64 %71)
  %73 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %74 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @USB_DT_CS_RADIO_CONTROL, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %50
  br label %95

79:                                               ; preds = %50
  %80 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %81 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %9, align 8
  %85 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %86 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %11, align 8
  br label %47

90:                                               ; preds = %47
  %91 = load %struct.device*, %struct.device** %7, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %144

95:                                               ; preds = %78
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  %98 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %99 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %107 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i64 %105, i64 %108)
  br label %142

110:                                              ; preds = %95
  %111 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %112 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %142

118:                                              ; preds = %110
  %119 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %10, align 8
  %120 = bitcast %struct.usb_descriptor_header* %119 to %struct.uwb_rc_control_intf_class_desc*
  store %struct.uwb_rc_control_intf_class_desc* %120, %struct.uwb_rc_control_intf_class_desc** %6, align 8
  %121 = load %struct.uwb_rc_control_intf_class_desc*, %struct.uwb_rc_control_intf_class_desc** %6, align 8
  %122 = getelementptr inbounds %struct.uwb_rc_control_intf_class_desc, %struct.uwb_rc_control_intf_class_desc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @__le16_to_cpu(i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 256
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load %struct.device*, %struct.device** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %142

133:                                              ; preds = %118
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %136 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.device*, %struct.device** %7, align 8
  %138 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %139 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %133, %127, %115, %103
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %90
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
