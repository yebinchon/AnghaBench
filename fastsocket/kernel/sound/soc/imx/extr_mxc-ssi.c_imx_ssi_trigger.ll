; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/imx/extr_mxc-ssi.c_imx_ssi_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/imx/extr_mxc-ssi.c_imx_ssi_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64 }

@IMX_DAI_SSI0 = common dso_local global i64 0, align 8
@IMX_DAI_SSI2 = common dso_local global i64 0, align 8
@SSI1_SCR = common dso_local global i32 0, align 4
@SSI2_SCR = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SSI_SCR_TE = common dso_local global i32 0, align 4
@SSI_SCR_SSIEN = common dso_local global i32 0, align 4
@SSI_SCR_RE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @imx_ssi_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ssi_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %17, align 8
  store %struct.snd_soc_dai* %18, %struct.snd_soc_dai** %9, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IMX_DAI_SSI0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IMX_DAI_SSI2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @SSI1_SCR, align 4
  store i32 %31, i32* %10, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @SSI2_SCR, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %72 [
    i32 130, label %36
    i32 131, label %36
    i32 132, label %36
    i32 128, label %55
    i32 129, label %55
    i32 133, label %55
  ]

36:                                               ; preds = %34, %34, %34
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @SSI_SCR_TE, align 4
  %44 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %54

48:                                               ; preds = %36
  %49 = load i32, i32* @SSI_SCR_RE, align 4
  %50 = load i32, i32* @SSI_SCR_SSIEN, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %75

55:                                               ; preds = %34, %34, %34
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* @SSI_SCR_TE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %71

66:                                               ; preds = %55
  %67 = load i32, i32* @SSI_SCR_RE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %75

72:                                               ; preds = %34
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %92

75:                                               ; preds = %71, %54
  %76 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %77 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IMX_DAI_SSI0, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IMX_DAI_SSI2, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* @SSI1_SCR, align 4
  br label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* @SSI2_SCR, align 4
  br label %91

91:                                               ; preds = %89, %87
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %72
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
