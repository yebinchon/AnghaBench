; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi_client_toshiba.c_mddi_toshiba_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi_client_toshiba.c_mddi_toshiba_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.msm_mddi_client_data* }
%struct.msm_mddi_client_data = type { i32, i32 (%struct.msm_mddi_client_data*, i32, i32)*, %struct.msm_mddi_bridge_platform_data* }
%struct.msm_mddi_bridge_platform_data = type { i32 (%struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_client_data*)*, i32 }
%struct.panel_info = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.msm_mddi_client_data* }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOSEL_VWAKEINT = common dso_local global i32 0, align 4
@GPIOSEL = common dso_local global i32 0, align 4
@INTMASK_VWAKEOUT = common dso_local global i32 0, align 4
@INTMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mddi_bridge_setup_vsync failed\0A\00", align 1
@toshiba_suspend = common dso_local global i32 0, align 4
@toshiba_resume = common dso_local global i32 0, align 4
@toshiba_wait_vsync = common dso_local global i32 0, align 4
@toshiba_request_vsync = common dso_local global i32 0, align 4
@toshiba_clear_vsync = common dso_local global i32 0, align 4
@toshiba_blank = common dso_local global i32 0, align 4
@toshiba_unblank = common dso_local global i32 0, align 4
@MSMFB_CAP_PARTIAL_UPDATES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"msm_panel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mddi_toshiba_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mddi_toshiba_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_mddi_client_data*, align 8
  %6 = alloca %struct.msm_mddi_bridge_platform_data*, align 8
  %7 = alloca %struct.panel_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %10, align 8
  store %struct.msm_mddi_client_data* %11, %struct.msm_mddi_client_data** %5, align 8
  %12 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %13 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %12, i32 0, i32 2
  %14 = load %struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_bridge_platform_data** %13, align 8
  store %struct.msm_mddi_bridge_platform_data* %14, %struct.msm_mddi_bridge_platform_data** %6, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.panel_info* @kzalloc(i32 88, i32 %15)
  store %struct.panel_info* %16, %struct.panel_info** %7, align 8
  %17 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %18 = icmp ne %struct.panel_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %123

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.panel_info* %24)
  %26 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %27 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %26, i32 0, i32 1
  %28 = load i32 (%struct.msm_mddi_client_data*, i32, i32)*, i32 (%struct.msm_mddi_client_data*, i32, i32)** %27, align 8
  %29 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %30 = load i32, i32* @GPIOSEL_VWAKEINT, align 4
  %31 = load i32, i32* @GPIOSEL, align 4
  %32 = call i32 %28(%struct.msm_mddi_client_data* %29, i32 %30, i32 %31)
  %33 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %34 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %33, i32 0, i32 1
  %35 = load i32 (%struct.msm_mddi_client_data*, i32, i32)*, i32 (%struct.msm_mddi_client_data*, i32, i32)** %34, align 8
  %36 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %37 = load i32, i32* @INTMASK_VWAKEOUT, align 4
  %38 = load i32, i32* @INTMASK, align 4
  %39 = call i32 %35(%struct.msm_mddi_client_data* %36, i32 %37, i32 %38)
  %40 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %41 = call i32 @setup_vsync(%struct.panel_info* %40, i32 1)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %22
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = call i32 @dev_err(%struct.TYPE_8__* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %123

49:                                               ; preds = %22
  %50 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %51 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %52 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %51, i32 0, i32 2
  store %struct.msm_mddi_client_data* %50, %struct.msm_mddi_client_data** %52, align 8
  %53 = load i32, i32* @toshiba_suspend, align 4
  %54 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %55 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @toshiba_resume, align 4
  %58 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %59 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @toshiba_wait_vsync, align 4
  %62 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %63 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @toshiba_request_vsync, align 4
  %66 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %67 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @toshiba_clear_vsync, align 4
  %70 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %71 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @toshiba_blank, align 4
  %74 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %75 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @toshiba_unblank, align 4
  %78 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %79 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 8
  %81 = load %struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_bridge_platform_data** %6, align 8
  %82 = getelementptr inbounds %struct.msm_mddi_bridge_platform_data, %struct.msm_mddi_bridge_platform_data* %81, i32 0, i32 1
  %83 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %84 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32* %82, i32** %85, align 8
  %86 = load i32, i32* @MSMFB_CAP_PARTIAL_UPDATES, align 4
  %87 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %88 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %91 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %92, align 8
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %97 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 4
  %99 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %100 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %103 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 8
  %105 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %106 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %109 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %108, i32 0, i32 1
  %110 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %111 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %113, align 8
  %114 = load %struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_bridge_platform_data** %6, align 8
  %115 = getelementptr inbounds %struct.msm_mddi_bridge_platform_data, %struct.msm_mddi_bridge_platform_data* %114, i32 0, i32 0
  %116 = load i32 (%struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_client_data*)*, i32 (%struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_client_data*)** %115, align 8
  %117 = load %struct.msm_mddi_bridge_platform_data*, %struct.msm_mddi_bridge_platform_data** %6, align 8
  %118 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %5, align 8
  %119 = call i32 %116(%struct.msm_mddi_bridge_platform_data* %117, %struct.msm_mddi_client_data* %118)
  %120 = load %struct.panel_info*, %struct.panel_info** %7, align 8
  %121 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %120, i32 0, i32 0
  %122 = call i32 @platform_device_register(%struct.TYPE_7__* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %49, %44, %19
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.panel_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_info*) #1

declare dso_local i32 @setup_vsync(%struct.panel_info*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
