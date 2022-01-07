; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-i2s.c_davinci_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-i2s.c_davinci_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { %struct.davinci_mcbsp_dev* }
%struct.davinci_mcbsp_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DAVINCI_MCBSP_PCR_FSXM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @davinci_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.davinci_mcbsp_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %12, align 8
  store %struct.davinci_mcbsp_dev* %13, %struct.davinci_mcbsp_dev** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %8, align 8
  %21 = getelementptr inbounds %struct.davinci_mcbsp_dev, %struct.davinci_mcbsp_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DAVINCI_MCBSP_PCR_FSXM, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %37 [
    i32 130, label %29
    i32 131, label %29
    i32 132, label %29
    i32 129, label %33
    i32 128, label %33
    i32 133, label %33
  ]

29:                                               ; preds = %27, %27, %27
  %30 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %8, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %32 = call i32 @davinci_mcbsp_start(%struct.davinci_mcbsp_dev* %30, %struct.snd_pcm_substream* %31)
  br label %40

33:                                               ; preds = %27, %27, %27
  %34 = load %struct.davinci_mcbsp_dev*, %struct.davinci_mcbsp_dev** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev* %34, i32 %35)
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %33, %29
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @davinci_mcbsp_start(%struct.davinci_mcbsp_dev*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @davinci_mcbsp_stop(%struct.davinci_mcbsp_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
