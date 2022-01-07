; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.uda1380_platform_data* }
%struct.uda1380_platform_data = type { i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }

@uda1380_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Codec device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create pcms: %d\0A\00", align 1
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@UDA1380_CLK = common dso_local global i32 0, align 4
@R00_DAC_CLK = common dso_local global i32 0, align 4
@uda1380_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register card: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uda1380_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.uda1380_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @uda1380_codec, align 8
  %11 = icmp eq %struct.snd_soc_codec* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.TYPE_4__*
  %16 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %86

19:                                               ; preds = %1
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @uda1380_codec, align 8
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.snd_soc_codec* %20, %struct.snd_soc_codec** %24, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @uda1380_codec, align 8
  store %struct.snd_soc_codec* %25, %struct.snd_soc_codec** %5, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %29, align 8
  store %struct.uda1380_platform_data* %30, %struct.uda1380_platform_data** %6, align 8
  %31 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %32 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %33 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %34 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %84

43:                                               ; preds = %19
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %45 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %46 = call i32 @uda1380_set_bias_level(%struct.snd_soc_codec* %44, i32 %45)
  %47 = load %struct.uda1380_platform_data*, %struct.uda1380_platform_data** %6, align 8
  %48 = getelementptr inbounds %struct.uda1380_platform_data, %struct.uda1380_platform_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %59 [
    i32 129, label %50
    i32 128, label %54
  ]

50:                                               ; preds = %43
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %52 = load i32, i32* @UDA1380_CLK, align 4
  %53 = call i32 @uda1380_write(%struct.snd_soc_codec* %51, i32 %52, i32 0)
  br label %59

54:                                               ; preds = %43
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %56 = load i32, i32* @UDA1380_CLK, align 4
  %57 = load i32, i32* @R00_DAC_CLK, align 4
  %58 = call i32 @uda1380_write(%struct.snd_soc_codec* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %54, %50
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %61 = load i32, i32* @uda1380_snd_controls, align 4
  %62 = load i32, i32* @uda1380_snd_controls, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %60, i32 %61, i32 %63)
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %66 = call i32 @uda1380_add_widgets(%struct.snd_soc_codec* %65)
  %67 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %68 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %79

77:                                               ; preds = %59
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %71
  %80 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %81 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %80)
  %82 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %83 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %82)
  br label %84

84:                                               ; preds = %79, %37
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %77, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @uda1380_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @uda1380_add_widgets(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
