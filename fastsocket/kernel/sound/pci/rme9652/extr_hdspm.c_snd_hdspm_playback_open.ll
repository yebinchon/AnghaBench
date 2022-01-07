; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.hdspm = type { i64, i32, %struct.snd_pcm_substream*, i32, i32* }

@snd_hdspm_playback_subinfo = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@hw_constraints_period_sizes = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@hdspm_hw_constraints_aes32_sample_rates = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_channels = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_channels_rate = common dso_local global i32 0, align 4
@snd_hdspm_hw_rule_rate_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_hdspm_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.hdspm* %6, %struct.hdspm** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %11 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load i32, i32* @snd_hdspm_playback_subinfo, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %19 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %24 = call i32 @hdspm_stop_audio(%struct.hdspm* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %30 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %33 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %32, i32 0, i32 2
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %33, align 8
  %34 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %35 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %38 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %37, i32 0, i32 32, i32 24)
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %41 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %39, i32 0, i32 %40, i32* @hw_constraints_period_sizes)
  %42 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %43 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %49 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %47, i32 0, i32 %48, i32* @hdspm_hw_constraints_aes32_sample_rates)
  br label %69

50:                                               ; preds = %25
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %52 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %53 = load i32, i32* @snd_hdspm_hw_rule_channels, align 4
  %54 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %55 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %56 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %51, i32 0, i32 %52, i32 %53, %struct.hdspm* %54, i32 %55, i32 -1)
  %57 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %58 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %59 = load i32, i32* @snd_hdspm_hw_rule_channels_rate, align 4
  %60 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %61 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %62 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %57, i32 0, i32 %58, i32 %59, %struct.hdspm* %60, i32 %61, i32 -1)
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %65 = load i32, i32* @snd_hdspm_hw_rule_rate_channels, align 4
  %66 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %68 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %63, i32 0, i32 %64, i32 %65, %struct.hdspm* %66, i32 %67, i32 -1)
  br label %69

69:                                               ; preds = %50, %46
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @hdspm_stop_audio(%struct.hdspm*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
