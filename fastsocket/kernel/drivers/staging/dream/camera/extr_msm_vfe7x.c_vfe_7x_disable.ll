; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_enable_cmd = type { i32 }
%struct.platform_device = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"QCAMTASK\00", align 1
@qcam_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"VFETASK\00", align 1
@vfe_mod = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_enable_cmd*, %struct.platform_device*)* @vfe_7x_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_7x_disable(%struct.camera_enable_cmd* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.camera_enable_cmd*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.camera_enable_cmd* %0, %struct.camera_enable_cmd** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load i32, i32* @EFAULT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.camera_enable_cmd*, %struct.camera_enable_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.camera_enable_cmd, %struct.camera_enable_cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strcmp(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @qcam_mod, align 4
  %15 = call i32 @msm_adsp_disable(i32 %14)
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.camera_enable_cmd*, %struct.camera_enable_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.camera_enable_cmd, %struct.camera_enable_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @vfe_mod, align 4
  %24 = call i32 @msm_adsp_disable(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @msm_adsp_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
