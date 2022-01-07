; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_sensor_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_sensor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_camera_sensor_info = type { i32 }
%struct.msm_sensor_ctrl = type { i32, i32, i32 }

@s5k3e2fx_i2c_driver = common dso_local global i32 0, align 4
@s5k3e2fx_client = common dso_local global i32* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@s5k3e2fx_sensor_open_init = common dso_local global i32 0, align 4
@s5k3e2fx_sensor_release = common dso_local global i32 0, align 4
@s5k3e2fx_sensor_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SENSOR PROBE FAILS!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)* @s5k3e2fx_sensor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k3e2fx_sensor_probe(%struct.msm_camera_sensor_info* %0, %struct.msm_sensor_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_camera_sensor_info*, align 8
  %5 = alloca %struct.msm_sensor_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %4, align 8
  store %struct.msm_sensor_ctrl* %1, %struct.msm_sensor_ctrl** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @i2c_add_driver(i32* @s5k3e2fx_i2c_driver)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** @s5k3e2fx_client, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %37

16:                                               ; preds = %10
  %17 = call i32 @msm_camio_clk_rate_set(i32 24000000)
  %18 = call i32 @mdelay(i32 20)
  %19 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %4, align 8
  %20 = call i32 @s5k3e2fx_probe_init_sensor(%struct.msm_camera_sensor_info* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %37

24:                                               ; preds = %16
  %25 = load i32, i32* @s5k3e2fx_sensor_open_init, align 4
  %26 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @s5k3e2fx_sensor_release, align 4
  %29 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @s5k3e2fx_sensor_config, align 4
  %32 = load %struct.msm_sensor_ctrl*, %struct.msm_sensor_ctrl** %5, align 8
  %33 = getelementptr inbounds %struct.msm_sensor_ctrl, %struct.msm_sensor_ctrl* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %4, align 8
  %35 = call i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %23, %13
  %38 = call i32 @CDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_add_driver(i32*) #1

declare dso_local i32 @msm_camio_clk_rate_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @s5k3e2fx_probe_init_sensor(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @CDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
