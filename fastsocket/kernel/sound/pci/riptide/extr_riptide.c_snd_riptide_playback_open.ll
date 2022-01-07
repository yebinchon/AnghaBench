; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.pcmhw*, i32 }
%struct.pcmhw = type { i32*, i32, i32, i32, i32 }
%struct.snd_riptide = type { %struct.snd_pcm_substream** }

@snd_riptide_playback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lbus_play_paths = common dso_local global i32* null, align 8
@play_ids = common dso_local global i32* null, align 8
@play_sources = common dso_local global i32* null, align 8
@ST_STOP = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.pcmhw*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_riptide* %8, %struct.snd_riptide** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %17 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, i64 %20
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %21, align 8
  %22 = load i32, i32* @snd_riptide_playback, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pcmhw* @kzalloc(i32 24, i32 %25)
  store %struct.pcmhw* %26, %struct.pcmhw** %5, align 8
  %27 = load i32*, i32** @lbus_play_paths, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %33 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** @play_ids, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %40 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** @play_sources, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %47 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %49 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 255, i32* %51, align 4
  %52 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %53 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 255, i32* %55, align 4
  %56 = load i32, i32* @ST_STOP, align 4
  %57 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %58 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pcmhw*, %struct.pcmhw** %5, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 0
  store %struct.pcmhw* %59, %struct.pcmhw** %61, align 8
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %63 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %64 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %62, i32 %63)
  ret i32 %64
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
