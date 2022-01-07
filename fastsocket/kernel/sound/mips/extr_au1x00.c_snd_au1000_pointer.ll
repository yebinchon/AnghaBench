; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.audio_stream* }
%struct.snd_pcm_runtime = type { i32 }
%struct.audio_stream = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_au1000_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_au1000_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.audio_stream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.audio_stream*, %struct.audio_stream** %7, align 8
  store %struct.audio_stream* %8, %struct.audio_stream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %13 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %16 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @get_dma_residue(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %20 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.audio_stream*, %struct.audio_stream** %3, align 8
  %23 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %33, i64 %34)
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @get_dma_residue(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
