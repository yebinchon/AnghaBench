; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_codec_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_codec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.snd_soc_codec = type { i8*, i32 (%struct.snd_soc_codec*, i32)*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32 (%struct.snd_soc_codec*, i32, i32)*, i32, i32*, i8*, %struct.wm8400_priv* }
%struct.wm8400_priv = type { i32, %struct.TYPE_3__*, %struct.snd_soc_codec }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@power = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to get regulators: %d\0A\00", align 1
@wm8400_dai = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"WM8400\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@wm8400_set_bias_level = common dso_local global i32 0, align 4
@WM8400_REGISTER_COUNT = common dso_local global i32 0, align 4
@wm8400_probe_deferred = common dso_local global i32 0, align 4
@WM8400_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8400_CODEC_ENA = common dso_local global i32 0, align 4
@WM8400_LEFT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8400_IPVU = common dso_local global i32 0, align 4
@WM8400_RIGHT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8400_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8400_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@wm8400_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8400_codec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_codec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm8400_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wm8400_priv* @kzalloc(i32 112, i32 %8)
  store %struct.wm8400_priv* %9, %struct.wm8400_priv** %4, align 8
  %10 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %11 = icmp eq %struct.wm8400_priv* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %144

15:                                               ; preds = %1
  %16 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %17 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %16, i32 0, i32 2
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %7, align 8
  %18 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 14
  store %struct.wm8400_priv* %18, %struct.wm8400_priv** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i8* @dev_get_drvdata(i32* %22)
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 13
  store i8* %23, i8** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i8* @dev_get_drvdata(i32* %27)
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  %30 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %31 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %30, i32 0, i32 1
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %33 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @power, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = load i32*, i32** @power, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @regulator_bulk_get(i32 %36, i32 %38, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %15
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %140

49:                                               ; preds = %15
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 12
  store i32* %51, i32** %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  store i32* %55, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wm8400_dai, i32 0, i32 0), align 8
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %57, align 8
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %60 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 1
  store i32 (%struct.snd_soc_codec*, i32)* @wm8400_read, i32 (%struct.snd_soc_codec*, i32)** %62, align 8
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %64 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %63, i32 0, i32 10
  store i32 (%struct.snd_soc_codec*, i32, i32)* @wm8400_write, i32 (%struct.snd_soc_codec*, i32, i32)** %64, align 8
  %65 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %67 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @wm8400_set_bias_level, align 4
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %70 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %72 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %71, i32 0, i32 7
  store %struct.TYPE_4__* @wm8400_dai, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %74 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @WM8400_REGISTER_COUNT, align 4
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %77 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %78, i32 0, i32 5
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %82 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %81, i32 0, i32 4
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %85 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %84, i32 0, i32 3
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %88 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %87, i32 0, i32 0
  %89 = load i32, i32* @wm8400_probe_deferred, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %92 = call i32 @wm8400_codec_reset(%struct.snd_soc_codec* %91)
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %94 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %95 = call i32 @wm8400_read(%struct.snd_soc_codec* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %97 = load i32, i32* @WM8400_POWER_MANAGEMENT_1, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WM8400_CODEC_ENA, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @wm8400_write(%struct.snd_soc_codec* %96, i32 %97, i32 %100)
  %102 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %103 = load i32, i32* @WM8400_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %104 = call i32 @wm8400_read(%struct.snd_soc_codec* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %106 = load i32, i32* @WM8400_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @WM8400_IPVU, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @wm8400_write(%struct.snd_soc_codec* %105, i32 %106, i32 %109)
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %112 = load i32, i32* @WM8400_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %113 = call i32 @wm8400_read(%struct.snd_soc_codec* %111, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %115 = load i32, i32* @WM8400_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @WM8400_IPVU, align 4
  %118 = and i32 %116, %117
  %119 = call i32 @wm8400_write(%struct.snd_soc_codec* %114, i32 %115, i32 %118)
  %120 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %121 = load i32, i32* @WM8400_LEFT_OUTPUT_VOLUME, align 4
  %122 = call i32 @wm8400_write(%struct.snd_soc_codec* %120, i32 %121, i32 336)
  %123 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %124 = load i32, i32* @WM8400_RIGHT_OUTPUT_VOLUME, align 4
  %125 = call i32 @wm8400_write(%struct.snd_soc_codec* %123, i32 %124, i32 336)
  %126 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  store %struct.snd_soc_codec* %126, %struct.snd_soc_codec** @wm8400_codec, align 8
  %127 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %128 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %127, i32 0, i32 0
  %129 = call i32 @schedule_work(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %49
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %135

134:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %144

135:                                              ; preds = %131
  store %struct.snd_soc_codec* null, %struct.snd_soc_codec** @wm8400_codec, align 8
  %136 = load i32*, i32** @power, align 8
  %137 = call i32 @ARRAY_SIZE(i32* %136)
  %138 = load i32*, i32** @power, align 8
  %139 = call i32 @regulator_bulk_free(i32 %137, i32* %138)
  br label %140

140:                                              ; preds = %135, %44
  %141 = load %struct.wm8400_priv*, %struct.wm8400_priv** %4, align 8
  %142 = call i32 @kfree(%struct.wm8400_priv* %141)
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %134, %12
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.wm8400_priv* @kzalloc(i32, i32) #1

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @regulator_bulk_get(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wm8400_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8400_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @wm8400_codec_reset(%struct.snd_soc_codec*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @regulator_bulk_free(i32, i32*) #1

declare dso_local i32 @kfree(%struct.wm8400_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
