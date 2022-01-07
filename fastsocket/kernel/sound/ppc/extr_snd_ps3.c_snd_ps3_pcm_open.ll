; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/ppc/extr_snd_ps3.c_snd_ps3_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_ps3_card_info = type { i32, %struct.snd_pcm_substream* }

@snd_ps3_pcm_hw = common dso_local global i32 0, align 4
@snd_ps3_start_delay = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@PS3_AUDIO_FIFO_STAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ps3_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ps3_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_ps3_card_info*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = call %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_ps3_card_info* %10, %struct.snd_ps3_card_info** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %17, i32 0, i32 1
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %18, align 8
  %19 = load i32, i32* @snd_ps3_pcm_hw, align 4
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @snd_ps3_start_delay, align 4
  %23 = load %struct.snd_ps3_card_info*, %struct.snd_ps3_card_info** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ps3_card_info, %struct.snd_ps3_card_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = call i32 @snd_ps3_mute(i32 0)
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %28 = load i32, i32* @PS3_AUDIO_FIFO_STAGE_SIZE, align 4
  %29 = mul nsw i32 %28, 4
  %30 = mul nsw i32 %29, 2
  %31 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %26, i32 0, i32 %27, i32 %30)
  ret i32 0
}

declare dso_local %struct.snd_ps3_card_info* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ps3_mute(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
