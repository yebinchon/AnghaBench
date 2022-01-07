; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_paif_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_paif_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8580_PAIF1 = common dso_local global i64 0, align 8
@WM8580_PAIF3 = common dso_local global i64 0, align 8
@WM8580_AIF_FMT_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_LRP = common dso_local global i32 0, align 4
@WM8580_AIF_BCP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_MS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_I2S = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_RIGHTJ = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_LEFTJ = common dso_local global i32 0, align 4
@WM8580_AIF_FMT_DSP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8580_set_paif_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_paif_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %14 = load i64, i64* @WM8580_PAIF1, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = call i32 @snd_soc_read(%struct.snd_soc_codec* %13, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %21 = load i64, i64* @WM8580_PAIF3, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @snd_soc_read(%struct.snd_soc_codec* %20, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @WM8580_AIF_FMT_MASK, align 4
  %28 = load i32, i32* @WM8580_AIF_LRP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WM8580_AIF_BCP, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %47 [
    i32 137, label %38
    i32 138, label %43
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* @WM8580_AIF_MS, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %50

43:                                               ; preds = %2
  %44 = load i32, i32* @WM8580_AIF_MS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %132

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %77 [
    i32 134, label %54
    i32 128, label %58
    i32 131, label %62
    i32 136, label %66
    i32 135, label %70
  ]

54:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %55 = load i32, i32* @WM8580_AIF_FMT_I2S, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %80

58:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %59 = load i32, i32* @WM8580_AIF_FMT_RIGHTJ, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %80

62:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %63 = load i32, i32* @WM8580_AIF_FMT_LEFTJ, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %80

66:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  %67 = load i32, i32* @WM8580_AIF_FMT_DSP, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %80

70:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  %71 = load i32, i32* @WM8580_AIF_FMT_DSP, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @WM8580_AIF_LRP, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %80

77:                                               ; preds = %50
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %132

80:                                               ; preds = %70, %66, %62, %58, %54
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %83 = and i32 %81, %82
  switch i32 %83, label %112 [
    i32 129, label %84
    i32 133, label %85
    i32 132, label %98
    i32 130, label %102
  ]

84:                                               ; preds = %80
  br label %115

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %132

91:                                               ; preds = %85
  %92 = load i32, i32* @WM8580_AIF_BCP, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @WM8580_AIF_LRP, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %115

98:                                               ; preds = %80
  %99 = load i32, i32* @WM8580_AIF_BCP, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %115

102:                                              ; preds = %80
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %132

108:                                              ; preds = %102
  %109 = load i32, i32* @WM8580_AIF_LRP, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %115

112:                                              ; preds = %80
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %132

115:                                              ; preds = %108, %98, %91, %84
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %117 = load i64, i64* @WM8580_PAIF1, align 8
  %118 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @snd_soc_write(%struct.snd_soc_codec* %116, i64 %121, i32 %122)
  %124 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %125 = load i64, i64* @WM8580_PAIF3, align 8
  %126 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @snd_soc_write(%struct.snd_soc_codec* %124, i64 %129, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %115, %112, %105, %88, %77, %47
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i64) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
