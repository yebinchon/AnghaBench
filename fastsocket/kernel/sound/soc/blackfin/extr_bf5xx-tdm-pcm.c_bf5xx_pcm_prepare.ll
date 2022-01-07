; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.sport_device* }
%struct.sport_device = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@bf5xx_dma_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @bf5xx_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.sport_device*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %9, i32 0, i32 4
  %11 = load %struct.sport_device*, %struct.sport_device** %10, align 8
  store %struct.sport_device* %11, %struct.sport_device** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %31 = load i32, i32* @bf5xx_dma_irq, align 4
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = call i32 @sport_set_tx_callback(%struct.sport_device* %30, i32 %31, %struct.snd_pcm_substream* %32)
  %34 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @sport_config_tx_dma(%struct.sport_device* %34, i32 %37, i32 %40, i32 %41)
  br label %57

43:                                               ; preds = %1
  %44 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %45 = load i32, i32* @bf5xx_dma_irq, align 4
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %47 = call i32 @sport_set_rx_callback(%struct.sport_device* %44, i32 %45, %struct.snd_pcm_substream* %46)
  %48 = load %struct.sport_device*, %struct.sport_device** %4, align 8
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @sport_config_rx_dma(%struct.sport_device* %48, i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %29
  ret i32 0
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

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
