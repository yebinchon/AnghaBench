; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_camera_sensor_info = type { i32 }
%struct.msm_sensor_ctrl = type { i32, i32, i32 }

@mt9t013_i2c_driver = common dso_local global i32 0, align 4
@mt9t013_client = common dso_local global i32* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@MT9T013_DEFAULT_CLOCK_RATE = common dso_local global i32 0, align 4
@mt9t013_sensor_open_init = common dso_local global i32 0, align 4
@mt9t013_sensor_release = common dso_local global i32 0, align 4
@mt9t013_sensor_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)* @mt9t013_sensor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t013_sensor_probe(%struct.msm_camera_sensor_info* %0, %struct.msm_sensor_ctrl* %1) #0 {
  %3 = alloca %struct.msm_camera_sensor_info*, align 8
  %4 = alloca %struct.msm_sensor_ctrl*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %3, align 8
  store %struct.msm_sensor_ctrl* %1, %struct.msm_sensor_ctrl** %4, align 8
  %6 = call i32 @i2c_add_driver(i32* @mt9t013_i2c_driver)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** @mt9t013_client, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @ENOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %37

15:                                               ; preds = %9
  %16 = load i32, i32* @MT9T013_DEFAULT_CLOCK_RATE, align 4
  %17 = call i32 @msm_camio_clk_rate_set(i32 %16)
  %18 = call i32 @mdelay(i32 20)
  %19 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %20 = call i32 @mt9t013_probe_init_sensor(%struct.msm_camera_sensor_info* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @i2c_del_driver(i32* @mt9t013_i2c_driver)
  br label %37

25:                                               ; preds = %15
  %26 = load i32, i32* @mt9t013_sensor_open_init, align 4
  %27 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @mt9t013_sensor_release, align 4
  %30 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @mt9t013_sensor_config, align 4
  %33 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %4, align 8
  %34 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %36 = call i32 @mt9t013_sensor_init_done(%struct.msm_camera_sensor_info* %35)
  br label %37

37:                                               ; preds = %25, %23, %12
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @i2c_add_driver(i32*) #1

declare dso_local i32 @msm_camio_clk_rate_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt9t013_probe_init_sensor(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @i2c_del_driver(i32*) #1

declare dso_local i32 @mt9t013_sensor_init_done(%struct.msm_camera_sensor_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
