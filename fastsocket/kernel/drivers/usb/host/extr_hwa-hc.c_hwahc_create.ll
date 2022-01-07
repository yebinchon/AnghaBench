; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_hwa-hc.c_hwahc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwahc = type { %struct.wusbhc, %struct.wahc }
%struct.wusbhc = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.wahc = type { %struct.wusbhc*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_interface = type { %struct.device }
%struct.usb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot get associated UWB Host Controller\0A\00", align 1
@USB_MAXCHILDREN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"FIXME: USB_MAXCHILDREN too low for WUSB adapter (%u ports)\0A\00", align 1
@__hwahc_op_wusbhc_start = common dso_local global i32 0, align 4
@__hwahc_op_wusbhc_stop = common dso_local global i32 0, align 4
@__hwahc_op_mmcie_add = common dso_local global i32 0, align 4
@__hwahc_op_mmcie_rm = common dso_local global i32 0, align 4
@__hwahc_op_dev_info_set = common dso_local global i32 0, align 4
@__hwahc_op_bwa_set = common dso_local global i32 0, align 4
@__hwahc_op_set_num_dnts = common dso_local global i32 0, align 4
@__hwahc_op_set_ptk = common dso_local global i32 0, align 4
@__hwahc_op_set_gtk = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't initialize security: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't create WUSB HC structures: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwahc*, %struct.usb_interface*)* @hwahc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwahc_create(%struct.hwahc* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwahc*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.wusbhc*, align 8
  %9 = alloca %struct.wahc*, align 8
  %10 = alloca %struct.usb_device*, align 8
  store %struct.hwahc* %0, %struct.hwahc** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %14 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %13, i32 0, i32 0
  store %struct.wusbhc* %14, %struct.wusbhc** %8, align 8
  %15 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %16 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %15, i32 0, i32 1
  store %struct.wahc* %16, %struct.wahc** %9, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %10, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %20 = call i32 @usb_get_dev(%struct.usb_device* %19)
  %21 = load %struct.wahc*, %struct.wahc** %9, align 8
  %22 = getelementptr inbounds %struct.wahc, %struct.wahc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %24 = call i32 @usb_get_intf(%struct.usb_interface* %23)
  %25 = load %struct.wahc*, %struct.wahc** %9, align 8
  %26 = getelementptr inbounds %struct.wahc, %struct.wahc* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %29 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %28, i32 0, i32 12
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @uwb_rc_get_by_grandpa(i32 %33)
  %35 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %36 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %38 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %157

46:                                               ; preds = %2
  %47 = load %struct.wahc*, %struct.wahc** %9, align 8
  %48 = call i32 @wa_fill_descr(%struct.wahc* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %152

52:                                               ; preds = %46
  %53 = load %struct.wahc*, %struct.wahc** %9, align 8
  %54 = getelementptr inbounds %struct.wahc, %struct.wahc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @USB_MAXCHILDREN, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.wahc*, %struct.wahc** %9, align 8
  %63 = getelementptr inbounds %struct.wahc, %struct.wahc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load i64, i64* @USB_MAXCHILDREN, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %71 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %81

72:                                               ; preds = %52
  %73 = load %struct.wahc*, %struct.wahc** %9, align 8
  %74 = getelementptr inbounds %struct.wahc, %struct.wahc* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %80 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %72, %60
  %82 = load %struct.wahc*, %struct.wahc** %9, align 8
  %83 = getelementptr inbounds %struct.wahc, %struct.wahc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %88 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @__hwahc_op_wusbhc_start, align 4
  %90 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %91 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @__hwahc_op_wusbhc_stop, align 4
  %93 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %94 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @__hwahc_op_mmcie_add, align 4
  %96 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %97 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @__hwahc_op_mmcie_rm, align 4
  %99 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %100 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @__hwahc_op_dev_info_set, align 4
  %102 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %103 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @__hwahc_op_bwa_set, align 4
  %105 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %106 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @__hwahc_op_set_num_dnts, align 4
  %108 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %109 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @__hwahc_op_set_ptk, align 4
  %111 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %112 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @__hwahc_op_set_gtk, align 4
  %114 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %115 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %117 = call i32 @hwahc_security_create(%struct.hwahc* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %81
  %121 = load %struct.device*, %struct.device** %7, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %151

124:                                              ; preds = %81
  %125 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %126 = load %struct.wahc*, %struct.wahc** %9, align 8
  %127 = getelementptr inbounds %struct.wahc, %struct.wahc* %126, i32 0, i32 0
  store %struct.wusbhc* %125, %struct.wusbhc** %127, align 8
  %128 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %129 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %128, i32 0, i32 0
  %130 = call i32 @wusbhc_create(%struct.wusbhc* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load %struct.device*, %struct.device** %7, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %150

137:                                              ; preds = %124
  %138 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %139 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %138, i32 0, i32 1
  %140 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %141 = call i32 @wa_create(%struct.wahc* %139, %struct.usb_interface* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %146

145:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %163

146:                                              ; preds = %144
  %147 = load %struct.hwahc*, %struct.hwahc** %4, align 8
  %148 = getelementptr inbounds %struct.hwahc, %struct.hwahc* %147, i32 0, i32 0
  %149 = call i32 @wusbhc_destroy(%struct.wusbhc* %148)
  br label %150

150:                                              ; preds = %146, %133
  br label %151

151:                                              ; preds = %150, %120
  br label %152

152:                                              ; preds = %151, %51
  %153 = load %struct.wusbhc*, %struct.wusbhc** %8, align 8
  %154 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @uwb_rc_put(i32* %155)
  br label %157

157:                                              ; preds = %152, %41
  %158 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %159 = call i32 @usb_put_intf(%struct.usb_interface* %158)
  %160 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %161 = call i32 @usb_put_dev(%struct.usb_device* %160)
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %157, %145
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32* @uwb_rc_get_by_grandpa(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wa_fill_descr(%struct.wahc*) #1

declare dso_local i32 @hwahc_security_create(%struct.hwahc*) #1

declare dso_local i32 @wusbhc_create(%struct.wusbhc*) #1

declare dso_local i32 @wa_create(%struct.wahc*, %struct.usb_interface*) #1

declare dso_local i32 @wusbhc_destroy(%struct.wusbhc*) #1

declare dso_local i32 @uwb_rc_put(i32*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
