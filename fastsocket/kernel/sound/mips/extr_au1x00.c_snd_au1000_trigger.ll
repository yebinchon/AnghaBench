; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.audio_stream* }
%struct.audio_stream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_au1000_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_au1000_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_stream*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.audio_stream*, %struct.audio_stream** %8, align 8
  store %struct.audio_stream* %9, %struct.audio_stream** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %11 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %2
  %15 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %16 = call i32 @au1000_dma_start(%struct.audio_stream* %15)
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %19 = call i32 @au1000_dma_stop(%struct.audio_stream* %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17, %14
  %24 = load %struct.audio_stream*, %struct.audio_stream** %5, align 8
  %25 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @au1000_dma_start(%struct.audio_stream*) #1

declare dso_local i32 @au1000_dma_stop(%struct.audio_stream*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
