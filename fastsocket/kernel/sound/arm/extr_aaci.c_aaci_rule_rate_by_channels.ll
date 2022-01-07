; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_rule_rate_by_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_rule_rate_by_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.aaci* }
%struct.aaci = type { i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_RATE_8000_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_5512 = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@ACSTREAM_LFE = common dso_local global i32 0, align 4
@ACSTREAM_SURROUND = common dso_local global i32 0, align 4
@ACSTREAM_FRONT = common dso_local global i32 0, align 4
@rate_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @aaci_rule_rate_by_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_rule_rate_by_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.aaci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %8, i32 0, i32 1
  %10 = load %struct.aaci*, %struct.aaci** %9, align 8
  store %struct.aaci* %10, %struct.aaci** %5, align 8
  %11 = load i32, i32* @SNDRV_PCM_RATE_8000_48000, align 4
  %12 = load i32, i32* @SNDRV_PCM_RATE_5512, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %7, align 8
  %17 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %18 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %38 [
    i32 6, label %20
    i32 4, label %26
    i32 2, label %32
  ]

20:                                               ; preds = %2
  %21 = load %struct.aaci*, %struct.aaci** %5, align 8
  %22 = load i32, i32* @ACSTREAM_LFE, align 4
  %23 = call i32 @aaci_rate_mask(%struct.aaci* %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %2, %20
  %27 = load %struct.aaci*, %struct.aaci** %5, align 8
  %28 = load i32, i32* @ACSTREAM_SURROUND, align 4
  %29 = call i32 @aaci_rate_mask(%struct.aaci* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %2, %26
  %33 = load %struct.aaci*, %struct.aaci** %5, align 8
  %34 = load i32, i32* @ACSTREAM_FRONT, align 4
  %35 = call i32 @aaci_rate_mask(%struct.aaci* %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %40 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %39, i32 %42)
  %44 = load i32, i32* @rate_list, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load i32, i32* @rate_list, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @snd_interval_list(%struct.snd_interval* %43, i32 %45, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @aaci_rate_mask(%struct.aaci*, i32) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
