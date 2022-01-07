; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c___msm_v4l2_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c___msm_v4l2_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_sync = type { i32 }
%struct.msm_ctrl_cmd = type { i64, i32, i32 }
%struct.msm_queue_cmd = type { %struct.msm_ctrl_cmd*, i32 }
%struct.msm_control_device_queue = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"msm_control: cannot allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MSM_CAM_Q_V4L2_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"__msm_v4l2_control: end rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_sync*, %struct.msm_ctrl_cmd*)* @__msm_v4l2_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__msm_v4l2_control(%struct.msm_sync* %0, %struct.msm_ctrl_cmd* %1) #0 {
  %3 = alloca %struct.msm_sync*, align 8
  %4 = alloca %struct.msm_ctrl_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msm_queue_cmd*, align 8
  %7 = alloca %struct.msm_queue_cmd*, align 8
  %8 = alloca %struct.msm_ctrl_cmd*, align 8
  %9 = alloca %struct.msm_control_device_queue, align 4
  store %struct.msm_sync* %0, %struct.msm_sync** %3, align 8
  store %struct.msm_ctrl_cmd* %1, %struct.msm_ctrl_cmd** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.msm_queue_cmd* null, %struct.msm_queue_cmd** %6, align 8
  store %struct.msm_queue_cmd* null, %struct.msm_queue_cmd** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.msm_queue_cmd* @kmalloc(i32 16, i32 %10)
  store %struct.msm_queue_cmd* %11, %struct.msm_queue_cmd** %6, align 8
  %12 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %6, align 8
  %13 = icmp ne %struct.msm_queue_cmd* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* @MSM_CAM_Q_V4L2_REQ, align 4
  %20 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.msm_queue_cmd, %struct.msm_queue_cmd* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %4, align 8
  %23 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.msm_queue_cmd, %struct.msm_queue_cmd* %23, i32 0, i32 0
  store %struct.msm_ctrl_cmd* %22, %struct.msm_ctrl_cmd** %24, align 8
  %25 = load %struct.msm_sync*, %struct.msm_sync** %3, align 8
  %26 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %6, align 8
  %27 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.msm_queue_cmd* @__msm_control(%struct.msm_sync* %25, %struct.msm_control_device_queue* %9, %struct.msm_queue_cmd* %26, i32 %29)
  store %struct.msm_queue_cmd* %30, %struct.msm_queue_cmd** %7, align 8
  %31 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %7, align 8
  %32 = call i64 @IS_ERR(%struct.msm_queue_cmd* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.msm_queue_cmd* %35)
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %18
  %38 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.msm_queue_cmd, %struct.msm_queue_cmd* %38, i32 0, i32 0
  %40 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %39, align 8
  store %struct.msm_ctrl_cmd* %40, %struct.msm_ctrl_cmd** %8, align 8
  %41 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %8, align 8
  %54 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.msm_ctrl_cmd*, %struct.msm_ctrl_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.msm_ctrl_cmd, %struct.msm_ctrl_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @memcpy(i32 %52, i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %37, %34, %14
  %61 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %7, align 8
  %62 = icmp ne %struct.msm_queue_cmd* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.msm_queue_cmd*, %struct.msm_queue_cmd** %7, align 8
  %65 = call i32 @kfree(%struct.msm_queue_cmd* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @CDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.msm_queue_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.msm_queue_cmd* @__msm_control(%struct.msm_sync*, %struct.msm_control_device_queue*, %struct.msm_queue_cmd*, i32) #1

declare dso_local i64 @IS_ERR(%struct.msm_queue_cmd*) #1

declare dso_local i32 @PTR_ERR(%struct.msm_queue_cmd*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @kfree(%struct.msm_queue_cmd*) #1

declare dso_local i32 @CDBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
