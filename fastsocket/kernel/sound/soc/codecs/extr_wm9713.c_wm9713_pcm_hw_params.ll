; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_CENTER_LFE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm9713_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %7, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %13 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %14 = call i32 @ac97_read(%struct.snd_soc_codec* %12, i32 %13)
  %15 = and i32 %14, 65523
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %17 = call i32 @params_format(%struct.snd_pcm_hw_params* %16)
  switch i32 %17, label %28 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %22
    i32 128, label %25
  ]

18:                                               ; preds = %3
  br label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 4
  store i32 %21, i32* %8, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, 8
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 12
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %3, %25, %22, %19, %18
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %30 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ac97_write(%struct.snd_soc_codec* %29, i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
