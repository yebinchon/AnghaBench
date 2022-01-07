; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_camera_drv_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_camera.c_msm_camera_drv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.msm_camera_sensor_info = type opaque
%struct.msm_sensor_ctrl = type opaque
%struct.msm_device = type { i32 }
%struct.msm_sync = type { i32 }
%struct.msm_camera_sensor_info.0 = type opaque
%struct.msm_sensor_ctrl.1 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@msm_camera_drv_start.camera_node = internal global i32 0, align 4
@MSM_MAX_CAMERA_SENSORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"msm_camera: too many camera sensors\0A\00", align 1
@msm_class = common dso_local global i64 0, align 8
@msm_devno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"msm_camera\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"msm_camera: failed to allocate chrdev: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"msm_camera: create device class failed: %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"setting camera node %d\0A\00", align 1
@msm_sensors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_camera_drv_start(%struct.platform_device* %0, i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)*, align 8
  %6 = alloca %struct.msm_device*, align 8
  %7 = alloca %struct.msm_sync*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)* %1, i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)** %5, align 8
  store %struct.msm_device* null, %struct.msm_device** %6, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @msm_camera_drv_start.camera_node, align 4
  %12 = load i32, i32* @MSM_MAX_CAMERA_SENSORS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i64, i64* @msm_class, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @MSM_MAX_CAMERA_SENSORS, align 4
  %22 = mul nsw i32 3, %21
  %23 = call i32 @alloc_chrdev_region(i32* @msm_devno, i32 0, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %88

30:                                               ; preds = %20
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = call i64 @class_create(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i64 %32, i64* @msm_class, align 8
  %33 = load i64, i64* @msm_class, align 8
  %34 = call i64 @IS_ERR(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i64, i64* @msm_class, align 8
  %38 = call i32 @PTR_ERR(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %88

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %17
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.msm_device* @kzalloc(i32 16, i32 %44)
  store %struct.msm_device* %45, %struct.msm_device** %6, align 8
  %46 = load %struct.msm_device*, %struct.msm_device** %6, align 8
  %47 = icmp ne %struct.msm_device* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %88

51:                                               ; preds = %43
  %52 = load %struct.msm_device*, %struct.msm_device** %6, align 8
  %53 = getelementptr inbounds %struct.msm_device, %struct.msm_device* %52, i64 3
  %54 = bitcast %struct.msm_device* %53 to %struct.msm_sync*
  store %struct.msm_sync* %54, %struct.msm_sync** %7, align 8
  %55 = load %struct.msm_sync*, %struct.msm_sync** %7, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = load i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)*, i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)** %5, align 8
  %58 = bitcast i32 (%struct.msm_camera_sensor_info*, %struct.msm_sensor_ctrl*)* %57 to i32 (%struct.msm_camera_sensor_info.0*, %struct.msm_sensor_ctrl.1*)*
  %59 = call i32 @msm_sync_init(%struct.msm_sync* %55, %struct.platform_device* %56, i32 (%struct.msm_camera_sensor_info.0*, %struct.msm_sensor_ctrl.1*)* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.msm_device*, %struct.msm_device** %6, align 8
  %64 = call i32 @kfree(%struct.msm_device* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %88

66:                                               ; preds = %51
  %67 = load i32, i32* @msm_camera_drv_start.camera_node, align 4
  %68 = call i32 @CDBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.msm_device*, %struct.msm_device** %6, align 8
  %70 = load %struct.msm_sync*, %struct.msm_sync** %7, align 8
  %71 = load i32, i32* @msm_camera_drv_start.camera_node, align 4
  %72 = call i32 @msm_device_init(%struct.msm_device* %69, %struct.msm_sync* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.msm_sync*, %struct.msm_sync** %7, align 8
  %77 = call i32 @msm_sync_destroy(%struct.msm_sync* %76)
  %78 = load %struct.msm_device*, %struct.msm_device** %6, align 8
  %79 = call i32 @kfree(%struct.msm_device* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %66
  %82 = load i32, i32* @msm_camera_drv_start.camera_node, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @msm_camera_drv_start.camera_node, align 4
  %84 = load %struct.msm_sync*, %struct.msm_sync** %7, align 8
  %85 = getelementptr inbounds %struct.msm_sync, %struct.msm_sync* %84, i32 0, i32 0
  %86 = call i32 @list_add(i32* %85, i32* @msm_sensors)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %75, %62, %48, %36, %26, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #1

declare dso_local i64 @class_create(i32, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.msm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @msm_sync_init(%struct.msm_sync*, %struct.platform_device*, i32 (%struct.msm_camera_sensor_info.0*, %struct.msm_sensor_ctrl.1*)*) #1

declare dso_local i32 @kfree(%struct.msm_device*) #1

declare dso_local i32 @CDBG(i8*, i32) #1

declare dso_local i32 @msm_device_init(%struct.msm_device*, %struct.msm_sync*, i32) #1

declare dso_local i32 @msm_sync_destroy(%struct.msm_sync*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
