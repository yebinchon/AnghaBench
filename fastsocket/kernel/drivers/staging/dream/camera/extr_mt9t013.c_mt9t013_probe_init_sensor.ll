; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_probe_init_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_probe_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.msm_camera_sensor_info = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mt9t013\00", align 1
@mt9t013_client = common dso_local global %struct.TYPE_2__* null, align 8
@MT9T013_REG_RESET_REGISTER = common dso_local global i32 0, align 4
@MT9T013_REG_MODEL_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"mt9t013 model_id = 0x%x\0A\00", align 1
@MT9T013_MODEL_ID = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@MT9T013_RESET_DELAY_MSECS = common dso_local global i32 0, align 4
@MT9T013_RESET_REGISTER_PWON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*)* @mt9t013_probe_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t013_probe_init_sensor(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca %struct.msm_camera_sensor_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %2, align 8
  %5 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %6 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpio_request(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
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
  br label %65

17:                                               ; preds = %11
  %18 = call i32 @mdelay(i32 20)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MT9T013_REG_RESET_REGISTER, align 4
  %23 = call i32 @mt9t013_i2c_write_w(i32 %21, i32 %22, i32 4105)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MT9T013_REG_MODEL_ID, align 4
  %32 = call i32 @mt9t013_i2c_read_w(i32 %30, i32 %31, i64* %4)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %56

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @CDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @MT9T013_MODEL_ID, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mt9t013_i2c_write_w(i32 %48, i32 12388, i32 2053)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @MT9T013_RESET_DELAY_MSECS, align 4
  %55 = call i32 @mdelay(i32 %54)
  br label %65

56:                                               ; preds = %52, %42, %35, %26
  %57 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %58 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gpio_direction_output(i32 %59, i32 0)
  %61 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %62 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @gpio_free(i32 %63)
  br label %65

65:                                               ; preds = %56, %53, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt9t013_i2c_write_w(i32, i32, i32) #1

declare dso_local i32 @mt9t013_i2c_read_w(i32, i32, i64*) #1

declare dso_local i32 @CDBG(i8*, i64) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
