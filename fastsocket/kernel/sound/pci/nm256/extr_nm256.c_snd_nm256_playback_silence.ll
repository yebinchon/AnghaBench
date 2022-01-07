; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_playback_silence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_playback_silence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.nm256_stream* }
%struct.nm256_stream = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i64)* @snd_nm256_playback_silence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_playback_silence(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca %struct.nm256_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %9, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.nm256_stream*, %struct.nm256_stream** %15, align 8
  store %struct.nm256_stream* %16, %struct.nm256_stream** %10, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %17, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.nm256_stream*, %struct.nm256_stream** %10, align 8
  %24 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @memset_io(i64 %27, i32 0, i64 %28)
  ret i32 0
}

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @memset_io(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
