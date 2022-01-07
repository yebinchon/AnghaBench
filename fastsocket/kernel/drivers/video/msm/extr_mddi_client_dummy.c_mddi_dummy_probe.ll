; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi_client_dummy.c_mddi_dummy_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mddi_client_dummy.c_mddi_dummy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.msm_mddi_client_data* }
%struct.msm_mddi_client_data = type { i32, i32 }
%struct.panel_info = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mddi_dummy_suspend = common dso_local global i32 0, align 4
@mddi_dummy_resume = common dso_local global i32 0, align 4
@mddi_dummy_blank = common dso_local global i32 0, align 4
@mddi_dummy_unblank = common dso_local global i32 0, align 4
@MSMFB_CAP_PARTIAL_UPDATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"msm_panel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mddi_dummy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mddi_dummy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_mddi_client_data*, align 8
  %5 = alloca %struct.panel_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %9, align 8
  store %struct.msm_mddi_client_data* %10, %struct.msm_mddi_client_data** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.panel_info* @kzalloc(i32 48, i32 %11)
  store %struct.panel_info* %12, %struct.panel_info** %5, align 8
  %13 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %14 = icmp ne %struct.panel_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.panel_info* %20)
  %22 = load i32, i32* @mddi_dummy_suspend, align 4
  %23 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %24 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @mddi_dummy_resume, align 4
  %27 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %28 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @mddi_dummy_blank, align 4
  %31 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %32 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @mddi_dummy_unblank, align 4
  %35 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %36 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @MSMFB_CAP_PARTIAL_UPDATES, align 4
  %39 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %40 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %43 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %49 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %52 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %51, i32 0, i32 0
  %53 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %4, align 8
  %54 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @platform_device_add_resources(%struct.TYPE_9__* %52, i32 %55, i32 1)
  %57 = load %struct.msm_mddi_client_data*, %struct.msm_mddi_client_data** %4, align 8
  %58 = getelementptr inbounds %struct.msm_mddi_client_data, %struct.msm_mddi_client_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %61 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %64 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %63, i32 0, i32 1
  %65 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %66 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %68, align 8
  %69 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %70 = getelementptr inbounds %struct.panel_info, %struct.panel_info* %69, i32 0, i32 0
  %71 = call i32 @platform_device_register(%struct.TYPE_9__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %18
  %75 = load %struct.panel_info*, %struct.panel_info** %5, align 8
  %76 = call i32 @kfree(%struct.panel_info* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %74, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.panel_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_info*) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.panel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
