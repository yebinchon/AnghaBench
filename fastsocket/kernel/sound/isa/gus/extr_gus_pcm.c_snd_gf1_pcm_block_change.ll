; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_block_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_pcm.c_snd_gf1_pcm_block_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i32, %struct.gus_pcm_private* }
%struct.gus_pcm_private = type { i32, i32 }
%struct.snd_gf1_dma_block = type { i32, i32, i32, %struct.gus_pcm_private*, i64, i64, i32 }

@SNDRV_GF1_DMA_IRQ = common dso_local global i32 0, align 4
@SNDRV_GF1_DMA_UNSIGNED = common dso_local global i32 0, align 4
@SNDRV_GF1_DMA_16BIT = common dso_local global i32 0, align 4
@snd_gf1_pcm_block_change_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i32, i32)* @snd_gf1_pcm_block_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gf1_pcm_block_change(%struct.snd_pcm_substream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_gf1_dma_block, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca %struct.gus_pcm_private*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %10, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 3
  %17 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %16, align 8
  store %struct.gus_pcm_private* %17, %struct.gus_pcm_private** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 31
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -32
  store i32 %23, i32* %6, align 4
  %24 = call i32 @memset(%struct.snd_gf1_dma_block* %9, i32 0, i32 48)
  %25 = load i32, i32* @SNDRV_GF1_DMA_IRQ, align 4
  %26 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 6
  store i32 %25, i32* %26, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @snd_pcm_format_unsigned(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i32, i32* @SNDRV_GF1_DMA_UNSIGNED, align 4
  %34 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %32, %4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_pcm_format_width(i32 %40)
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @SNDRV_GF1_DMA_16BIT, align 4
  %45 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, -32
  %51 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 5
  store i64 %57, i64* %58, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 4
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %69 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 3
  store %struct.gus_pcm_private* %68, %struct.gus_pcm_private** %69, align 8
  %70 = load i32, i32* @snd_gf1_pcm_block_change_ack, align 4
  %71 = getelementptr inbounds %struct.snd_gf1_dma_block, %struct.snd_gf1_dma_block* %9, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %73 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_gf1_dma_transfer_block(i32 %74, %struct.snd_gf1_dma_block* %9, i32 0, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %48
  %78 = load %struct.gus_pcm_private*, %struct.gus_pcm_private** %11, align 8
  %79 = getelementptr inbounds %struct.gus_pcm_private, %struct.gus_pcm_private* %78, i32 0, i32 0
  %80 = call i32 @atomic_inc(i32* %79)
  br label %81

81:                                               ; preds = %77, %48
  ret i32 0
}

declare dso_local i32 @memset(%struct.snd_gf1_dma_block*, i32, i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_gf1_dma_transfer_block(i32, %struct.snd_gf1_dma_block*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
