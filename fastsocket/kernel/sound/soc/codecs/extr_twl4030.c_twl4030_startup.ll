; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.twl4030_priv* }
%struct.twl4030_priv = type { %struct.snd_pcm_substream*, i64, %struct.snd_pcm_substream* }
%struct.snd_soc_dai = type { i32 }

@TWL4030_REG_CODEC_MODE = common dso_local global i32 0, align 4
@TWL4030_OPTION_1 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @twl4030_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca %struct.twl4030_priv*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %5, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_device*, %struct.snd_soc_device** %13, align 8
  store %struct.snd_soc_device* %14, %struct.snd_soc_device** %6, align 8
  %15 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %18, align 8
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %7, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 0
  %22 = load %struct.twl4030_priv*, %struct.twl4030_priv** %21, align 8
  store %struct.twl4030_priv* %22, %struct.twl4030_priv** %8, align 8
  %23 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %24 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %24, align 8
  %26 = icmp ne %struct.snd_pcm_substream* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %30 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %29, i32 0, i32 2
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %30, align 8
  %31 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %32 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %37 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %38 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %37, i32 0, i32 0
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %38, align 8
  %40 = call i32 @twl4030_constraints(%struct.twl4030_priv* %36, %struct.snd_pcm_substream* %39)
  br label %41

41:                                               ; preds = %35, %27
  br label %59

42:                                               ; preds = %2
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %44 = load i32, i32* @TWL4030_REG_CODEC_MODE, align 4
  %45 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %43, i32 %44)
  %46 = load i32, i32* @TWL4030_OPTION_1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %54 = call i32 @snd_pcm_hw_constraint_minmax(i32 %52, i32 %53, i32 2, i32 2)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = load %struct.twl4030_priv*, %struct.twl4030_priv** %8, align 8
  %58 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %57, i32 0, i32 0
  store %struct.snd_pcm_substream* %56, %struct.snd_pcm_substream** %58, align 8
  br label %59

59:                                               ; preds = %55, %41
  ret i32 0
}

declare dso_local i32 @twl4030_constraints(%struct.twl4030_priv*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
