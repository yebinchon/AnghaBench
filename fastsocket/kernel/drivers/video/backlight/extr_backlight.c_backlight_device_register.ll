; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_backlight.c_backlight_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_backlight.c_backlight_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.backlight_ops*, %struct.TYPE_5__, i32, i32 }
%struct.backlight_ops = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.device*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"backlight_device_register: name=%s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@backlight_class = common dso_local global i32 0, align 4
@bl_device_release = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.backlight_device* null, align 8
@pmac_backlight_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.backlight_device* @backlight_device_register(i8* %0, %struct.device* %1, i8* %2, %struct.backlight_ops* %3) #0 {
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.backlight_ops*, align 8
  %10 = alloca %struct.backlight_device*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.backlight_ops* %3, %struct.backlight_ops** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.backlight_device* @kzalloc(i32 40, i32 %14)
  store %struct.backlight_device* %15, %struct.backlight_device** %10, align 8
  %16 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %17 = icmp ne %struct.backlight_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.backlight_device* @ERR_PTR(i32 %20)
  store %struct.backlight_device* %21, %struct.backlight_device** %5, align 8
  br label %75

22:                                               ; preds = %4
  %23 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %24 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %27 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load i32, i32* @backlight_class, align 4
  %30 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %35 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load i32, i32* @bl_device_release, align 4
  %38 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %39 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %42 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %41, i32 0, i32 1
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @dev_set_name(%struct.TYPE_5__* %42, i8* %43)
  %45 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %46 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %45, i32 0, i32 1
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %46, i8* %47)
  %49 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %50 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %49, i32 0, i32 1
  %51 = call i32 @device_register(%struct.TYPE_5__* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %22
  %55 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %56 = call i32 @kfree(%struct.backlight_device* %55)
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.backlight_device* @ERR_PTR(i32 %57)
  store %struct.backlight_device* %58, %struct.backlight_device** %5, align 8
  br label %75

59:                                               ; preds = %22
  %60 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %61 = call i32 @backlight_register_fb(%struct.backlight_device* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %66 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %65, i32 0, i32 1
  %67 = call i32 @device_unregister(%struct.TYPE_5__* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.backlight_device* @ERR_PTR(i32 %68)
  store %struct.backlight_device* %69, %struct.backlight_device** %5, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.backlight_ops*, %struct.backlight_ops** %9, align 8
  %72 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  %73 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %72, i32 0, i32 0
  store %struct.backlight_ops* %71, %struct.backlight_ops** %73, align 8
  %74 = load %struct.backlight_device*, %struct.backlight_device** %10, align 8
  store %struct.backlight_device* %74, %struct.backlight_device** %5, align 8
  br label %75

75:                                               ; preds = %70, %64, %54, %18
  %76 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  ret %struct.backlight_device* %76
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.backlight_device* @kzalloc(i32, i32) #1

declare dso_local %struct.backlight_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.backlight_device*) #1

declare dso_local i32 @backlight_register_fb(%struct.backlight_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
