; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0.c_snd_intel8x0_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_intel8x0.c_snd_intel8x0_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel8x0 = type { i64, i64, i64, i64, i64, i32* }

@ICHD_PCMOUT = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@hw_constraints_channels8 = common dso_local global i32 0, align 4
@hw_constraints_channels6 = common dso_local global i32 0, align 4
@hw_constraints_channels4 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_intel8x0_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.intel8x0* %8, %struct.intel8x0** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %14 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @ICHD_PCMOUT, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @snd_intel8x0_pcm_open(%struct.snd_pcm_substream* %12, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %25 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 8, i32* %31, align 4
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %34 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %32, i32 0, i32 %33, i32* @hw_constraints_channels8)
  br label %61

35:                                               ; preds = %23
  %36 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %37 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 6, i32* %43, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %46 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %44, i32 0, i32 %45, i32* @hw_constraints_channels6)
  br label %60

47:                                               ; preds = %35
  %48 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %49 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 4, i32* %55, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %57 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %58 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %56, i32 0, i32 %57, i32* @hw_constraints_channels4)
  br label %59

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %28
  %62 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %63 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = call i32 @snd_ac97_pcm_double_rate_rules(%struct.snd_pcm_runtime* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %71 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  %81 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %82 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %81, i32 0, i32 32, i32 20)
  br label %83

83:                                               ; preds = %74, %69
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.intel8x0* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_intel8x0_pcm_open(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_ac97_pcm_double_rate_rules(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
