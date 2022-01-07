; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-ac97.c_au1xpsc_ac97_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i64, i64, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i64 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_ac97_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@PSC_AC97STAT_TB = common dso_local global i64 0, align 8
@PSC_AC97STAT_RB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSC_AC97CFG_LEN_MASK = common dso_local global i64 0, align 8
@PCM_TX = common dso_local global i32 0, align 4
@PSC_AC97CFG_TXSLOT_MASK = common dso_local global i64 0, align 8
@PSC_AC97CFG_RXSLOT_MASK = common dso_local global i64 0, align 8
@PSC_AC97CFG_DE_ENABLE = common dso_local global i64 0, align 8
@PSC_AC97STAT_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @au1xpsc_ac97_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_ac97_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.au1xpsc_audio_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_ac97_workdata, align 8
  store %struct.au1xpsc_audio_data* %14, %struct.au1xpsc_audio_data** %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = call i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_channels(%struct.snd_pcm_hw_params* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %20 = call i32 @AC97_CFG(%struct.au1xpsc_audio_data* %19)
  %21 = call i32 @au_readl(i32 %20)
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %10, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %24 = call i32 @AC97_STAT(%struct.au1xpsc_audio_data* %23)
  %25 = call i32 @au_readl(i32 %24)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @PSC_AC97STAT_TB, align 8
  %29 = load i64, i64* @PSC_AC97STAT_RB, align 8
  %30 = or i64 %28, %29
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %3
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @PSC_AC97CFG_GET_LEN(i64 %34)
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %42 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %45 = call i64 @params_rate(%struct.snd_pcm_hw_params* %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40, %33
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %148

50:                                               ; preds = %40
  br label %146

51:                                               ; preds = %3
  %52 = load i64, i64* @PSC_AC97CFG_LEN_MASK, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %9, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @PSC_AC97CFG_SET_LEN(i64 %58)
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @PCM_TX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %51
  %66 = load i64, i64* @PSC_AC97CFG_TXSLOT_MASK, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %9, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = call i64 @PSC_AC97CFG_TXSLOT_ENA(i32 3)
  %71 = load i64, i64* %9, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = call i64 @PSC_AC97CFG_TXSLOT_ENA(i32 4)
  %74 = load i64, i64* %9, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %87

76:                                               ; preds = %51
  %77 = load i64, i64* @PSC_AC97CFG_RXSLOT_MASK, align 8
  %78 = xor i64 %77, -1
  %79 = load i64, i64* %9, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %9, align 8
  %81 = call i64 @PSC_AC97CFG_RXSLOT_ENA(i32 3)
  %82 = load i64, i64* %9, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = call i64 @PSC_AC97CFG_RXSLOT_ENA(i32 4)
  %85 = load i64, i64* %9, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %76, %65
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = xor i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %147

93:                                               ; preds = %87
  %94 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %95 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %94, i32 0, i32 2
  %96 = call i32 @mutex_lock(i32* %95)
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @PSC_AC97CFG_DE_ENABLE, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  %101 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %102 = call i32 @AC97_CFG(%struct.au1xpsc_audio_data* %101)
  %103 = call i32 @au_writel(i64 %100, i32 %102)
  %104 = call i32 (...) @au_sync()
  br label %105

105:                                              ; preds = %112, %93
  %106 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %107 = call i32 @AC97_STAT(%struct.au1xpsc_audio_data* %106)
  %108 = call i32 @au_readl(i32 %107)
  %109 = load i32, i32* @PSC_AC97STAT_DR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %105

113:                                              ; preds = %105
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %116 = call i32 @AC97_CFG(%struct.au1xpsc_audio_data* %115)
  %117 = call i32 @au_writel(i64 %114, i32 %116)
  %118 = call i32 (...) @au_sync()
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @PSC_AC97CFG_DE_ENABLE, align 8
  %121 = or i64 %119, %120
  %122 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %123 = call i32 @AC97_CFG(%struct.au1xpsc_audio_data* %122)
  %124 = call i32 @au_writel(i64 %121, i32 %123)
  %125 = call i32 (...) @au_sync()
  br label %126

126:                                              ; preds = %134, %113
  %127 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %128 = call i32 @AC97_STAT(%struct.au1xpsc_audio_data* %127)
  %129 = call i32 @au_readl(i32 %128)
  %130 = load i32, i32* @PSC_AC97STAT_DR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %126

135:                                              ; preds = %126
  %136 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %137 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %141 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %143 = call i64 @params_rate(%struct.snd_pcm_hw_params* %142)
  %144 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %145 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %135, %50
  br label %147

147:                                              ; preds = %146, %92
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %47
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @AC97_CFG(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @AC97_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i64 @PSC_AC97CFG_GET_LEN(i64) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @PSC_AC97CFG_SET_LEN(i64) #1

declare dso_local i64 @PSC_AC97CFG_TXSLOT_ENA(i32) #1

declare dso_local i64 @PSC_AC97CFG_RXSLOT_ENA(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2381}
!3 = !{i32 2592}
