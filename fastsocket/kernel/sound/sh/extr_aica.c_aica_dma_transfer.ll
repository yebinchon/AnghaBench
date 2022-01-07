; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.TYPE_2__* }
%struct.snd_pcm_runtime = type { i64 }
%struct.TYPE_2__ = type { %struct.snd_card_aica* }
%struct.snd_card_aica = type { i32 }

@AICA_PERIOD_NUMBER = common dso_local global i32 0, align 4
@AICA_DMA_CHANNEL = common dso_local global i32 0, align 4
@AICA_BUFFER_SIZE = common dso_local global i32 0, align 4
@AICA_PERIOD_SIZE = common dso_local global i32 0, align 4
@AICA_CHANNEL0_OFFSET = common dso_local global i64 0, align 8
@CHANNEL_OFFSET = common dso_local global i32 0, align 4
@AICA_DMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.snd_pcm_substream*)* @aica_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aica_dma_transfer(i32 %0, i32 %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_card_aica*, align 8
  %11 = alloca %struct.snd_pcm_runtime*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.snd_card_aica*, %struct.snd_card_aica** %16, align 8
  store %struct.snd_card_aica* %17, %struct.snd_card_aica** %10, align 8
  %18 = load %struct.snd_card_aica*, %struct.snd_card_aica** %10, align 8
  %19 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @AICA_PERIOD_NUMBER, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = srem i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  store %struct.snd_pcm_runtime* %28, %struct.snd_pcm_runtime** %11, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %81, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @local_irq_save(i64 %34)
  %36 = load i32, i32* @AICA_DMA_CHANNEL, align 4
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @AICA_BUFFER_SIZE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %39, %45
  %47 = load i32, i32* @AICA_PERIOD_SIZE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = load i64, i64* @AICA_CHANNEL0_OFFSET, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CHANNEL_OFFSET, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load i32, i32* @AICA_PERIOD_SIZE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32, i32* @AICA_DMA_MODE, align 4
  %67 = call i32 @dma_xfer(i32 %36, i64 %51, i64 %62, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %33
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  br label %84

76:                                               ; preds = %33
  %77 = load i32, i32* @AICA_DMA_CHANNEL, align 4
  %78 = call i32 @dma_wait_for_completion(i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @local_irq_restore(i64 %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %29

84:                                               ; preds = %73, %29
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @dma_xfer(i32, i64, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @dma_wait_for_completion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
