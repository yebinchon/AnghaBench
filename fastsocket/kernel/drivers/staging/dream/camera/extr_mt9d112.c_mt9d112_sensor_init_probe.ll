; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_sensor_init_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9d112.c_mt9d112_sensor_init_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.msm_camera_sensor_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"init entry \0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"reset failed!\0A\00", align 1
@mt9d112_client = common dso_local global %struct.TYPE_2__* null, align 8
@REG_MT9D112_MCU_BOOT = common dso_local global i32 0, align 4
@WORD_LEN = common dso_local global i32 0, align 4
@REG_MT9D112_SENSOR_RESET = common dso_local global i32 0, align 4
@REG_MT9D112_STANDBY_CONTROL = common dso_local global i32 0, align 4
@REG_MT9D112_MODEL_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"mt9d112 model_id = 0x%x\0A\00", align 1
@MT9D112_MODEL_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_camera_sensor_info*)* @mt9d112_sensor_init_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9d112_sensor_init_probe(%struct.msm_camera_sensor_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_camera_sensor_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.msm_camera_sensor_info* %0, %struct.msm_camera_sensor_info** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %8 = call i32 @mt9d112_reset(%struct.msm_camera_sensor_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %91

13:                                               ; preds = %1
  %14 = call i32 @mdelay(i32 5)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_MT9D112_MCU_BOOT, align 4
  %19 = load i32, i32* @WORD_LEN, align 4
  %20 = call i32 @mt9d112_i2c_write(i32 %17, i32 %18, i32 1281, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %91

24:                                               ; preds = %13
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REG_MT9D112_MCU_BOOT, align 4
  %29 = load i32, i32* @WORD_LEN, align 4
  %30 = call i32 @mt9d112_i2c_write(i32 %27, i32 %28, i32 1280, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %91

34:                                               ; preds = %24
  %35 = call i32 @mdelay(i32 5)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REG_MT9D112_SENSOR_RESET, align 4
  %40 = load i32, i32* @WORD_LEN, align 4
  %41 = call i32 @mt9d112_i2c_write(i32 %38, i32 %39, i32 2764, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %91

45:                                               ; preds = %34
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @REG_MT9D112_STANDBY_CONTROL, align 4
  %50 = load i32, i32* @WORD_LEN, align 4
  %51 = call i32 @mt9d112_i2c_write(i32 %48, i32 %49, i32 8, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %91

55:                                               ; preds = %45
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WORD_LEN, align 4
  %60 = call i32 @mt9d112_i2c_write(i32 %58, i32 13300, i32 797, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %91

64:                                               ; preds = %55
  %65 = call i32 @mdelay(i32 5)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9d112_client, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @REG_MT9D112_MODEL_ID, align 4
  %70 = load i32, i32* @WORD_LEN, align 4
  %71 = call i32 @mt9d112_i2c_read(i32 %68, i32 %69, i64* %4, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %91

75:                                               ; preds = %64
  %76 = load i64, i64* %4, align 8
  %77 = call i32 (i8*, ...) @CDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @MT9D112_MODEL_ID, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %91

84:                                               ; preds = %75
  %85 = call i32 (...) @mt9d112_reg_init()
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %88, %81, %74, %63, %54, %44, %33, %23, %11
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @CDBG(i8*, ...) #1

declare dso_local i32 @mt9d112_reset(%struct.msm_camera_sensor_info*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mt9d112_i2c_write(i32, i32, i32, i32) #1

declare dso_local i32 @mt9d112_i2c_read(i32, i32, i64*, i32) #1

declare dso_local i32 @mt9d112_reg_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
