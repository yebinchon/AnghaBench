; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_es18xx = type { i32 }

@ES18XX_PCM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_es18xx* %6, %struct.snd_es18xx** %4, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %13 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ES18XX_PCM2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = call i32 @snd_es18xx_playback1_prepare(%struct.snd_es18xx* %19, %struct.snd_pcm_substream* %20)
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %11, %1
  %23 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = call i32 @snd_es18xx_playback2_prepare(%struct.snd_es18xx* %23, %struct.snd_pcm_substream* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_playback1_prepare(%struct.snd_es18xx*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_playback2_prepare(%struct.snd_es18xx*, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
