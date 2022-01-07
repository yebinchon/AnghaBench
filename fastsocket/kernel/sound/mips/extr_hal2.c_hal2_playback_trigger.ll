; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_hal2.c_hal2_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_pcm_substream*)* }
%struct.snd_hal2 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @hal2_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hal2_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_hal2*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_hal2* %8, %struct.snd_hal2** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %35 [
    i32 129, label %10
    i32 128, label %32
  ]

10:                                               ; preds = %2
  %11 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %12 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %16 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  %19 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %20 = getelementptr inbounds %struct.snd_hal2, %struct.snd_hal2* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %26, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = call i32 %27(%struct.snd_pcm_substream* %28)
  %30 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %31 = call i32 @hal2_start_dac(%struct.snd_hal2* %30)
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.snd_hal2*, %struct.snd_hal2** %6, align 8
  %34 = call i32 @hal2_stop_dac(%struct.snd_hal2* %33)
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %32, %10
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.snd_hal2* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @hal2_start_dac(%struct.snd_hal2*) #1

declare dso_local i32 @hal2_stop_dac(%struct.snd_hal2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
