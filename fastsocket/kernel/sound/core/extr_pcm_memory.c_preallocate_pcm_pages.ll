; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_preallocate_pcm_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_preallocate_pcm_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@snd_minimum_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i64)* @preallocate_pcm_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preallocate_pcm_pages(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  store %struct.snd_dma_buffer* %9, %struct.snd_dma_buffer** %6, align 8
  %10 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @snd_dma_get_reserved_buf(%struct.snd_dma_buffer* %10, i32 %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %61

23:                                               ; preds = %16
  %24 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %25 = call i32 @snd_dma_free_pages(%struct.snd_dma_buffer* %24)
  %26 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %2
  br label %29

29:                                               ; preds = %54, %28
  %30 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %40 = call i32 @snd_dma_alloc_pages(i32 %33, i32 %37, i64 %38, %struct.snd_dma_buffer* %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %61

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %61

51:                                               ; preds = %49
  %52 = load i64, i64* %5, align 8
  %53 = lshr i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @snd_minimum_buffer, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %29, label %58

58:                                               ; preds = %54
  %59 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %50, %47, %22
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @snd_dma_get_reserved_buf(%struct.snd_dma_buffer*, i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.snd_dma_buffer*) #1

declare dso_local i32 @snd_dma_alloc_pages(i32, i32, i64, %struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
