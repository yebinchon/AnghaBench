; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/display/extr_display-sysfs.c_display_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_device = type { i32, i32, %struct.display_driver*, %struct.device*, i32 }
%struct.display_driver = type { i32 (%struct.display_device.0*, i8*)* }
%struct.display_device.0 = type opaque
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@allocated_dsp_lock = common dso_local global i32 0, align 4
@allocated_dsp = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@display_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"display%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.display_device* @display_device_register(%struct.display_driver* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.display_device*, align 8
  %5 = alloca %struct.display_driver*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.display_device*, align 8
  %9 = alloca i32, align 4
  store %struct.display_driver* %0, %struct.display_driver** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.display_device* null, %struct.display_device** %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.display_driver*, %struct.display_driver** %5, align 8
  %13 = icmp ne %struct.display_driver* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.display_device* @ERR_PTR(i32 %19)
  store %struct.display_device* %20, %struct.display_device** %4, align 8
  br label %98

21:                                               ; preds = %3
  %22 = call i32 @mutex_lock(i32* @allocated_dsp_lock)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @idr_pre_get(i32* @allocated_dsp, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = call i32 @mutex_unlock(i32* @allocated_dsp_lock)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.display_device* @ERR_PTR(i32 %29)
  store %struct.display_device* %30, %struct.display_device** %4, align 8
  br label %98

31:                                               ; preds = %21
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.display_device* @kzalloc(i32 32, i32 %32)
  store %struct.display_device* %33, %struct.display_device** %8, align 8
  %34 = load %struct.display_device*, %struct.display_device** %8, align 8
  %35 = call i64 @likely(%struct.display_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %31
  %38 = load %struct.display_driver*, %struct.display_driver** %5, align 8
  %39 = getelementptr inbounds %struct.display_driver, %struct.display_driver* %38, i32 0, i32 0
  %40 = load i32 (%struct.display_device.0*, i8*)*, i32 (%struct.display_device.0*, i8*)** %39, align 8
  %41 = load %struct.display_device*, %struct.display_device** %8, align 8
  %42 = bitcast %struct.display_device* %41 to %struct.display_device.0*
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 %40(%struct.display_device.0* %42, i8* %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %37
  %48 = call i32 @mutex_lock(i32* @allocated_dsp_lock)
  %49 = load %struct.display_device*, %struct.display_device** %8, align 8
  %50 = load %struct.display_device*, %struct.display_device** %8, align 8
  %51 = getelementptr inbounds %struct.display_device, %struct.display_device* %50, i32 0, i32 0
  %52 = call i32 @idr_get_new(i32* @allocated_dsp, %struct.display_device* %49, i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = call i32 @mutex_unlock(i32* @allocated_dsp_lock)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @display_class, align 4
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @MKDEV(i32 0, i32 0)
  %60 = load %struct.display_device*, %struct.display_device** %8, align 8
  %61 = load %struct.display_device*, %struct.display_device** %8, align 8
  %62 = getelementptr inbounds %struct.display_device, %struct.display_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_create(i32 %57, %struct.device* %58, i32 %59, %struct.display_device* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.display_device*, %struct.display_device** %8, align 8
  %66 = getelementptr inbounds %struct.display_device, %struct.display_device* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.display_device*, %struct.display_device** %8, align 8
  %68 = getelementptr inbounds %struct.display_device, %struct.display_device* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @IS_ERR(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load %struct.display_device*, %struct.display_device** %8, align 8
  %75 = getelementptr inbounds %struct.display_device, %struct.display_device* %74, i32 0, i32 3
  store %struct.device* %73, %struct.device** %75, align 8
  %76 = load %struct.display_driver*, %struct.display_driver** %5, align 8
  %77 = load %struct.display_device*, %struct.display_device** %8, align 8
  %78 = getelementptr inbounds %struct.display_device, %struct.display_device* %77, i32 0, i32 2
  store %struct.display_driver* %76, %struct.display_driver** %78, align 8
  %79 = load %struct.display_device*, %struct.display_device** %8, align 8
  %80 = getelementptr inbounds %struct.display_device, %struct.display_device* %79, i32 0, i32 1
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.display_device*, %struct.display_device** %8, align 8
  store %struct.display_device* %82, %struct.display_device** %4, align 8
  br label %98

83:                                               ; preds = %56
  %84 = call i32 @mutex_lock(i32* @allocated_dsp_lock)
  %85 = load %struct.display_device*, %struct.display_device** %8, align 8
  %86 = getelementptr inbounds %struct.display_device, %struct.display_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @idr_remove(i32* @allocated_dsp, i32 %87)
  %89 = call i32 @mutex_unlock(i32* @allocated_dsp_lock)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %83, %47
  br label %93

93:                                               ; preds = %92, %37, %31
  %94 = load %struct.display_device*, %struct.display_device** %8, align 8
  %95 = call i32 @kfree(%struct.display_device* %94)
  %96 = load i32, i32* %9, align 4
  %97 = call %struct.display_device* @ERR_PTR(i32 %96)
  store %struct.display_device* %97, %struct.display_device** %4, align 8
  br label %98

98:                                               ; preds = %93, %72, %28, %18
  %99 = load %struct.display_device*, %struct.display_device** %4, align 8
  ret %struct.display_device* %99
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.display_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.display_device* @kzalloc(i32, i32) #1

declare dso_local i64 @likely(%struct.display_device*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.display_device*, i32*) #1

declare dso_local i32 @device_create(i32, %struct.device*, i32, %struct.display_device*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.display_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
