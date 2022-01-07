; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8753_priv* }
%struct.wm8753_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8753_PCM = common dso_local global i32 0, align 4
@WM8753_SRATE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8753_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.wm8753_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %7, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %17, align 8
  store %struct.snd_soc_device* %18, %struct.snd_soc_device** %8, align 8
  %19 = load %struct.snd_soc_device*, %struct.snd_soc_device** %8, align 8
  %20 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %22, align 8
  store %struct.snd_soc_codec* %23, %struct.snd_soc_codec** %9, align 8
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 0
  %26 = load %struct.wm8753_priv*, %struct.wm8753_priv** %25, align 8
  store %struct.wm8753_priv* %26, %struct.wm8753_priv** %10, align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %28 = load i32, i32* @WM8753_PCM, align 4
  %29 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %27, i32 %28)
  %30 = and i32 %29, 499
  store i32 %30, i32* %11, align 4
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %32 = load i32, i32* @WM8753_SRATE1, align 4
  %33 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %31, i32 %32)
  %34 = and i32 %33, 383
  store i32 %34, i32* %12, align 4
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %36 = call i32 @params_format(%struct.snd_pcm_hw_params* %35)
  switch i32 %36, label %47 [
    i32 131, label %37
    i32 130, label %38
    i32 129, label %41
    i32 128, label %44
  ]

37:                                               ; preds = %3
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, 4
  store i32 %40, i32* %11, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, 8
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, 12
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %3, %44, %41, %38, %37
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @params_rate(%struct.snd_pcm_hw_params* %48)
  %50 = mul nsw i32 %49, 384
  %51 = load %struct.wm8753_priv*, %struct.wm8753_priv** %10, align 8
  %52 = getelementptr inbounds %struct.wm8753_priv, %struct.wm8753_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, 128
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %47
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %60 = load i32, i32* @WM8753_SRATE1, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @wm8753_write(%struct.snd_soc_codec* %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %64 = load i32, i32* @WM8753_PCM, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @wm8753_write(%struct.snd_soc_codec* %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
