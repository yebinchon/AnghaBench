; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-i2s.c_bf5xx_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-i2s.c_bf5xx_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@bf5xx_i2s = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sport_handle = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"SPORT is busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @bf5xx_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %10 = and i32 %9, -32
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %12 = and i32 %11, -32
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %14 = call i32 @params_format(%struct.snd_pcm_hw_params* %13)
  switch i32 %14, label %36 [
    i32 130, label %15
    i32 129, label %22
    i32 128, label %29
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %17 = or i32 %16, 15
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %19 = or i32 %18, 15
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %24 = or i32 %23, 23
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %26 = or i32 %25, 23
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 3, i32* %28, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %31 = or i32 %30, 31
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %33 = or i32 %32, 31
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 4, i32* %35, align 4
  br label %36

36:                                               ; preds = %3, %29, %22, %15
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 2), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 2), align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 4), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 1), align 4
  %43 = call i32 @sport_config_rx(%struct.TYPE_5__* %40, i32 %41, i32 %42, i32 0, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %63

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sport_handle, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 3), align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bf5xx_i2s, i32 0, i32 0), align 4
  %54 = call i32 @sport_config_tx(%struct.TYPE_5__* %51, i32 %52, i32 %53, i32 0, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %36
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57, %46
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @sport_config_rx(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sport_config_tx(%struct.TYPE_5__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
