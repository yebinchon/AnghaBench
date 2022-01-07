; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_in_channels_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_in_channels_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdsp* }
%struct.hdsp = type { i64, i32, i32, i32 }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdsp_hw_rule_in_channels_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_hw_rule_in_channels_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.hdsp*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca %struct.snd_interval, align 4
  %11 = alloca %struct.snd_interval, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %12 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %12, i32 0, i32 0
  %14 = load %struct.hdsp*, %struct.hdsp** %13, align 8
  store %struct.hdsp* %14, %struct.hdsp** %6, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %15, i32 %16)
  store %struct.snd_interval* %17, %struct.snd_interval** %7, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %20 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_interval* %20, %struct.snd_interval** %8, align 8
  %21 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 96000
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @H9632, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  %33 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  %37 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %38 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  store i32 1, i32* %40, align 4
  %41 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %42 = call i32 @snd_interval_refine(%struct.snd_interval* %41, %struct.snd_interval* %9)
  store i32 %42, i32* %3, align 4
  br label %85

43:                                               ; preds = %25, %2
  %44 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %45 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 48000
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 96000
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  %55 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %56 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %54, align 4
  %58 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  %59 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %60 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %58, align 4
  %62 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %64 = call i32 @snd_interval_refine(%struct.snd_interval* %63, %struct.snd_interval* %10)
  store i32 %64, i32* %3, align 4
  br label %85

65:                                               ; preds = %48, %43
  %66 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %67 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 64000
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %72 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %73 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %71, align 4
  %75 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %76 = load %struct.hdsp*, %struct.hdsp** %6, align 8
  %77 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %75, align 4
  %79 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 1, i32* %79, align 4
  %80 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %81 = call i32 @snd_interval_refine(%struct.snd_interval* %80, %struct.snd_interval* %11)
  store i32 %81, i32* %3, align 4
  br label %85

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %70, %53, %31
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
