; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_free_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_fsl_dma.c_fsl_dma_free_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*)* @fsl_dma_free_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dma_free_dma_buffers(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %9)
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %5
  %13 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %3, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = icmp ne %struct.snd_pcm_substream* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %12
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = call i32 @snd_dma_free_pages(%struct.TYPE_3__* %25)
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %23, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
