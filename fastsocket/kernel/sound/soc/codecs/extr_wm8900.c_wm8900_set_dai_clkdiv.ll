; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8900_REG_CLOCKING1 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_BCLK_MASK = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_OPCLK_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO4 = common dso_local global i32 0, align 4
@WM8900_LRC_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO3 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2_DAC_CLKDIV = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2_ADC_CLKDIV = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL_AIF_LRCLKRATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8900_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %13, label %98 [
    i32 132, label %14
    i32 128, label %26
    i32 130, label %38
    i32 133, label %50
    i32 131, label %62
    i32 134, label %74
    i32 129, label %86
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %16 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %19 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_MASK, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %20, %23
  %25 = call i32 @snd_soc_write(%struct.snd_soc_codec* %18, i32 %19, i32 %24)
  br label %101

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %28 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %29 = call i32 @snd_soc_read(%struct.snd_soc_codec* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %31 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @WM8900_REG_CLOCKING1_OPCLK_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = call i32 @snd_soc_write(%struct.snd_soc_codec* %30, i32 %31, i32 %36)
  br label %101

38:                                               ; preds = %3
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %40 = load i32, i32* @WM8900_REG_AUDIO4, align 4
  %41 = call i32 @snd_soc_read(%struct.snd_soc_codec* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %43 = load i32, i32* @WM8900_REG_AUDIO4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @WM8900_LRC_MASK, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %44, %47
  %49 = call i32 @snd_soc_write(%struct.snd_soc_codec* %42, i32 %43, i32 %48)
  br label %101

50:                                               ; preds = %3
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %52 = load i32, i32* @WM8900_REG_AUDIO3, align 4
  %53 = call i32 @snd_soc_read(%struct.snd_soc_codec* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %55 = load i32, i32* @WM8900_REG_AUDIO3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @WM8900_LRC_MASK, align 4
  %59 = and i32 %57, %58
  %60 = or i32 %56, %59
  %61 = call i32 @snd_soc_write(%struct.snd_soc_codec* %54, i32 %55, i32 %60)
  br label %101

62:                                               ; preds = %3
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %64 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %65 = call i32 @snd_soc_read(%struct.snd_soc_codec* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %67 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @WM8900_REG_CLOCKING2_DAC_CLKDIV, align 4
  %71 = and i32 %69, %70
  %72 = or i32 %68, %71
  %73 = call i32 @snd_soc_write(%struct.snd_soc_codec* %66, i32 %67, i32 %72)
  br label %101

74:                                               ; preds = %3
  %75 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %76 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %77 = call i32 @snd_soc_read(%struct.snd_soc_codec* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %79 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @WM8900_REG_CLOCKING2_ADC_CLKDIV, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %80, %83
  %85 = call i32 @snd_soc_write(%struct.snd_soc_codec* %78, i32 %79, i32 %84)
  br label %101

86:                                               ; preds = %3
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %88 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %89 = call i32 @snd_soc_read(%struct.snd_soc_codec* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %91 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @WM8900_REG_DACCTRL_AIF_LRCLKRATE, align 4
  %95 = and i32 %93, %94
  %96 = or i32 %92, %95
  %97 = call i32 @snd_soc_write(%struct.snd_soc_codec* %90, i32 %91, i32 %96)
  br label %101

98:                                               ; preds = %3
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %86, %74, %62, %50, %38, %26, %14
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %98
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
