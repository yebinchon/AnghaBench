; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm.c_bf5xx_tdm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-tdm.c_bf5xx_tdm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@bf5xx_tdm = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sport_handle = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"not supported PCM format yet\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"SPORT is busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @bf5xx_tdm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_tdm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 0), align 4
  %10 = and i32 %9, -32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 1), align 4
  %12 = and i32 %11, -32
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 1), align 4
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_format(%struct.snd_pcm_hw_params* %13)
  switch i32 %14, label %22 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 0), align 4
  %17 = or i32 %16, 31
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 1), align 4
  %19 = or i32 %18, 31
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 1), align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  br label %26

22:                                               ; preds = %3
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %15
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 2), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 4), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 1), align 4
  %33 = call i32 @sport_config_rx(%struct.TYPE_5__* %30, i32 %31, i32 %32, i32 0, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 3), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 0), align 4
  %44 = call i32 @sport_config_tx(%struct.TYPE_5__* %41, i32 %42, i32 %43, i32 0, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %40
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_tdm, i32 0, i32 2), align 4
  br label %52

52:                                               ; preds = %51, %26
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %47, %36, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sport_config_rx(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @sport_config_tx(%struct.TYPE_5__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
