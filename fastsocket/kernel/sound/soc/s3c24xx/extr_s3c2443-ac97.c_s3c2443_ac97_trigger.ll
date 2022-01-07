; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.s3c24xx_pcm_dma_params = type { i32 }

@s3c24xx_ac97 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@S3C_AC97_GLBCTRL = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMINTM_DMA = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMOUTTM_DMA = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMINTM_MASK = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMOUTTM_MASK = common dso_local global i32 0, align 4
@S3C2410_DMAOP_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @s3c2443_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2443_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %8, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.s3c24xx_pcm_dma_params*
  %21 = getelementptr inbounds %struct.s3c24xx_pcm_dma_params, %struct.s3c24xx_pcm_dma_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %24 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %60 [
    i32 130, label %28
    i32 131, label %28
    i32 132, label %28
    i32 129, label %43
    i32 128, label %43
    i32 133, label %43
  ]

28:                                               ; preds = %3, %3, %3
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @S3C_AC97_GLBCTRL_PCMINTM_DMA, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @S3C_AC97_GLBCTRL_PCMOUTTM_DMA, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %60

43:                                               ; preds = %3, %3, %3
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* @S3C_AC97_GLBCTRL_PCMINTM_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %43
  %55 = load i32, i32* @S3C_AC97_GLBCTRL_PCMOUTTM_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %3, %59, %42
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %63 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %61, i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @S3C2410_DMAOP_STARTED, align 4
  %68 = call i32 @s3c2410_dma_ctrl(i32 %66, i32 %67)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c2410_dma_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
