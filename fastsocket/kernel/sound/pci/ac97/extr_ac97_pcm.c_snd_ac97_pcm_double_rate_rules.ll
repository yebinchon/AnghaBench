; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_double_rate_rules.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_pcm.c_snd_ac97_pcm_double_rate_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@double_rate_hw_constraint_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@double_rate_hw_constraint_channels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_pcm_double_rate_rules(%struct.snd_pcm_runtime* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %3, align 8
  %5 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %6 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %7 = load i32, i32* @double_rate_hw_constraint_rate, align 4
  %8 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %9 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %5, i32 0, i32 %6, i32 %7, i32* null, i32 %8, i32 -1)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = load i32, i32* @double_rate_hw_constraint_channels, align 4
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %19 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %15, i32 0, i32 %16, i32 %17, i32* null, i32 %18, i32 -1)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
