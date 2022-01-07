; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8350_ADC_DIVIDER = common dso_local global i32 0, align 4
@WM8350_ADC_CLKDIV_MASK = common dso_local global i32 0, align 4
@WM8350_DAC_CLOCK_CONTROL = common dso_local global i32 0, align 4
@WM8350_DAC_CLKDIV_MASK = common dso_local global i32 0, align 4
@WM8350_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8350_OPCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8350_MCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8350_DAC_LR_RATE = common dso_local global i32 0, align 4
@WM8350_DACLRC_RATE_MASK = common dso_local global i32 0, align 4
@WM8350_ADC_LR_RATE = common dso_local global i32 0, align 4
@WM8350_ADCLRC_RATE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8350_set_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %105 [
    i32 133, label %14
    i32 130, label %27
    i32 132, label %40
    i32 129, label %53
    i32 128, label %66
    i32 131, label %79
    i32 134, label %92
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %16 = load i32, i32* @WM8350_ADC_DIVIDER, align 4
  %17 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %15, i32 %16)
  %18 = load i32, i32* @WM8350_ADC_CLKDIV_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %22 = load i32, i32* @WM8350_ADC_DIVIDER, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %21, i32 %22, i32 %25)
  br label %108

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %29 = load i32, i32* @WM8350_DAC_CLOCK_CONTROL, align 4
  %30 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %28, i32 %29)
  %31 = load i32, i32* @WM8350_DAC_CLKDIV_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %35 = load i32, i32* @WM8350_DAC_CLOCK_CONTROL, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %34, i32 %35, i32 %38)
  br label %108

40:                                               ; preds = %3
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %42 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %43 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %41, i32 %42)
  %44 = load i32, i32* @WM8350_BCLK_DIV_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %48 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %47, i32 %48, i32 %51)
  br label %108

53:                                               ; preds = %3
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %55 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %56 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %54, i32 %55)
  %57 = load i32, i32* @WM8350_OPCLK_DIV_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %61 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %60, i32 %61, i32 %64)
  br label %108

66:                                               ; preds = %3
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %68 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %69 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %67, i32 %68)
  %70 = load i32, i32* @WM8350_MCLK_DIV_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %74 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %73, i32 %74, i32 %77)
  br label %108

79:                                               ; preds = %3
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %81 = load i32, i32* @WM8350_DAC_LR_RATE, align 4
  %82 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %80, i32 %81)
  %83 = load i32, i32* @WM8350_DACLRC_RATE_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %87 = load i32, i32* @WM8350_DAC_LR_RATE, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %86, i32 %87, i32 %90)
  br label %108

92:                                               ; preds = %3
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %94 = load i32, i32* @WM8350_ADC_LR_RATE, align 4
  %95 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %93, i32 %94)
  %96 = load i32, i32* @WM8350_ADCLRC_RATE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  store i32 %98, i32* %9, align 4
  %99 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %100 = load i32, i32* @WM8350_ADC_LR_RATE, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %99, i32 %100, i32 %103)
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %92, %79, %66, %53, %40, %27, %14
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @wm8350_codec_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8350_codec_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
