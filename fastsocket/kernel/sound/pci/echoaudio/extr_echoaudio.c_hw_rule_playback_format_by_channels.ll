; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_hw_rule_playback_format_by_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_hw_rule_playback_format_by_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32 }
%struct.snd_interval = type { i32, i32 }
%struct.snd_mask = type { i32* }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S24_3LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @hw_rule_playback_format_by_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_rule_playback_format_by_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_mask*, align 8
  %8 = alloca %struct.snd_mask, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %12 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %11)
  store %struct.snd_interval* %12, %struct.snd_interval** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %15 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_mask* %15, %struct.snd_mask** %7, align 8
  %16 = call i32 @snd_mask_any(%struct.snd_mask* %8)
  %17 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %8, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %8, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 32
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %28 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  %33 = load i32, i32* @SNDRV_PCM_FMTBIT_S24_3LE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %68

39:                                               ; preds = %2
  %40 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %41 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %46 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_BE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %67

50:                                               ; preds = %39
  %51 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %52 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_BE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %66

65:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %84

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %8, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 32
  %77 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %8, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.snd_mask*, %struct.snd_mask** %7, align 8
  %83 = call i32 @snd_mask_refine(%struct.snd_mask* %82, %struct.snd_mask* %8)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %68, %65
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_any(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
