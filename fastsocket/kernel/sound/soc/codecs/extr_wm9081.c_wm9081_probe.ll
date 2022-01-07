; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm9081_priv* }
%struct.wm9081_priv = type { i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }

@wm9081_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Codec device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create pcms: %d\0A\00", align 1
@wm9081_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"No ReTune Mobile data, using normal EQ\0A\00", align 1
@wm9081_eq_controls = common dso_local global i32 0, align 4
@wm9081_dapm_widgets = common dso_local global i32 0, align 4
@audio_paths = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to register card: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm9081_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.wm9081_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm9081_codec, align 8
  %11 = icmp eq %struct.snd_soc_codec* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm9081_codec, align 8
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.snd_soc_codec* %20, %struct.snd_soc_codec** %24, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm9081_codec, align 8
  store %struct.snd_soc_codec* %25, %struct.snd_soc_codec** %5, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %26, i32 0, i32 1
  %28 = load %struct.wm9081_priv*, %struct.wm9081_priv** %27, align 8
  store %struct.wm9081_priv* %28, %struct.wm9081_priv** %6, align 8
  %29 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %30 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %31 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %32 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %19
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %91

41:                                               ; preds = %19
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %43 = load i32, i32* @wm9081_snd_controls, align 4
  %44 = load i32, i32* @wm9081_snd_controls, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %42, i32 %43, i32 %45)
  %47 = load %struct.wm9081_priv*, %struct.wm9081_priv** %6, align 8
  %48 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %57 = load i32, i32* @wm9081_eq_controls, align 4
  %58 = load i32, i32* @wm9081_eq_controls, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %51, %41
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %63 = load i32, i32* @wm9081_dapm_widgets, align 4
  %64 = load i32, i32* @wm9081_dapm_widgets, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %62, i32 %63, i32 %65)
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %68 = load i32, i32* @audio_paths, align 4
  %69 = load i32, i32* @audio_paths, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %67, i32 %68, i32 %70)
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %73 = call i32 @snd_soc_dapm_new_widgets(%struct.snd_soc_codec* %72)
  %74 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %75 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %61
  %79 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %80 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, ...) @dev_err(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %86

84:                                               ; preds = %61
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %93

86:                                               ; preds = %78
  %87 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %88 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %87)
  %89 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %90 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %89)
  br label %91

91:                                               ; preds = %86, %35
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %84, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_new_widgets(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
