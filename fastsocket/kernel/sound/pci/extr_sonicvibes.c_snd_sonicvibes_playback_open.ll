; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sonicvibes.c_snd_sonicvibes_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_sonicvibes.c_snd_sonicvibes_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.sonicvibes = type { %struct.snd_pcm_substream*, i32 }

@SV_MODE_PLAY = common dso_local global i32 0, align 4
@snd_sonicvibes_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_sonicvibes_hw_constraint_dac_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sonicvibes_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.sonicvibes*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.sonicvibes* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.sonicvibes* %6, %struct.sonicvibes** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load i32, i32* @SV_MODE_PLAY, align 4
  %11 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %12 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = load %struct.sonicvibes*, %struct.sonicvibes** %3, align 8
  %17 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %16, i32 0, i32 0
  store %struct.snd_pcm_substream* %15, %struct.snd_pcm_substream** %17, align 8
  %18 = load i32, i32* @snd_sonicvibes_playback, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %23 = load i32, i32* @snd_sonicvibes_hw_constraint_dac_rate, align 4
  %24 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %25 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %21, i32 0, i32 %22, i32 %23, i32* null, i32 %24, i32 -1)
  ret i32 0
}

declare dso_local %struct.sonicvibes* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
