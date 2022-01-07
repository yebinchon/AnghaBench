; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_probe_init_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_probe_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.msm_camera_sensor_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"s5k3e2fx\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"s5k3e2fx_sensor_init(): reseting sensor.\0A\00", align 1
@s5k3e2fx_client = common dso_local global %struct.TYPE_2__* null, align 8
@S5K3E2FX_REG_MODEL_ID = common dso_local global i32 0, align 4
@S5K3E2FX_MODEL_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"S5K3E2FX wrong model_id = 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*)* @s5k3e2fx_probe_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k3e2fx_probe_init_sensor(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca %struct.msm_camera_sensor_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %6 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpio_request(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %13 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpio_direction_output(i32 %14, i32 1)
  br label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %11
  %18 = call i32 @mdelay(i32 20)
  %19 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5k3e2fx_client, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S5K3E2FX_REG_MODEL_ID, align 4
  %24 = call i32 @s5k3e2fx_i2c_read_w(i32 %22, i32 %23, i64* %4)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %38

28:                                               ; preds = %17
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @S5K3E2FX_MODEL_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %28
  br label %41

38:                                               ; preds = %32, %27
  %39 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %40 = call i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info* %39)
  br label %41

41:                                               ; preds = %38, %37, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @CDBG(i8*, ...) #1

declare dso_local i32 @s5k3e2fx_i2c_read_w(i32, i32, i64*) #1

declare dso_local i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
