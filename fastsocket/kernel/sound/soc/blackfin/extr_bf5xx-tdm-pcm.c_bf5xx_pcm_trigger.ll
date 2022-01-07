; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm-pcm.c_bf5xx_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.sport_device* }
%struct.sport_device = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @bf5xx_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.sport_device*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.sport_device*, %struct.sport_device** %12, align 8
  store %struct.sport_device* %13, %struct.sport_device** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %41 [
    i32 130, label %15
    i32 129, label %28
    i32 128, label %28
    i32 131, label %28
  ]

15:                                               ; preds = %2
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.sport_device*, %struct.sport_device** %6, align 8
  %23 = call i32 @sport_tx_start(%struct.sport_device* %22)
  br label %27

24:                                               ; preds = %15
  %25 = load %struct.sport_device*, %struct.sport_device** %6, align 8
  %26 = call i32 @sport_rx_start(%struct.sport_device* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %44

28:                                               ; preds = %2, %2, %2
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.sport_device*, %struct.sport_device** %6, align 8
  %36 = call i32 @sport_tx_stop(%struct.sport_device* %35)
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.sport_device*, %struct.sport_device** %6, align 8
  %39 = call i32 @sport_rx_stop(%struct.sport_device* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %40, %27
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @sport_tx_start(%struct.sport_device*) #1

declare dso_local i32 @sport_rx_start(%struct.sport_device*) #1

declare dso_local i32 @sport_tx_stop(%struct.sport_device*) #1

declare dso_local i32 @sport_rx_stop(%struct.sport_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
