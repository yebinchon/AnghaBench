; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa2xx-i2s.c_pxa2xx_i2s_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SACR1_DRPL = common dso_local global i32 0, align 4
@SACR1 = common dso_local global i32 0, align 4
@SAIMR_TFS = common dso_local global i32 0, align 4
@SAIMR = common dso_local global i32 0, align 4
@SACR1_DREC = common dso_local global i32 0, align 4
@SAIMR_RFS = common dso_local global i32 0, align 4
@SACR0_ENB = common dso_local global i32 0, align 4
@SACR0 = common dso_local global i32 0, align 4
@clk_i2s = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @pxa2xx_i2s_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_i2s_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @SACR1_DRPL, align 4
  %12 = load i32, i32* @SACR1, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* @SACR1, align 4
  %14 = load i32, i32* @SAIMR_TFS, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* @SAIMR, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* @SAIMR, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @SACR1_DREC, align 4
  %20 = load i32, i32* @SACR1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @SACR1, align 4
  %22 = load i32, i32* @SAIMR_RFS, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @SAIMR, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @SAIMR, align 4
  br label %26

26:                                               ; preds = %18, %10
  %27 = load i32, i32* @SACR1, align 4
  %28 = load i32, i32* @SACR1_DREC, align 4
  %29 = load i32, i32* @SACR1_DRPL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @SACR1_DREC, align 4
  %33 = load i32, i32* @SACR1_DRPL, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %26
  %37 = load i32, i32* @SACR0_ENB, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @SACR0, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @SACR0, align 4
  %41 = call i32 (...) @pxa_i2s_wait()
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @clk_i2s, align 4
  %48 = call i32 @clk_disable(i32 %47)
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %46, %36
  br label %52

52:                                               ; preds = %51, %26
  ret void
}

declare dso_local i32 @pxa_i2s_wait(...) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
