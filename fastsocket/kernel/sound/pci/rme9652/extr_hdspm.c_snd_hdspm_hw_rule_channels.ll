; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i32, i64 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdspm_hw_rule_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_hw_rule_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.hdspm*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %9 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %9, i32 0, i32 0
  %11 = load %struct.hdspm*, %struct.hdspm** %10, align 8
  store %struct.hdspm* %11, %struct.hdspm** %7, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %14 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %8, align 8
  %15 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %16 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %21 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %25 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %29 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %34 = call i32 @snd_interval_list(%struct.snd_interval* %32, i32 3, i32* %33, i32 0)
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.hdspm*, %struct.hdspm** %7, align 8
  %41 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %46 = call i32 @snd_interval_list(%struct.snd_interval* %44, i32 2, i32* %45, i32 0)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %35, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
