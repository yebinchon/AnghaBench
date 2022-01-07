; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.snd_soc_codec = type { i32*, %struct.wm8993_priv* }
%struct.wm8993_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }

@wm8993_codec = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"I2C device not yet probed\0A\00", align 1
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create pcms\0A\00", align 1
@wm8993_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Using ReTune Mobile\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No ReTune Mobile, using normal EQ\0A\00", align 1
@wm8993_eq_controls = common dso_local global i32 0, align 4
@wm8993_dapm_widgets = common dso_local global i32 0, align 4
@routes = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to register card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8993_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.wm8993_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** @wm8993_codec, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %105

16:                                               ; preds = %1
  %17 = load i8*, i8** @wm8993_codec, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load i8*, i8** @wm8993_codec, align 8
  %23 = bitcast i8* %22 to %struct.snd_soc_codec*
  store %struct.snd_soc_codec* %23, %struct.snd_soc_codec** %5, align 8
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 1
  %26 = load %struct.wm8993_priv*, %struct.wm8993_priv** %25, align 8
  store %struct.wm8993_priv* %26, %struct.wm8993_priv** %6, align 8
  %27 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %28 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %29 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %30 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %105

38:                                               ; preds = %16
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %40 = load i32, i32* @wm8993_snd_controls, align 4
  %41 = load i32, i32* @wm8993_snd_controls, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %39, i32 %40, i32 %42)
  %44 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %45 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %64

54:                                               ; preds = %38
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %56 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %60 = load i32, i32* @wm8993_eq_controls, align 4
  %61 = load i32, i32* @wm8993_eq_controls, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %66 = load i32, i32* @wm8993_dapm_widgets, align 4
  %67 = load i32, i32* @wm8993_dapm_widgets, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %65, i32 %66, i32 %68)
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %71 = call i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_codec* %70)
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %73 = load i32, i32* @routes, align 4
  %74 = load i32, i32* @routes, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %72, i32 %73, i32 %75)
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %78 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %79 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %83 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @wm_hubs_add_analogue_routes(%struct.snd_soc_codec* %77, i32 %81, i32 %85)
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %88 = call i32 @snd_soc_dapm_new_widgets(%struct.snd_soc_codec* %87)
  %89 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %90 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %64
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %95 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %100

98:                                               ; preds = %64
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %107

100:                                              ; preds = %93
  %101 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %102 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %101)
  %103 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %104 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %103)
  br label %105

105:                                              ; preds = %100, %33, %12
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %98
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wm_hubs_add_analogue_routes(%struct.snd_soc_codec*, i32, i32) #1

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
