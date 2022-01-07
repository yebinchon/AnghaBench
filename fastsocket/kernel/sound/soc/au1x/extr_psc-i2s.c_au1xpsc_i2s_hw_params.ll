; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i64, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i64 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_i2s_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@PSC_I2SSTAT_TB = common dso_local global i64 0, align 8
@PSC_I2SSTAT_RB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @au1xpsc_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.au1xpsc_audio_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_i2s_workdata, align 8
  store %struct.au1xpsc_audio_data* %11, %struct.au1xpsc_audio_data** %8, align 8
  %12 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %13 = call i32 @I2S_STAT(%struct.au1xpsc_audio_data* %12)
  %14 = call i8* @au_readl(i32 %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @PSC_I2SSTAT_TB, align 8
  %18 = load i64, i64* @PSC_I2SSTAT_RB, align 8
  %19 = or i64 %17, %18
  %20 = and i64 %16, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %24 = call i32 @I2S_CFG(%struct.au1xpsc_audio_data* %23)
  %25 = call i8* @au_readl(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @PSC_I2SCFG_GET_LEN(i32 %27)
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %22
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i64 @params_rate(%struct.snd_pcm_hw_params* %34)
  %36 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %37 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %22
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %33
  br label %61

44:                                               ; preds = %3
  %45 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %46 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, -497
  store i32 %48, i32* %46, align 8
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PSC_I2SCFG_SET_LEN(i64 %51)
  %53 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %54 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %58 = call i64 @params_rate(%struct.snd_pcm_hw_params* %57)
  %59 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %8, align 8
  %60 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %44, %43
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i8* @au_readl(i32) #1

declare dso_local i32 @I2S_STAT(%struct.au1xpsc_audio_data*) #1

declare dso_local i32 @I2S_CFG(%struct.au1xpsc_audio_data*) #1

declare dso_local i64 @PSC_I2SCFG_GET_LEN(i32) #1

declare dso_local i64 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @PSC_I2SCFG_SET_LEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
