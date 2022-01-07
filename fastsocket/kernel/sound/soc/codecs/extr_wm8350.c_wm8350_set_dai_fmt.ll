; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8350_AI_FORMATING = common dso_local global i32 0, align 4
@WM8350_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM8350_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM8350_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8350_AI_DAC_CONTROL = common dso_local global i32 0, align 4
@WM8350_BCLK_MSTR = common dso_local global i32 0, align 4
@WM8350_DAC_LR_RATE = common dso_local global i32 0, align 4
@WM8350_DACLRC_ENA = common dso_local global i32 0, align 4
@WM8350_ADC_LR_RATE = common dso_local global i32 0, align 4
@WM8350_ADCLRC_ENA = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8350_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  store %struct.snd_soc_codec* %13, %struct.snd_soc_codec** %6, align 8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = load i32, i32* @WM8350_AI_FORMATING, align 4
  %16 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %14, i32 %15)
  %17 = load i32, i32* @WM8350_AIF_BCLK_INV, align 4
  %18 = load i32, i32* @WM8350_AIF_LRCLK_INV, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WM8350_AIF_FMT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %16, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %25 = load i32, i32* @WM8350_AI_DAC_CONTROL, align 4
  %26 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %24, i32 %25)
  %27 = load i32, i32* @WM8350_BCLK_MSTR, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %31 = load i32, i32* @WM8350_DAC_LR_RATE, align 4
  %32 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %30, i32 %31)
  %33 = load i32, i32* @WM8350_DACLRC_ENA, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %37 = load i32, i32* @WM8350_ADC_LR_RATE, align 4
  %38 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %36, i32 %37)
  %39 = load i32, i32* @WM8350_ADCLRC_ENA, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %56 [
    i32 138, label %45
    i32 137, label %55
  ]

45:                                               ; preds = %2
  %46 = load i32, i32* @WM8350_BCLK_MSTR, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @WM8350_DACLRC_ENA, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @WM8350_ADCLRC_ENA, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %2
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %120

59:                                               ; preds = %55, %45
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %78 [
    i32 134, label %63
    i32 128, label %66
    i32 131, label %67
    i32 136, label %70
    i32 135, label %73
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, 512
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %59
  br label %81

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 256
  store i32 %69, i32* %7, align 4
  br label %81

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 768
  store i32 %72, i32* %7, align 4
  br label %81

73:                                               ; preds = %59
  %74 = load i32, i32* @WM8350_AIF_LRCLK_INV, align 4
  %75 = or i32 768, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %81

78:                                               ; preds = %59
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %120

81:                                               ; preds = %73, %70, %67, %66, %63
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %84 = and i32 %82, %83
  switch i32 %84, label %100 [
    i32 129, label %85
    i32 133, label %86
    i32 132, label %92
    i32 130, label %96
  ]

85:                                               ; preds = %81
  br label %103

86:                                               ; preds = %81
  %87 = load i32, i32* @WM8350_AIF_LRCLK_INV, align 4
  %88 = load i32, i32* @WM8350_AIF_BCLK_INV, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %103

92:                                               ; preds = %81
  %93 = load i32, i32* @WM8350_AIF_BCLK_INV, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %103

96:                                               ; preds = %81
  %97 = load i32, i32* @WM8350_AIF_LRCLK_INV, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %103

100:                                              ; preds = %81
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %120

103:                                              ; preds = %96, %92, %86, %85
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %105 = load i32, i32* @WM8350_AI_FORMATING, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %104, i32 %105, i32 %106)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %109 = load i32, i32* @WM8350_AI_DAC_CONTROL, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %108, i32 %109, i32 %110)
  %112 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %113 = load i32, i32* @WM8350_DAC_LR_RATE, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %112, i32 %113, i32 %114)
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %117 = load i32, i32* @WM8350_ADC_LR_RATE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %116, i32 %117, i32 %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %103, %100, %78, %56
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @wm8350_codec_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8350_codec_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
