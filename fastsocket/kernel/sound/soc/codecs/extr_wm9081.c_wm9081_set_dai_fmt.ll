; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm9081_priv* }
%struct.wm9081_priv = type { i32 }

@WM9081_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM9081_AIF_BCLK_INV = common dso_local global i32 0, align 4
@WM9081_AIF_LRCLK_INV = common dso_local global i32 0, align 4
@WM9081_BCLK_DIR = common dso_local global i32 0, align 4
@WM9081_LRCLK_DIR = common dso_local global i32 0, align 4
@WM9081_AIF_FMT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm9081_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.wm9081_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %6, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 0
  %14 = load %struct.wm9081_priv*, %struct.wm9081_priv** %13, align 8
  store %struct.wm9081_priv* %14, %struct.wm9081_priv** %7, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %16 = load i32, i32* @WM9081_AUDIO_INTERFACE_2, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %19 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WM9081_AIF_FMT_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %56 [
    i32 137, label %33
    i32 138, label %36
    i32 139, label %42
    i32 140, label %48
  ]

33:                                               ; preds = %2
  %34 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %35 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %59

36:                                               ; preds = %2
  %37 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %41 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %59

42:                                               ; preds = %2
  %43 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %47 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %59

48:                                               ; preds = %2
  %49 = load i32, i32* @WM9081_LRCLK_DIR, align 4
  %50 = load i32, i32* @WM9081_BCLK_DIR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.wm9081_priv*, %struct.wm9081_priv** %7, align 8
  %55 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %128

59:                                               ; preds = %48, %42, %36, %33
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %77 [
    i32 135, label %63
    i32 136, label %67
    i32 134, label %70
    i32 128, label %73
    i32 131, label %74
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %63
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, 3
  store i32 %69, i32* %8, align 4
  br label %80

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, 2
  store i32 %72, i32* %8, align 4
  br label %80

73:                                               ; preds = %59
  br label %80

74:                                               ; preds = %59
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %80

77:                                               ; preds = %59
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %128

80:                                               ; preds = %74, %73, %70, %67
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %120 [
    i32 136, label %84
    i32 135, label %84
    i32 134, label %97
    i32 128, label %97
    i32 131, label %97
  ]

84:                                               ; preds = %80, %80
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %93 [
    i32 129, label %88
    i32 132, label %89
  ]

88:                                               ; preds = %84
  br label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %128

96:                                               ; preds = %89, %88
  br label %123

97:                                               ; preds = %80, %80, %80
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %100 = and i32 %98, %99
  switch i32 %100, label %116 [
    i32 129, label %101
    i32 133, label %102
    i32 132, label %108
    i32 130, label %112
  ]

101:                                              ; preds = %97
  br label %119

102:                                              ; preds = %97
  %103 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %104 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %119

108:                                              ; preds = %97
  %109 = load i32, i32* @WM9081_AIF_BCLK_INV, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %119

112:                                              ; preds = %97
  %113 = load i32, i32* @WM9081_AIF_LRCLK_INV, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %119

116:                                              ; preds = %97
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %128

119:                                              ; preds = %112, %108, %102, %101
  br label %123

120:                                              ; preds = %80
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %128

123:                                              ; preds = %119, %96
  %124 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %125 = load i32, i32* @WM9081_AUDIO_INTERFACE_2, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @snd_soc_write(%struct.snd_soc_codec* %124, i32 %125, i32 %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %120, %116, %93, %77, %56
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
