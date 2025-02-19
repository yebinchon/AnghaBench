; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_dma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_memory.c_snd_pcm_lib_preallocate_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_pcm_lib_preallocate_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_lib_preallocate_dma_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %3 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %4 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @snd_dma_reserve_buf(%struct.TYPE_3__* %16, i64 %19)
  br label %25

21:                                               ; preds = %9
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = call i32 @snd_dma_free_pages(%struct.TYPE_3__* %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @snd_dma_reserve_buf(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
