; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_gus_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_GF1_GB_REC_DMA_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_gf1_pcm_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_gus_card*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_gus_card* %9, %struct.snd_gus_card** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %29 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %32 = load i32, i32* @SNDRV_GF1_GB_REC_DMA_CONTROL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @snd_gf1_write8(%struct.snd_gus_card* %31, i32 %32, i32 %33)
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %36 = load i32, i32* @SNDRV_GF1_GB_REC_DMA_CONTROL, align 4
  %37 = call i32 @snd_gf1_look8(%struct.snd_gus_card* %35, i32 %36)
  %38 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %39 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.snd_gus_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_gf1_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
