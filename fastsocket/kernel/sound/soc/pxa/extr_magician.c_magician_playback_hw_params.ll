; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_magician.c_magician_playback_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_magician.c_magician_playback_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@PXA_SSP_CLK_SCDB_4 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO_DIV_16 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO_DIV_8 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO_DIV_4 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO_DIV_2 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO_DIV_1 = common dso_local global i32 0, align 4
@PXA_SSP_CLK_SCDB_1 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MSB = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_IF = common dso_local global i32 0, align 4
@PXA_SSP_CLK_AUDIO = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@PXA_SSP_AUDIO_DIV_ACDS = common dso_local global i32 0, align 4
@PXA_SSP_AUDIO_DIV_SCDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @magician_playback_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magician_playback_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %6, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %21, align 8
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %7, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %26, align 8
  store %struct.snd_soc_dai* %27, %struct.snd_soc_dai** %8, align 8
  %28 = load i32, i32* @PXA_SSP_CLK_SCDB_4, align 4
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %30 = call i32 @params_rate(%struct.snd_pcm_hw_params* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %32 = call i32 @params_format(%struct.snd_pcm_hw_params* %31)
  %33 = call i32 @snd_pcm_format_physical_width(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %35 = call i32 @params_rate(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %72 [
    i32 8000, label %36
    i32 11025, label %43
    i32 22050, label %50
    i32 44100, label %57
    i32 48000, label %64
    i32 96000, label %71
  ]

36:                                               ; preds = %2
  store i32 32842000, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %40 [
    i32 16, label %38
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_16, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_8, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %80

43:                                               ; preds = %2
  store i32 5622000, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %47 [
    i32 16, label %45
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_4, align 4
  store i32 %46, i32* %10, align 4
  br label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_2, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %80

50:                                               ; preds = %2
  store i32 5622000, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %54 [
    i32 16, label %52
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_2, align 4
  store i32 %53, i32* %10, align 4
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_1, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %80

57:                                               ; preds = %2
  store i32 5622000, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %61 [
    i32 16, label %59
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_2, align 4
  store i32 %60, i32* %10, align 4
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_1, align 4
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %80

64:                                               ; preds = %2
  store i32 12235000, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %68 [
    i32 16, label %66
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_2, align 4
  store i32 %67, i32* %10, align 4
  br label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_1, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %80

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %2, %71
  store i32 12235000, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  switch i32 %73, label %76 [
    i32 16, label %74
  ]

74:                                               ; preds = %72
  %75 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_1, align 4
  store i32 %75, i32* %10, align 4
  br label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @PXA_SSP_CLK_AUDIO_DIV_2, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @PXA_SSP_CLK_SCDB_1, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %76, %74
  br label %80

80:                                               ; preds = %79, %70, %63, %56, %49, %42
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = load i32, i32* @SND_SOC_DAIFMT_MSB, align 4
  %83 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %81, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %3, align 4
  br label %148

92:                                               ; preds = %80
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %94 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_NB_IF, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %93, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %3, align 4
  br label %148

104:                                              ; preds = %92
  %105 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %105, i32 1, i32 0, i32 1, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %3, align 4
  br label %148

112:                                              ; preds = %104
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %114 = load i32, i32* @PXA_SSP_CLK_AUDIO, align 4
  %115 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %116 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %113, i32 %114, i32 0, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %3, align 4
  br label %148

121:                                              ; preds = %112
  %122 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %123 = load i32, i32* @PXA_SSP_AUDIO_DIV_ACDS, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %122, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %3, align 4
  br label %148

130:                                              ; preds = %121
  %131 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %132 = load i32, i32* @PXA_SSP_AUDIO_DIV_SCDB, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %131, i32 %132, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %3, align 4
  br label %148

139:                                              ; preds = %130
  %140 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %140, i32 0, i32 0, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %3, align 4
  br label %148

147:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %145, %137, %128, %119, %110, %102, %90
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
