; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }

@wm8960_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Codec device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create pcms: %d\0A\00", align 1
@wm8960_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register card: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8960_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.snd_soc_device* %8, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8960_codec, align 8
  %10 = icmp eq %struct.snd_soc_codec* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8960_codec, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %23, align 8
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8960_codec, align 8
  store %struct.snd_soc_codec* %24, %struct.snd_soc_codec** %5, align 8
  %25 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %26 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %27 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %28 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %62

37:                                               ; preds = %18
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = load i32, i32* @wm8960_snd_controls, align 4
  %40 = load i32, i32* @wm8960_snd_controls, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %38, i32 %39, i32 %41)
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %44 = call i32 @wm8960_add_widgets(%struct.snd_soc_codec* %43)
  %45 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %46 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %59 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %58)
  %60 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %61 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %60)
  br label %62

62:                                               ; preds = %57, %31
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %55, %11
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8960_add_widgets(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
