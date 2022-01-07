; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8993_priv* }
%struct.wm8993_priv = type { i32 }

@WM8993_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_4 = common dso_local global i32 0, align 4
@WM8993_BCLK_DIR = common dso_local global i32 0, align 4
@WM8993_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM8993_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM8993_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8993_LRCLK_DIR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8993_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm8993_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 0
  %15 = load %struct.wm8993_priv*, %struct.wm8993_priv** %14, align 8
  store %struct.wm8993_priv* %15, %struct.wm8993_priv** %7, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %17 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %18 = call i32 @wm8993_read(%struct.snd_soc_codec* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %20 = load i32, i32* @WM8993_AUDIO_INTERFACE_4, align 4
  %21 = call i32 @wm8993_read(%struct.snd_soc_codec* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %23 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WM8993_AIF_FMT_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %63 [
    i32 137, label %39
    i32 138, label %42
    i32 139, label %48
    i32 140, label %54
  ]

39:                                               ; preds = %2
  %40 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %41 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %66

42:                                               ; preds = %2
  %43 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %47 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %66

48:                                               ; preds = %2
  %49 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %53 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %66

54:                                               ; preds = %2
  %55 = load i32, i32* @WM8993_BCLK_DIR, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @WM8993_LRCLK_DIR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.wm8993_priv*, %struct.wm8993_priv** %7, align 8
  %62 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %66

63:                                               ; preds = %2
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %139

66:                                               ; preds = %54, %48, %42, %39
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %84 [
    i32 135, label %70
    i32 136, label %74
    i32 134, label %77
    i32 128, label %80
    i32 131, label %81
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %66, %70
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, 24
  store i32 %76, i32* %8, align 4
  br label %87

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, 16
  store i32 %79, i32* %8, align 4
  br label %87

80:                                               ; preds = %66
  br label %87

81:                                               ; preds = %66
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, 8
  store i32 %83, i32* %8, align 4
  br label %87

84:                                               ; preds = %66
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %139

87:                                               ; preds = %81, %80, %77, %74
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %90 = and i32 %88, %89
  switch i32 %90, label %127 [
    i32 136, label %91
    i32 135, label %91
    i32 134, label %104
    i32 128, label %104
    i32 131, label %104
  ]

91:                                               ; preds = %87, %87
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %100 [
    i32 129, label %95
    i32 132, label %96
  ]

95:                                               ; preds = %91
  br label %103

96:                                               ; preds = %91
  %97 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %139

103:                                              ; preds = %96, %95
  br label %130

104:                                              ; preds = %87, %87, %87
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %107 = and i32 %105, %106
  switch i32 %107, label %123 [
    i32 129, label %108
    i32 133, label %109
    i32 132, label %115
    i32 130, label %119
  ]

108:                                              ; preds = %104
  br label %126

109:                                              ; preds = %104
  %110 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %111 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %126

115:                                              ; preds = %104
  %116 = load i32, i32* @WM8993_AIF_BCLK_INV, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %126

119:                                              ; preds = %104
  %120 = load i32, i32* @WM8993_AIF_LRCLK_INV, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %126

123:                                              ; preds = %104
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %139

126:                                              ; preds = %119, %115, %109, %108
  br label %130

127:                                              ; preds = %87
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %139

130:                                              ; preds = %126, %103
  %131 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %132 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @wm8993_write(%struct.snd_soc_codec* %131, i32 %132, i32 %133)
  %135 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %136 = load i32, i32* @WM8993_AUDIO_INTERFACE_4, align 4
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @wm8993_write(%struct.snd_soc_codec* %135, i32 %136, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %127, %123, %100, %84, %63
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @wm8993_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8993_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
