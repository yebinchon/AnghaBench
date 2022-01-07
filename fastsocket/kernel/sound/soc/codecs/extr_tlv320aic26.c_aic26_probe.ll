; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { i32, %struct.TYPE_2__*, %struct.aic26* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.aic26 = type { %struct.snd_soc_codec }

@.str = private unnamed_addr constant [32 x i8] c"Probing AIC26 SoC CODEC driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"socdev=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"codec_data=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"aic26: missing codec pointer\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Registering PCMs, dev=%p, socdev->dev=%p\0A\00", align 1
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"aic26: failed to create pcms\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Registering controls\0A\00", align 1
@aic26_snd_controls = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Registering card\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"aic26: failed to register card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aic26_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.aic26*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.snd_soc_device* %10, %struct.snd_soc_device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @dev_info(i32* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.snd_soc_device* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 2
  %22 = load %struct.aic26*, %struct.aic26** %21, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.aic26* %22)
  %24 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %24, i32 0, i32 2
  %26 = load %struct.aic26*, %struct.aic26** %25, align 8
  store %struct.aic26* %26, %struct.aic26** %6, align 8
  %27 = load %struct.aic26*, %struct.aic26** %6, align 8
  %28 = icmp eq %struct.aic26* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %92

35:                                               ; preds = %1
  %36 = load %struct.aic26*, %struct.aic26** %6, align 8
  %37 = getelementptr inbounds %struct.aic26, %struct.aic26* %36, i32 0, i32 0
  store %struct.snd_soc_codec* %37, %struct.snd_soc_codec** %5, align 8
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %39 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.snd_soc_codec* %38, %struct.snd_soc_codec** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %48 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32* %46, i32 %49)
  %51 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %52 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %53 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %54 = call i32 @snd_soc_new_pcms(%struct.snd_soc_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %35
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %92

63:                                               ; preds = %35
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %68 = load i32, i32* @aic26_snd_controls, align 4
  %69 = load i32, i32* @aic26_snd_controls, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %67, i32 %68, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON(i32 %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %79 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %80 = call i32 @snd_soc_init_card(%struct.snd_soc_device* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %63
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %88

87:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %92

88:                                               ; preds = %83
  %89 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %90 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %87, %57, %29
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @snd_soc_new_pcms(%struct.snd_soc_device*, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @snd_soc_init_card(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
