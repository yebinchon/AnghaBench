; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe7x.c_vfe_7x_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_enable_cmd = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"QCAMTASK\00", align 1
@qcam_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"VFETASK\00", align 1
@vfe_mod = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_enable_cmd*)* @vfe_7x_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfe_7x_enable(%struct.camera_enable_cmd* %0) #0 {
  %2 = alloca %struct.camera_enable_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.camera_enable_cmd* %0, %struct.camera_enable_cmd** %2, align 8
  %4 = load i32, i32* @EFAULT, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.camera_enable_cmd*, %struct.camera_enable_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.camera_enable_cmd, %struct.camera_enable_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strcmp(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @qcam_mod, align 4
  %13 = call i32 @msm_adsp_enable(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.camera_enable_cmd*, %struct.camera_enable_cmd** %2, align 8
  %16 = getelementptr inbounds %struct.camera_enable_cmd, %struct.camera_enable_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcmp(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @vfe_mod, align 4
  %22 = call i32 @msm_adsp_enable(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %14
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @msm_adsp_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
