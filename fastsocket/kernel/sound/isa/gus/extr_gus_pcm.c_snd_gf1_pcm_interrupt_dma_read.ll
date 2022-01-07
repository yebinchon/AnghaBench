; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_interrupt_dma_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_interrupt_dma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i32*, i64, i32 }

@SNDRV_GF1_GB_REC_DMA_CONTROL = common dso_local global i32 0, align 4
@SNDRV_PCM_TRIGGER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_gus_card*)* @snd_gf1_pcm_interrupt_dma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_pcm_interrupt_dma_read(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %3 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %4 = load i32, i32* @SNDRV_GF1_GB_REC_DMA_CONTROL, align 4
  %5 = call i32 @snd_gf1_i_write8(%struct.snd_gus_card* %3, i32 %4, i32 0)
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %7 = load i32, i32* @SNDRV_GF1_GB_REC_DMA_CONTROL, align 4
  %8 = call i32 @snd_gf1_i_look8(%struct.snd_gus_card* %6, i32 %7)
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %10 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %15 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @snd_gf1_pcm_capture_prepare(i32* %16)
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @SNDRV_PCM_TRIGGER_START, align 4
  %22 = call i32 @snd_gf1_pcm_capture_trigger(i32* %20, i32 %21)
  %23 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %24 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %27 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %33 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @snd_pcm_period_elapsed(i32* %34)
  br label %36

36:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @snd_gf1_i_write8(%struct.snd_gus_card*, i32, i32) #1

declare dso_local i32 @snd_gf1_i_look8(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @snd_gf1_pcm_capture_prepare(i32*) #1

declare dso_local i32 @snd_gf1_pcm_capture_trigger(i32*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
