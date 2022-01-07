; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_priv = type { i32, i32, i32, %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twl4030_priv*, %struct.snd_pcm_substream*)* @twl4030_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_constraints(%struct.twl4030_priv* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.twl4030_priv*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.twl4030_priv* %0, %struct.twl4030_priv** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %7 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %8 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %7, i32 0, i32 3
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %10 = icmp eq %struct.snd_pcm_substream* %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %13 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %12, i32 0, i32 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %5, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %18 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %17, i32 0, i32 4
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %18, align 8
  %20 = icmp eq %struct.snd_pcm_substream* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %23 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %22, i32 0, i32 3
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %23, align 8
  store %struct.snd_pcm_substream* %24, %struct.snd_pcm_substream** %5, align 8
  br label %26

25:                                               ; preds = %15
  br label %61

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %32 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %33 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %36 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snd_pcm_hw_constraint_minmax(i32 %30, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %43 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %44 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %47 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_pcm_hw_constraint_minmax(i32 %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %54 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %55 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %58 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @snd_pcm_hw_constraint_minmax(i32 %52, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @snd_pcm_hw_constraint_minmax(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
