; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.i2c_client*, %struct.wm8903_priv* }
%struct.i2c_client = type { i32 }
%struct.wm8903_priv = type { %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, i32, i32 }
%struct.snd_soc_dai = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Constraining to %d bits\0A\00", align 1
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @wm8903_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca %struct.wm8903_priv*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %6, align 8
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %20, align 8
  store %struct.snd_soc_codec* %21, %struct.snd_soc_codec** %7, align 8
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %22, i32 0, i32 1
  %24 = load %struct.wm8903_priv*, %struct.wm8903_priv** %23, align 8
  store %struct.wm8903_priv* %24, %struct.wm8903_priv** %8, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %9, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %35 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %40 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %45 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %44, i32 0, i32 0
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %45, align 8
  %47 = icmp ne %struct.snd_pcm_substream* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %50 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %49, i32 0, i32 0
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %50, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 1
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %52, align 8
  store %struct.snd_pcm_runtime* %53, %struct.snd_pcm_runtime** %10, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 1
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %61, align 8
  %63 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %62, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %72 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %73 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %72, i32 0, i32 1
  store %struct.snd_pcm_substream* %71, %struct.snd_pcm_substream** %73, align 8
  br label %78

74:                                               ; preds = %43
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = load %struct.wm8903_priv*, %struct.wm8903_priv** %8, align 8
  %77 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %76, i32 0, i32 0
  store %struct.snd_pcm_substream* %75, %struct.snd_pcm_substream** %77, align 8
  br label %78

78:                                               ; preds = %74, %48
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
