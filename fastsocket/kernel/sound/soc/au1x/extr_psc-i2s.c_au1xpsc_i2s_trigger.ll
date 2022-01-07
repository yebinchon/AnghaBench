; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_i2s_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @au1xpsc_i2s_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.au1xpsc_audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_i2s_workdata, align 8
  store %struct.au1xpsc_audio_data* %10, %struct.au1xpsc_audio_data** %7, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 131, label %14
    i32 129, label %18
    i32 128, label %18
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @au1xpsc_i2s_start(%struct.au1xpsc_audio_data* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  br label %25

18:                                               ; preds = %3, %3
  %19 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @au1xpsc_i2s_stop(%struct.au1xpsc_audio_data* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %18, %14
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @SUBSTREAM_TYPE(%struct.snd_pcm_substream*) #1

declare dso_local i32 @au1xpsc_i2s_start(%struct.au1xpsc_audio_data*, i32) #1

declare dso_local i32 @au1xpsc_i2s_stop(%struct.au1xpsc_audio_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
