; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_dai_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_dai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsi_priv = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @fsi_dai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsi_priv*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = call %struct.fsi_priv* @fsi_get(%struct.snd_pcm_substream* %12)
  store %struct.fsi_priv* %13, %struct.fsi_priv** %8, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %9, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %54

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %52 [
    i32 129, label %30
    i32 128, label %46
  ]

30:                                               ; preds = %28
  %31 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %33, i32 %36)
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %38, i32 %41)
  %43 = call i32 @fsi_stream_push(%struct.fsi_priv* %31, %struct.snd_pcm_substream* %32, i32 %37, i32 %42)
  %44 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %45 = call i32 @fsi_data_push(%struct.fsi_priv* %44)
  store i32 %45, i32* %11, align 4
  br label %52

46:                                               ; preds = %28
  %47 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @fsi_irq_disable(%struct.fsi_priv* %47, i32 %48)
  %50 = load %struct.fsi_priv*, %struct.fsi_priv** %8, align 8
  %51 = call i32 @fsi_stream_pop(%struct.fsi_priv* %50)
  br label %52

52:                                               ; preds = %28, %46, %30
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %25
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.fsi_priv* @fsi_get(%struct.snd_pcm_substream*) #1

declare dso_local i32 @fsi_stream_push(%struct.fsi_priv*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @fsi_data_push(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_irq_disable(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_stream_pop(%struct.fsi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
