; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97-pcm.c_bf5xx_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-ac97-pcm.c_bf5xx_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.sport_device* }
%struct.sport_device = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@bf5xx_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @bf5xx_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.sport_device*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 3
  %10 = load %struct.sport_device*, %struct.sport_device** %9, align 8
  store %struct.sport_device* %10, %struct.sport_device** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %18 = load i32, i32* @bf5xx_dma_irq, align 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = call i32 @sport_set_tx_callback(%struct.sport_device* %17, i32 %18, %struct.snd_pcm_substream* %19)
  %21 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @sport_config_tx_dma(%struct.sport_device* %21, i32 %24, i32 %27, i32 %33)
  br label %54

35:                                               ; preds = %1
  %36 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %37 = load i32, i32* @bf5xx_dma_irq, align 4
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = call i32 @sport_set_rx_callback(%struct.sport_device* %36, i32 %37, %struct.snd_pcm_substream* %38)
  %40 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @sport_config_rx_dma(%struct.sport_device* %40, i32 %43, i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %35, %16
  ret i32 0
}

declare dso_local i32 @sport_set_tx_callback(%struct.sport_device*, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @sport_config_tx_dma(%struct.sport_device*, i32, i32, i32) #1

declare dso_local i32 @sport_set_rx_callback(%struct.sport_device*, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @sport_config_rx_dma(%struct.sport_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
