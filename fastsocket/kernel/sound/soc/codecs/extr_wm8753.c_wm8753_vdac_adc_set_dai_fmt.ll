; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_vdac_adc_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_vdac_adc_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8753_PCM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8753_vdac_adc_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_vdac_adc_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %6, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %12 = load i32, i32* @WM8753_PCM, align 4
  %13 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %11, i32 %12)
  %14 = and i32 %13, 492
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %31 [
    i32 130, label %18
    i32 128, label %21
    i32 129, label %22
    i32 132, label %25
    i32 131, label %28
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, 2
  store i32 %20, i32* %7, align 4
  br label %34

21:                                               ; preds = %2
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 3
  store i32 %27, i32* %7, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 19
  store i32 %30, i32* %7, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %39

34:                                               ; preds = %28, %25, %22, %21, %18
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %36 = load i32, i32* @WM8753_PCM, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @wm8753_write(%struct.snd_soc_codec* %35, i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
