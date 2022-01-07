; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i32, %struct.snd_pcm_substream*, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@SB_DSP_OUTPUT = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SB_DSP_INPUT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_interrupt(%struct.snd_sb* %0) #0 {
  %2 = alloca %struct.snd_sb*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_sb* %0, %struct.snd_sb** %2, align 8
  %5 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %6 = call i32 @snd_sb_ack_8bit(%struct.snd_sb* %5)
  %7 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %8 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %48 [
    i32 128, label %10
    i32 129, label %29
  ]

10:                                               ; preds = %1
  %11 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  store %struct.snd_pcm_substream* %13, %struct.snd_pcm_substream** %3, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %4, align 8
  %17 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %18 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SB_DSP_OUTPUT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %25 = call i32 @snd_sb8_playback_trigger(%struct.snd_pcm_substream* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %10
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %27)
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %31 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %30, i32 0, i32 2
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %31, align 8
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %3, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %34, align 8
  store %struct.snd_pcm_runtime* %35, %struct.snd_pcm_runtime** %4, align 8
  %36 = load %struct.snd_sb*, %struct.snd_sb** %2, align 8
  %37 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SB_DSP_INPUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %43 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %44 = call i32 @snd_sb8_capture_trigger(%struct.snd_pcm_substream* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %46)
  br label %48

48:                                               ; preds = %1, %45, %26
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i32 @snd_sb_ack_8bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sb8_playback_trigger(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_sb8_capture_trigger(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
