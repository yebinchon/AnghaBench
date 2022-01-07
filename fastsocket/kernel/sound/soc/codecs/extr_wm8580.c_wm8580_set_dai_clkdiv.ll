; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8580_PLLB4 = common dso_local global i32 0, align 4
@WM8580_PLLB4_MCLKOUTSRC_MASK = common dso_local global i32 0, align 4
@WM8580_PLLB4_MCLKOUTSRC_PLLA = common dso_local global i32 0, align 4
@WM8580_PLLB4_MCLKOUTSRC_PLLB = common dso_local global i32 0, align 4
@WM8580_PLLB4_MCLKOUTSRC_OSC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8580_CLKSEL = common dso_local global i32 0, align 4
@WM8580_CLKSEL_DAC_CLKSEL_MASK = common dso_local global i32 0, align 4
@WM8580_CLKSEL_DAC_CLKSEL_PLLA = common dso_local global i32 0, align 4
@WM8580_CLKSEL_DAC_CLKSEL_PLLB = common dso_local global i32 0, align 4
@WM8580_PLLB4_CLKOUTSRC_MASK = common dso_local global i32 0, align 4
@WM8580_PLLB4_CLKOUTSRC_PLLACLK = common dso_local global i32 0, align 4
@WM8580_PLLB4_CLKOUTSRC_PLLBCLK = common dso_local global i32 0, align 4
@WM8580_PLLB4_CLKOUTSRC_OSCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8580_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %13, label %100 [
    i32 128, label %14
    i32 129, label %44
    i32 135, label %70
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %16 = load i32, i32* @WM8580_PLLB4, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @WM8580_PLLB4_MCLKOUTSRC_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %36 [
    i32 134, label %23
    i32 131, label %24
    i32 130, label %28
    i32 132, label %32
  ]

23:                                               ; preds = %14
  br label %39

24:                                               ; preds = %14
  %25 = load i32, i32* @WM8580_PLLB4_MCLKOUTSRC_PLLA, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %39

28:                                               ; preds = %14
  %29 = load i32, i32* @WM8580_PLLB4_MCLKOUTSRC_PLLB, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %14
  %33 = load i32, i32* @WM8580_PLLB4_MCLKOUTSRC_OSC, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %39

36:                                               ; preds = %14
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %104

39:                                               ; preds = %32, %28, %24, %23
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %41 = load i32, i32* @WM8580_PLLB4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @snd_soc_write(%struct.snd_soc_codec* %40, i32 %41, i32 %42)
  br label %103

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %46 = load i32, i32* @WM8580_CLKSEL, align 4
  %47 = call i32 @snd_soc_read(%struct.snd_soc_codec* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @WM8580_CLKSEL_DAC_CLKSEL_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %62 [
    i32 134, label %53
    i32 131, label %54
    i32 130, label %58
  ]

53:                                               ; preds = %44
  br label %65

54:                                               ; preds = %44
  %55 = load i32, i32* @WM8580_CLKSEL_DAC_CLKSEL_PLLA, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %65

58:                                               ; preds = %44
  %59 = load i32, i32* @WM8580_CLKSEL_DAC_CLKSEL_PLLB, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %104

65:                                               ; preds = %58, %54, %53
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %67 = load i32, i32* @WM8580_CLKSEL, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @snd_soc_write(%struct.snd_soc_codec* %66, i32 %67, i32 %68)
  br label %103

70:                                               ; preds = %3
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %72 = load i32, i32* @WM8580_PLLB4, align 4
  %73 = call i32 @snd_soc_read(%struct.snd_soc_codec* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @WM8580_PLLB4_CLKOUTSRC_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  switch i32 %78, label %92 [
    i32 133, label %79
    i32 131, label %80
    i32 130, label %84
    i32 132, label %88
  ]

79:                                               ; preds = %70
  br label %95

80:                                               ; preds = %70
  %81 = load i32, i32* @WM8580_PLLB4_CLKOUTSRC_PLLACLK, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %95

84:                                               ; preds = %70
  %85 = load i32, i32* @WM8580_PLLB4_CLKOUTSRC_PLLBCLK, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %95

88:                                               ; preds = %70
  %89 = load i32, i32* @WM8580_PLLB4_CLKOUTSRC_OSCCLK, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %95

92:                                               ; preds = %70
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %104

95:                                               ; preds = %88, %84, %80, %79
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %97 = load i32, i32* @WM8580_PLLB4, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @snd_soc_write(%struct.snd_soc_codec* %96, i32 %97, i32 %98)
  br label %103

100:                                              ; preds = %3
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %104

103:                                              ; preds = %95, %65, %39
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %100, %92, %62, %36
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
