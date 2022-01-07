; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_paif_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_paif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64 }

@WM8580_PAIF3 = common dso_local global i64 0, align 8
@WM8580_AIF_LENGTH_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_LENGTH_20 = common dso_local global i32 0, align 4
@WM8580_AIF_LENGTH_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8580_paif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_paif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %16, align 8
  store %struct.snd_soc_device* %17, %struct.snd_soc_device** %9, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %21, align 8
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %10, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %24 = load i64, i64* @WM8580_PAIF3, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @snd_soc_read(%struct.snd_soc_codec* %23, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @WM8580_AIF_LENGTH_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_format(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %49 [
    i32 131, label %36
    i32 130, label %37
    i32 129, label %41
    i32 128, label %45
  ]

36:                                               ; preds = %3
  br label %52

37:                                               ; preds = %3
  %38 = load i32, i32* @WM8580_AIF_LENGTH_20, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %52

41:                                               ; preds = %3
  %42 = load i32, i32* @WM8580_AIF_LENGTH_24, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %52

45:                                               ; preds = %3
  %46 = load i32, i32* @WM8580_AIF_LENGTH_24, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %45, %41, %37, %36
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %54 = load i64, i64* @WM8580_PAIF3, align 8
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @snd_soc_write(%struct.snd_soc_codec* %53, i64 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i64) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
