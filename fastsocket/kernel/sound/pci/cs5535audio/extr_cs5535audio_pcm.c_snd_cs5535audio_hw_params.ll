; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.cs5535audio_dma* }
%struct.cs5535audio_dma = type { i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.cs5535audio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_cs5535audio_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs5535audio_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.cs5535audio*, align 8
  %7 = alloca %struct.cs5535audio_dma*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.cs5535audio* %10, %struct.cs5535audio** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %14, align 8
  store %struct.cs5535audio_dma* %15, %struct.cs5535audio_dma** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %7, align 8
  %31 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %32)
  %34 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %7, align 8
  %35 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cs5535audio*, %struct.cs5535audio** %6, align 8
  %37 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %7, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = call i32 @params_periods(%struct.snd_pcm_hw_params* %39)
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %42 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %41)
  %43 = call i32 @cs5535audio_build_dma_packets(%struct.cs5535audio* %36, %struct.cs5535audio_dma* %37, %struct.snd_pcm_substream* %38, i32 %40, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %24
  %47 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %7, align 8
  %48 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %24
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @cs5535audio_build_dma_packets(%struct.cs5535audio*, %struct.cs5535audio_dma*, %struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
