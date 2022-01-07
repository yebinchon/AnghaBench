; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.omap_runtime_data* }
%struct.omap_runtime_data = type { i32, i32, i32, %struct.omap_pcm_dma_data* }
%struct.omap_pcm_dma_data = type { i32 (%struct.snd_pcm_substream*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @omap_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.omap_runtime_data*, align 8
  %7 = alloca %struct.omap_pcm_dma_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %14, align 8
  store %struct.omap_runtime_data* %15, %struct.omap_runtime_data** %6, align 8
  %16 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %17 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %16, i32 0, i32 3
  %18 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %17, align 8
  store %struct.omap_pcm_dma_data* %18, %struct.omap_pcm_dma_data** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %20 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %19, i32 0, i32 1
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %49 [
    i32 130, label %24
    i32 131, label %24
    i32 132, label %24
    i32 129, label %42
    i32 128, label %42
    i32 133, label %42
  ]

24:                                               ; preds = %2, %2, %2
  %25 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %26 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %7, align 8
  %28 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %27, i32 0, i32 0
  %29 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %28, align 8
  %30 = icmp ne i32 (%struct.snd_pcm_substream*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.omap_pcm_dma_data*, %struct.omap_pcm_dma_data** %7, align 8
  %33 = getelementptr inbounds %struct.omap_pcm_dma_data, %struct.omap_pcm_dma_data* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %33, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 %34(%struct.snd_pcm_substream* %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %39 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @omap_start_dma(i32 %40)
  br label %52

42:                                               ; preds = %2, %2, %2
  %43 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %44 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %46 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @omap_stop_dma(i32 %47)
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %42, %37
  %53 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %6, align 8
  %54 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %53, i32 0, i32 1
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @omap_start_dma(i32) #1

declare dso_local i32 @omap_stop_dma(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
