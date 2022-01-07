; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_pwm_bl.c_pwm_backlight_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.platform_pwm_backlight_data* }
%struct.platform_pwm_backlight_data = type { i32 (%struct.TYPE_2__*)* }
%struct.backlight_device = type { i32 }
%struct.pwm_bl_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pwm_backlight_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_backlight_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_pwm_backlight_data*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.pwm_bl_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %8, align 8
  store %struct.platform_pwm_backlight_data* %9, %struct.platform_pwm_backlight_data** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.backlight_device* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.backlight_device* %11, %struct.backlight_device** %4, align 8
  %12 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %13 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %12, i32 0, i32 0
  %14 = call %struct.pwm_bl_data* @dev_get_drvdata(i32* %13)
  store %struct.pwm_bl_data* %14, %struct.pwm_bl_data** %5, align 8
  %15 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %16 = call i32 @backlight_device_unregister(%struct.backlight_device* %15)
  %17 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %5, align 8
  %18 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %5, align 8
  %21 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pwm_config(i32 %19, i32 0, i32 %22)
  %24 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pwm_disable(i32 %26)
  %28 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %5, align 8
  %29 = getelementptr inbounds %struct.pwm_bl_data, %struct.pwm_bl_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pwm_free(i32 %30)
  %32 = load %struct.pwm_bl_data*, %struct.pwm_bl_data** %5, align 8
  %33 = call i32 @kfree(%struct.pwm_bl_data* %32)
  %34 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %35 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_2__*)* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.platform_pwm_backlight_data*, %struct.platform_pwm_backlight_data** %3, align 8
  %40 = getelementptr inbounds %struct.platform_pwm_backlight_data, %struct.platform_pwm_backlight_data* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %40, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 %41(%struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local %struct.backlight_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.pwm_bl_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @backlight_device_unregister(%struct.backlight_device*) #1

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

declare dso_local i32 @pwm_free(i32) #1

declare dso_local i32 @kfree(%struct.pwm_bl_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
