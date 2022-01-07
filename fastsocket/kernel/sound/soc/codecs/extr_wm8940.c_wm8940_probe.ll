; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }

@wm8940_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Codec device not registered\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create pcms: %d\0A\00", align 1
@wm8940_snd_controls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register card: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8940_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_probe(%struct.platform_device* %0) #0 {
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
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8940_codec, align 8
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
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8940_codec, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %23, align 8
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8940_codec, align 8
  store %struct.snd_soc_codec* %24, %struct.snd_soc_codec** %5, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 1
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %29 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %30 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %31 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %73

40:                                               ; preds = %18
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %42 = load i32, i32* @wm8940_snd_controls, align 4
  %43 = load i32, i32* @wm8940_snd_controls, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %41, i32 %42, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %68

49:                                               ; preds = %40
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %51 = call i32 @wm8940_add_widgets(%struct.snd_soc_codec* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %68

55:                                               ; preds = %49
  %56 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %57 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %60, %54, %48
  %69 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %70 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %69)
  %71 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %72 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %71)
  br label %73

73:                                               ; preds = %68, %34
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %66, %11
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wm8940_add_widgets(%struct.snd_soc_codec*) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
