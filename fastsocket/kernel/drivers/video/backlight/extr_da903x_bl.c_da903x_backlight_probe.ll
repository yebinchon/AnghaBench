; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_da903x_bl.c_da903x_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.da903x_backlight_data = type { i32, i32, i64 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DA9030_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@DA9034_MAX_BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid backlight device ID(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@da903x_backlight_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da903x_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da903x_backlight_data*, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.da903x_backlight_data* @kzalloc(i32 16, i32 %7)
  store %struct.da903x_backlight_data* %8, %struct.da903x_backlight_data** %4, align 8
  %9 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %10 = icmp eq %struct.da903x_backlight_data* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 129, label %18
    i32 128, label %20
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @DA9030_MAX_BRIGHTNESS, align 4
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %14
  %21 = load i32, i32* @DA9034_MAX_BRIGHTNESS, align 4
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %30 = call i32 @kfree(%struct.da903x_backlight_data* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %80

33:                                               ; preds = %20, %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %38 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %44 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %46 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %51 = getelementptr inbounds %struct.da903x_backlight_data, %struct.da903x_backlight_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %54 = call %struct.backlight_device* @backlight_device_register(i32 %49, i32 %52, %struct.da903x_backlight_data* %53, i32* @da903x_backlight_ops)
  store %struct.backlight_device* %54, %struct.backlight_device** %5, align 8
  %55 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %56 = call i64 @IS_ERR(%struct.backlight_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %33
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 1
  %61 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.da903x_backlight_data*, %struct.da903x_backlight_data** %4, align 8
  %63 = call i32 @kfree(%struct.da903x_backlight_data* %62)
  %64 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %65 = call i32 @PTR_ERR(%struct.backlight_device* %64)
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %33
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %69 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %73 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.backlight_device* %76)
  %78 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %79 = call i32 @backlight_update_status(%struct.backlight_device* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %66, %58, %22, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.da903x_backlight_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.da903x_backlight_data*) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32, %struct.da903x_backlight_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
