; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_open_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_sensor_open_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, %struct.msm_camera_sensor_info*, i32, i32 }
%struct.msm_camera_sensor_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mt9t013_ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"mt9t013_init failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TEST_OFF = common dso_local global i32 0, align 4
@QTR_SIZE = common dso_local global i64 0, align 8
@FULL_SIZE = common dso_local global i32 0, align 4
@MT9T013_DEFAULT_CLOCK_RATE = common dso_local global i32 0, align 4
@REG_INIT = common dso_local global i32 0, align 4
@RES_PREVIEW = common dso_local global i32 0, align 4
@RES_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9t013_sensor_open_init(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca %struct.msm_camera_sensor_info*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1024, i32* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 1024, i32* %16, align 4
  %17 = load i32, i32* @TEST_OFF, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* @QTR_SIZE, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @FULL_SIZE, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %27 = icmp ne %struct.msm_camera_sensor_info* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store %struct.msm_camera_sensor_info* %29, %struct.msm_camera_sensor_info** %31, align 8
  br label %32

32:                                               ; preds = %28, %12
  %33 = load i32, i32* @MT9T013_DEFAULT_CLOCK_RATE, align 4
  %34 = call i32 @msm_camio_clk_rate_set(i32 %33)
  %35 = call i32 @mdelay(i32 20)
  %36 = call i32 (...) @msm_camio_camif_pad_reg_reset()
  %37 = call i32 @mdelay(i32 20)
  %38 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %2, align 8
  %39 = call i32 @mt9t013_probe_init_sensor(%struct.msm_camera_sensor_info* %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %67

43:                                               ; preds = %32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QTR_SIZE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @REG_INIT, align 4
  %51 = load i32, i32* @RES_PREVIEW, align 4
  %52 = call i32 @mt9t013_setting(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @REG_INIT, align 4
  %55 = load i32, i32* @RES_CAPTURE, align 4
  %56 = call i32 @mt9t013_setting(i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %3, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (...) @mt9t013_poweron_af()
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %70

67:                                               ; preds = %65, %42
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9t013_ctrl, align 8
  %69 = call i32 @kfree(%struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %67, %66, %8
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @msm_camio_clk_rate_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msm_camio_camif_pad_reg_reset(...) #1

declare dso_local i32 @mt9t013_probe_init_sensor(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @mt9t013_setting(i32, i32) #1

declare dso_local i32 @mt9t013_poweron_af(...) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
