; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8523_priv* }
%struct.wm8523_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8523_AIF_CTRL1 = common dso_local global i32 0, align 4
@WM8523_AIF_CTRL2 = common dso_local global i32 0, align 4
@lrclk_ratios = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"MCLK/fs ratio %d unsupported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8523_SR_MASK = common dso_local global i32 0, align 4
@WM8523_WL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8523_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8523_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %19, align 8
  store %struct.snd_soc_device* %20, %struct.snd_soc_device** %9, align 8
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %22 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %24, align 8
  store %struct.snd_soc_codec* %25, %struct.snd_soc_codec** %10, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %27 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %26, i32 0, i32 1
  %28 = load %struct.wm8523_priv*, %struct.wm8523_priv** %27, align 8
  store %struct.wm8523_priv* %28, %struct.wm8523_priv** %11, align 8
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %30 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %33 = load i32, i32* @WM8523_AIF_CTRL2, align 4
  %34 = call i32 @snd_soc_read(%struct.snd_soc_codec* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %56, %3
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %42 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i32 @params_rate(%struct.snd_pcm_hw_params* %44)
  %46 = sdiv i32 %43, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %59

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %35

59:                                               ; preds = %54, %35
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.wm8523_priv*, %struct.wm8523_priv** %11, align 8
  %69 = getelementptr inbounds %struct.wm8523_priv, %struct.wm8523_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @params_rate(%struct.snd_pcm_hw_params* %71)
  %73 = sdiv i32 %70, %72
  %74 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %115

77:                                               ; preds = %59
  %78 = load i32, i32* @WM8523_SR_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %14, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %14, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lrclk_ratios, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @WM8523_WL_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %95 = call i32 @params_format(%struct.snd_pcm_hw_params* %94)
  switch i32 %95, label %106 [
    i32 131, label %96
    i32 130, label %97
    i32 129, label %100
    i32 128, label %103
  ]

96:                                               ; preds = %77
  br label %106

97:                                               ; preds = %77
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, 8
  store i32 %99, i32* %13, align 4
  br label %106

100:                                              ; preds = %77
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, 16
  store i32 %102, i32* %13, align 4
  br label %106

103:                                              ; preds = %77
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, 24
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %77, %103, %100, %97, %96
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %108 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @snd_soc_write(%struct.snd_soc_codec* %107, i32 %108, i32 %109)
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %112 = load i32, i32* @WM8523_AIF_CTRL2, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @snd_soc_write(%struct.snd_soc_codec* %111, i32 %112, i32 %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %106, %64
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
