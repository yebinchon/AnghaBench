; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_params_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_params_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i32, %struct.loopback_pcm* }
%struct.loopback_pcm = type { %struct.loopback_cable* }
%struct.loopback_cable = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @params_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @params_change(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.loopback_pcm*, align 8
  %5 = alloca %struct.loopback_cable*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %9, i32 0, i32 3
  %11 = load %struct.loopback_pcm*, %struct.loopback_pcm** %10, align 8
  store %struct.loopback_pcm* %11, %struct.loopback_pcm** %4, align 8
  %12 = load %struct.loopback_pcm*, %struct.loopback_pcm** %4, align 8
  %13 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %12, i32 0, i32 0
  %14 = load %struct.loopback_cable*, %struct.loopback_cable** %13, align 8
  store %struct.loopback_cable* %14, %struct.loopback_cable** %5, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = shl i64 1, %17
  %19 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %20 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %26 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %32 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %38 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %44 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %47 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %53 = call i32 @params_change_substream(i32 %51, %struct.snd_pcm_runtime* %52)
  %54 = load %struct.loopback_cable*, %struct.loopback_cable** %5, align 8
  %55 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %61 = call i32 @params_change_substream(i32 %59, %struct.snd_pcm_runtime* %60)
  ret void
}

declare dso_local i32 @params_change_substream(i32, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
