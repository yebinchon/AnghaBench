; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_sensor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_sensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.msm_camera_sensor_info* }
%struct.msm_camera_sensor_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mt9d112_ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"mt9d112_init failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mt9d112_sensor_init failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9d112_sensor_init(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_camera_sensor_info*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %5)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** @mt9d112_ctrl, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9d112_ctrl, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @CDBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %15 = icmp ne %struct.msm_camera_sensor_info* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9d112_ctrl, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.msm_camera_sensor_info* %17, %struct.msm_camera_sensor_info** %19, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = call i32 @msm_camio_clk_rate_set(i32 24000000)
  %22 = call i32 @mdelay(i32 5)
  %23 = call i32 (...) @msm_camio_camif_pad_reg_reset()
  %24 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %25 = call i32 @mt9d112_sensor_init_probe(%struct.msm_camera_sensor_info* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @CDBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %33

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9d112_ctrl, align 8
  %35 = call i32 @kfree(%struct.TYPE_4__* %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @CDBG(i8*) #1

declare dso_local i32 @msm_camio_clk_rate_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msm_camio_camif_pad_reg_reset(...) #1

declare dso_local i32 @mt9d112_sensor_init_probe(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
