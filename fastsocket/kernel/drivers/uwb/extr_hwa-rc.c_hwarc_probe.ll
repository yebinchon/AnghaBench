; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_hwa-rc.c_hwarc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.uwb_rc = type { i32*, i32*, i32, i32, i32, i32, i32 }
%struct.hwarc = type { i32, %struct.uwb_rc*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to allocate RC instance\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to allocate HWA RC instance\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@hwarc_neep_init = common dso_local global i32 0, align 4
@hwarc_neep_release = common dso_local global i32 0, align 4
@hwarc_cmd = common dso_local global i32 0, align 4
@hwarc_reset = common dso_local global i32 0, align 4
@WUSB_QUIRK_WHCI_CMD_EVT = common dso_local global i32 0, align 4
@hwarc_filter_cmd = common dso_local global i32* null, align 8
@hwarc_filter_event = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot retrieve version of RC \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hwarc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwarc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uwb_rc*, align 8
  %8 = alloca %struct.hwarc*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  %14 = call %struct.uwb_rc* (...) @uwb_rc_alloc()
  store %struct.uwb_rc* %14, %struct.uwb_rc** %7, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %16 = icmp eq %struct.uwb_rc* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %9, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %109

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hwarc* @kzalloc(i32 24, i32 %21)
  store %struct.hwarc* %22, %struct.hwarc** %8, align 8
  %23 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %24 = icmp eq %struct.hwarc* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %106

28:                                               ; preds = %20
  %29 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %30 = call i32 @hwarc_init(%struct.hwarc* %29)
  %31 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %32 = call i32 @interface_to_usbdev(%struct.usb_interface* %31)
  %33 = call i32 @usb_get_dev(i32 %32)
  %34 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %35 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %37 = call i32 @usb_get_intf(%struct.usb_interface* %36)
  %38 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %39 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %41 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %42 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %41, i32 0, i32 1
  store %struct.uwb_rc* %40, %struct.uwb_rc** %42, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %45 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @hwarc_neep_init, align 4
  %47 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %48 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @hwarc_neep_release, align 4
  %50 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %51 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @hwarc_cmd, align 4
  %53 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %54 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @hwarc_reset, align 4
  %56 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %57 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %59 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WUSB_QUIRK_WHCI_CMD_EVT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %28
  %65 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %66 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %68 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %76

69:                                               ; preds = %28
  %70 = load i32*, i32** @hwarc_filter_cmd, align 8
  %71 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %72 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32*, i32** @hwarc_filter_event, align 8
  %74 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %75 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %78 = load %struct.device*, %struct.device** %9, align 8
  %79 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %80 = call i32 @uwb_rc_add(%struct.uwb_rc* %77, %struct.device* %78, %struct.hwarc* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %99

84:                                               ; preds = %76
  %85 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %86 = call i32 @hwarc_get_version(%struct.uwb_rc* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.device*, %struct.device** %9, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %94 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %95 = call i32 @usb_set_intfdata(%struct.usb_interface* %93, %struct.hwarc* %94)
  store i32 0, i32* %3, align 4
  br label %111

96:                                               ; preds = %89
  %97 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %98 = call i32 @uwb_rc_rm(%struct.uwb_rc* %97)
  br label %99

99:                                               ; preds = %96, %83
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = call i32 @usb_put_intf(%struct.usb_interface* %100)
  %102 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %103 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @usb_put_dev(i32 %104)
  br label %106

106:                                              ; preds = %99, %25
  %107 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %108 = call i32 @uwb_rc_put(%struct.uwb_rc* %107)
  br label %109

109:                                              ; preds = %106, %17
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %92
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.uwb_rc* @uwb_rc_alloc(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.hwarc* @kzalloc(i32, i32) #1

declare dso_local i32 @hwarc_init(%struct.hwarc*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @uwb_rc_add(%struct.uwb_rc*, %struct.device*, %struct.hwarc*) #1

declare dso_local i32 @hwarc_get_version(%struct.uwb_rc*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hwarc*) #1

declare dso_local i32 @uwb_rc_rm(%struct.uwb_rc*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @uwb_rc_put(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
