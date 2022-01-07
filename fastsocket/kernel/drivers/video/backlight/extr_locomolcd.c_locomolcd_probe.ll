; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_locomolcd.c_locomolcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locomo_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@locomolcd_dev = common dso_local global %struct.locomo_dev* null, align 8
@LOCOMO_GPIO_FL_VR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"locomo-bl\00", align 1
@locomobl_data = common dso_local global i32 0, align 4
@locomolcd_bl_device = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.locomo_dev*)* @locomolcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @locomolcd_probe(%struct.locomo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.locomo_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.locomo_dev* %0, %struct.locomo_dev** %3, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = load %struct.locomo_dev*, %struct.locomo_dev** %3, align 8
  store %struct.locomo_dev* %7, %struct.locomo_dev** @locomolcd_dev, align 8
  %8 = load %struct.locomo_dev*, %struct.locomo_dev** %3, align 8
  %9 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LOCOMO_GPIO_FL_VR, align 4
  %13 = call i32 @locomo_gpio_set_dir(i32 %11, i32 %12, i32 0)
  %14 = call i64 (...) @machine_is_poodle()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @locomolcd_power(i32 1)
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @local_irq_restore(i64 %19)
  %21 = load %struct.locomo_dev*, %struct.locomo_dev** %3, align 8
  %22 = getelementptr inbounds %struct.locomo_dev, %struct.locomo_dev* %21, i32 0, i32 0
  %23 = call %struct.TYPE_9__* @backlight_device_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %22, i32* null, i32* @locomobl_data)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %25 = call i64 @IS_ERR(%struct.TYPE_9__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %29 = call i32 @PTR_ERR(%struct.TYPE_9__* %28)
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 4, i32* %33, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 2, i32* %36, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @locomolcd_bl_device, align 8
  %38 = call i32 @locomolcd_set_intensity(%struct.TYPE_9__* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @locomo_gpio_set_dir(i32, i32, i32) #1

declare dso_local i64 @machine_is_poodle(...) #1

declare dso_local i32 @locomolcd_power(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local %struct.TYPE_9__* @backlight_device_register(i8*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @locomolcd_set_intensity(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
