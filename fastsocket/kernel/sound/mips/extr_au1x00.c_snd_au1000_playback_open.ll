; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_au1x00.c_snd_au1000_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, %struct.snd_pcm_substream* }
%struct.TYPE_4__ = type { %struct.snd_au1000* }
%struct.snd_au1000 = type { %struct.TYPE_5__** }

@PLAYBACK = common dso_local global i64 0, align 8
@snd_au1000_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hw_constraints_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_au1000_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_au1000_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_au1000*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.snd_au1000*, %struct.snd_au1000** %7, align 8
  store %struct.snd_au1000* %8, %struct.snd_au1000** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %11 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %13 = load i64, i64* @PLAYBACK, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %16, align 8
  %17 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %18 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = load i64, i64* @PLAYBACK, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.snd_au1000*, %struct.snd_au1000** %3, align 8
  %25 = getelementptr inbounds %struct.snd_au1000, %struct.snd_au1000* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = load i64, i64* @PLAYBACK, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %27
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 1
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load i32, i32* @snd_au1000_hw, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %41 = call i64 @snd_pcm_hw_constraint_list(%struct.TYPE_6__* %39, i32 0, i32 %40, i32* @hw_constraints_rates)
  %42 = icmp slt i64 %41, 0
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @snd_pcm_hw_constraint_list(%struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
