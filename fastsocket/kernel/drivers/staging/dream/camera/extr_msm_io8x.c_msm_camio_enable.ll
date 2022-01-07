; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io8x.c_msm_camio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_io8x.c_msm_camio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.msm_camera_sensor_info* }
%struct.msm_camera_sensor_info = type { %struct.msm_camera_device_platform_data* }
%struct.msm_camera_device_platform_data = type { i32 (...)*, %struct.TYPE_4__ }

@camio_ext = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@appio = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@appbase = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mdcio = common dso_local global i8* null, align 8
@mdcbase = common dso_local global i8* null, align 8
@CAMIO_VFE_CLK = common dso_local global i32 0, align 4
@CAMIO_MDC_CLK = common dso_local global i32 0, align 4
@CAMIO_VFE_MDC_CLK = common dso_local global i32 0, align 4
@CAMIO_VFE_AXI_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_camio_enable(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_camera_sensor_info*, align 8
  %6 = alloca %struct.msm_camera_device_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %9, align 8
  store %struct.msm_camera_sensor_info* %10, %struct.msm_camera_sensor_info** %5, align 8
  %11 = load %struct.msm_camera_sensor_info*, %struct.msm_camera_sensor_info** %5, align 8
  %12 = getelementptr inbounds %struct.msm_camera_sensor_info, %struct.msm_camera_sensor_info* %11, i32 0, i32 0
  %13 = load %struct.msm_camera_device_platform_data*, %struct.msm_camera_device_platform_data** %12, align 8
  store %struct.msm_camera_device_platform_data* %13, %struct.msm_camera_device_platform_data** %6, align 8
  %14 = load %struct.msm_camera_device_platform_data*, %struct.msm_camera_device_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.msm_camera_device_platform_data, %struct.msm_camera_device_platform_data* %14, i32 0, i32 1
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_4__* @camio_ext to i8*), i8* align 8 %16, i64 16, i1 false)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 1), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 0), align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @request_mem_region(i32 %17, i32 %18, i32 %21)
  store i8* %22, i8** @appio, align 8
  %23 = load i8*, i8** @appio, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 0), align 4
  %31 = call i8* @ioremap(i32 %29, i32 %30)
  store i8* %31, i8** @appbase, align 8
  %32 = load i8*, i8** @appbase, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %78

37:                                               ; preds = %28
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 3), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 2), align 4
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @request_mem_region(i32 %38, i32 %39, i32 %42)
  store i8* %43, i8** @mdcio, align 8
  %44 = load i8*, i8** @mdcio, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %37
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 2), align 4
  %52 = call i8* @ioremap(i32 %50, i32 %51)
  store i8* %52, i8** @mdcbase, align 8
  %53 = load i8*, i8** @mdcbase, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %49
  %59 = load %struct.msm_camera_device_platform_data*, %struct.msm_camera_device_platform_data** %6, align 8
  %60 = getelementptr inbounds %struct.msm_camera_device_platform_data, %struct.msm_camera_device_platform_data* %59, i32 0, i32 0
  %61 = load i32 (...)*, i32 (...)** %60, align 8
  %62 = call i32 (...) %61()
  %63 = load i32, i32* @CAMIO_VFE_CLK, align 4
  %64 = call i32 @msm_camio_clk_enable(i32 %63)
  %65 = load i32, i32* @CAMIO_MDC_CLK, align 4
  %66 = call i32 @msm_camio_clk_enable(i32 %65)
  %67 = load i32, i32* @CAMIO_VFE_MDC_CLK, align 4
  %68 = call i32 @msm_camio_clk_enable(i32 %67)
  %69 = load i32, i32* @CAMIO_VFE_AXI_CLK, align 4
  %70 = call i32 @msm_camio_clk_enable(i32 %69)
  store i32 0, i32* %2, align 4
  br label %84

71:                                               ; preds = %55
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 3), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 2), align 4
  %74 = call i32 @release_mem_region(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %46
  %76 = load i8*, i8** @appbase, align 8
  %77 = call i32 @iounmap(i8* %76)
  br label %78

78:                                               ; preds = %75, %34
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 1), align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @camio_ext, i32 0, i32 0), align 4
  %81 = call i32 @release_mem_region(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %25
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %58
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @request_mem_region(i32, i32, i32) #2

declare dso_local i8* @ioremap(i32, i32) #2

declare dso_local i32 @msm_camio_clk_enable(i32) #2

declare dso_local i32 @release_mem_region(i32, i32) #2

declare dso_local i32 @iounmap(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
