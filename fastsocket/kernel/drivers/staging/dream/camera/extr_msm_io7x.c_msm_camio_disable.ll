; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io7x.c_msm_camio_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io7x.c_msm_camio_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_camera_sensor_info* }
%struct.msm_camera_sensor_info = type { %struct.msm_camera_device_platform_data* }
%struct.msm_camera_device_platform_data = type { i32 (...)* }

@mdcbase = common dso_local global i32 0, align 4
@camio_ext = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@appbase = common dso_local global i32 0, align 4
@CAMIO_VFE_CLK = common dso_local global i32 0, align 4
@CAMIO_MDC_CLK = common dso_local global i32 0, align 4
@CAMIO_VFE_MDC_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_camio_disable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.msm_camera_sensor_info*, align 8
  %4 = alloca %struct.msm_camera_device_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %7, align 8
  store %struct.msm_camera_sensor_info* %8, %struct.msm_camera_sensor_info** %3, align 8
  %9 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %3, align 8
  %10 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %9, i32 0, i32 0
  %11 = load %struct.msm_camera_device_platform_data*, %struct.msm_camera_device_platform_data** %10, align 8
  store %struct.msm_camera_device_platform_data* %11, %struct.msm_camera_device_platform_data** %4, align 8
  %12 = load i32, i32* @mdcbase, align 4
  %13 = call i32 @iounmap(i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 3), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 2), align 4
  %16 = call i32 @release_mem_region(i32 %14, i32 %15)
  %17 = load i32, i32* @appbase, align 4
  %18 = call i32 @iounmap(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 0), align 4
  %21 = call i32 @release_mem_region(i32 %19, i32 %20)
  %22 = load %struct.msm_camera_device_platform_data*, %struct.msm_camera_device_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.msm_camera_device_platform_data, %struct.msm_camera_device_platform_data* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  %26 = load i32, i32* @CAMIO_VFE_CLK, align 4
  %27 = call i32 @msm_camio_clk_disable(i32 %26)
  %28 = load i32, i32* @CAMIO_MDC_CLK, align 4
  %29 = call i32 @msm_camio_clk_disable(i32 %28)
  %30 = load i32, i32* @CAMIO_VFE_MDC_CLK, align 4
  %31 = call i32 @msm_camio_clk_disable(i32 %30)
  ret void
}

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @msm_camio_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
