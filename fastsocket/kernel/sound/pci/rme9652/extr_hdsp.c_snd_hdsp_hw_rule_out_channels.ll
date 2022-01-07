; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_out_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_hw_rule_out_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdsp* }
%struct.hdsp = type { i64, i32, i32, i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@H9632 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdsp_hw_rule_out_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_hw_rule_out_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.hdsp*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %9 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %9, i32 0, i32 0
  %11 = load %struct.hdsp*, %struct.hdsp** %10, align 8
  store %struct.hdsp* %11, %struct.hdsp** %7, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %14 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %8, align 8
  %15 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @H9632, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %22 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %26 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %30 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %35 = call i32 @snd_interval_list(%struct.snd_interval* %33, i32 3, i32* %34, i32 0)
  store i32 %35, i32* %3, align 4
  br label %49

36:                                               ; preds = %2
  %37 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %38 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hdsp*, %struct.hdsp** %7, align 8
  %42 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %48 = call i32 @snd_interval_list(%struct.snd_interval* %46, i32 2, i32* %47, i32 0)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
