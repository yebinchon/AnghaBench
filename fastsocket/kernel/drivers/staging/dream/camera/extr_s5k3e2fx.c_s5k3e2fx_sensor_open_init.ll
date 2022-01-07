; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_sensor_open_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_s5k3e2fx.c_s5k3e2fx_sensor_open_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, %struct.msm_camera_sensor_info*, i32, i32 }
%struct.msm_camera_sensor_info = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@s5k3e2fx_ctrl = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"s5k3e2fx_init failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_TEST_OFF = common dso_local global i32 0, align 4
@S_QTR_SIZE = common dso_local global i64 0, align 8
@S_FULL_SIZE = common dso_local global i32 0, align 4
@S_REG_INIT = common dso_local global i32 0, align 4
@S_RES_PREVIEW = common dso_local global i32 0, align 4
@S_RES_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"s5k3e2fx_setting failed. rc = %d\0A\00", align 1
@s5k3e2fx_client = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*)* @s5k3e2fx_sensor_open_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k3e2fx_sensor_open_init(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca %struct.msm_camera_sensor_info*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_5__* @kzalloc(i32 4, i32 %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 1024, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 1024, i32* %16, align 4
  %17 = load i32, i32* @S_TEST_OFF, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* @S_QTR_SIZE, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @S_FULL_SIZE, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %27 = icmp ne %struct.msm_camera_sensor_info* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store %struct.msm_camera_sensor_info* %29, %struct.msm_camera_sensor_info** %31, align 8
  br label %32

32:                                               ; preds = %28, %12
  %33 = call i32 @msm_camio_clk_rate_set(i32 24000000)
  %34 = call i32 @mdelay(i32 20)
  %35 = call i32 (...) @msm_camio_camif_pad_reg_reset()
  %36 = call i32 @mdelay(i32 20)
  %37 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %38 = call i32 @s5k3e2fx_probe_init_sensor(%struct.msm_camera_sensor_info* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %77

42:                                               ; preds = %32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @S_QTR_SIZE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @S_REG_INIT, align 4
  %50 = load i32, i32* @S_RES_PREVIEW, align 4
  %51 = call i32 @s5k3e2fx_setting(i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @S_REG_INIT, align 4
  %54 = load i32, i32* @S_RES_CAPTURE, align 4
  %55 = call i32 @s5k3e2fx_setting(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s5k3e2fx_client, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @s5k3e2fx_i2c_write_b(i32 %65, i32 12614, i32 58)
  store i32 %66, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %77

69:                                               ; preds = %62
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s5k3e2fx_client, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @s5k3e2fx_i2c_write_b(i32 %72, i32 12592, i32 3)
  store i32 %73, i32* %3, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %77

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %75, %68, %59, %41
  %78 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %79 = call i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s5k3e2fx_ctrl, align 8
  %81 = call i32 @kfree(%struct.TYPE_5__* %80)
  br label %82

82:                                               ; preds = %77, %76, %8
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @CDBG(i8*, ...) #1

declare dso_local i32 @msm_camio_clk_rate_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msm_camio_camif_pad_reg_reset(...) #1

declare dso_local i32 @s5k3e2fx_probe_init_sensor(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @s5k3e2fx_setting(i32, i32) #1

declare dso_local i32 @s5k3e2fx_i2c_write_b(i32, i32, i32) #1

declare dso_local i32 @s5k3e2fx_probe_init_done(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
