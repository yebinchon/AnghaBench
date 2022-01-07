; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_dai* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32*, %struct.snd_soc_dai* }

@clk_i2s = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@pxa2xx_i2s_pcm_stereo_out = common dso_local global i32 0, align 4
@pxa2xx_i2s_pcm_stereo_in = common dso_local global i32 0, align 4
@SACR0 = common dso_local global i32 0, align 4
@SACR0_ENB = common dso_local global i32 0, align 4
@pxa_i2s = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SACR0_BCKD = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SAIMR_TFS = common dso_local global i32 0, align 4
@SAIMR = common dso_local global i32 0, align 4
@SAIMR_RFS = common dso_local global i32 0, align 4
@SADIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pxa2xx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %7, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %8, align 8
  %17 = load i32, i32* @clk_i2s, align 4
  %18 = call i32 @IS_ERR(i32 %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @clk_i2s, align 4
  %21 = call i32 @clk_enable(i32 %20)
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %23, i32 0, i32 1
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %24, align 8
  %25 = call i32 (...) @pxa_i2s_wait()
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  store i32* @pxa2xx_i2s_pcm_stereo_out, i32** %33, align 8
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  store i32* @pxa2xx_i2s_pcm_stereo_in, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @SACR0, align 4
  %39 = load i32, i32* @SACR0_ENB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  store i32 0, i32* @SACR0, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pxa_i2s, i32 0, i32 1), align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @SACR0_BCKD, align 4
  %47 = load i32, i32* @SACR0, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* @SACR0, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = call i32 @SACR0_RFTH(i32 14)
  %51 = call i32 @SACR0_TFTH(i32 1)
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SACR0, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @SACR0, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pxa_i2s, i32 0, i32 0), align 8
  %56 = load i32, i32* @SACR1, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @SACR1, align 4
  br label %58

58:                                               ; preds = %49, %37
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @SAIMR_TFS, align 4
  %66 = load i32, i32* @SAIMR, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* @SAIMR, align 4
  br label %72

68:                                               ; preds = %58
  %69 = load i32, i32* @SAIMR_RFS, align 4
  %70 = load i32, i32* @SAIMR, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* @SAIMR, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %74 = call i32 @params_rate(%struct.snd_pcm_hw_params* %73)
  switch i32 %74, label %82 [
    i32 8000, label %75
    i32 11025, label %76
    i32 16000, label %77
    i32 22050, label %78
    i32 44100, label %79
    i32 48000, label %80
    i32 96000, label %81
  ]

75:                                               ; preds = %72
  store i32 72, i32* @SADIV, align 4
  br label %82

76:                                               ; preds = %72
  store i32 52, i32* @SADIV, align 4
  br label %82

77:                                               ; preds = %72
  store i32 36, i32* @SADIV, align 4
  br label %82

78:                                               ; preds = %72
  store i32 26, i32* @SADIV, align 4
  br label %82

79:                                               ; preds = %72
  store i32 13, i32* @SADIV, align 4
  br label %82

80:                                               ; preds = %72
  store i32 12, i32* @SADIV, align 4
  br label %82

81:                                               ; preds = %72
  store i32 6, i32* @SADIV, align 4
  br label %82

82:                                               ; preds = %72, %81, %80, %79, %78, %77, %76, %75
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pxa_i2s_wait(...) #1

declare dso_local i32 @SACR0_RFTH(i32) #1

declare dso_local i32 @SACR0_TFTH(i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
