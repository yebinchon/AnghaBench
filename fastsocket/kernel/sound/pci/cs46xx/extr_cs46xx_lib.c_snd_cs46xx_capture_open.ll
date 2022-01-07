; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream*, i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_cs46xx_capture = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@hw_constraints_period_sizes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs46xx_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs46xx_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_cs46xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %6 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_cs46xx* %6, %struct.snd_cs46xx** %4, align 8
  %7 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @snd_dma_pci_data(i32 %10)
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %14 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i64 @snd_dma_alloc_pages(i32 %7, i32 %11, i32 %12, i32* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %25, align 8
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_6__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.TYPE_6__* @snd_cs46xx_capture to i8*), i64 4, i1 false)
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %32 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %36
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %21
  %45 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %46 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %45, i32 0, i32 0
  %47 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %46, align 8
  %48 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %4, align 8
  %49 = call i32 %47(%struct.snd_cs46xx* %48, i32 1)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
