; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@wm8903_codec = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"I2C device not yet probed\0A\00", align 1
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create pcms\0A\00", align 1
@wm8903_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"wm8903: failed to register card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8903_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.snd_soc_device* %7, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @wm8903_codec, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %61

14:                                               ; preds = %1
  %15 = load i64, i64* @wm8903_codec, align 8
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %15, i64* %19, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %21 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %22 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %23 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %61

30:                                               ; preds = %14
  %31 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %32 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @wm8903_snd_controls, align 4
  %37 = load i32, i32* @wm8903_snd_controls, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @snd_soc_add_controls(i64 %35, i32 %36, i32 %38)
  %40 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %41 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wm8903_add_widgets(i64 %44)
  %46 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %47 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %56

54:                                               ; preds = %30
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %50
  %57 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %58 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %57)
  %59 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %60 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %59)
  br label %61

61:                                               ; preds = %56, %26, %10
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8903_add_widgets(i64) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
