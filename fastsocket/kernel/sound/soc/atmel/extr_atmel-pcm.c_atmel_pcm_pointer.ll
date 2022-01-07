; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.atmel_runtime_data* }
%struct.atmel_runtime_data = type { i64, %struct.atmel_pcm_dma_params* }
%struct.atmel_pcm_dma_params = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @atmel_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atmel_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.atmel_runtime_data*, align 8
  %5 = alloca %struct.atmel_pcm_dma_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %3, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %12, align 8
  store %struct.atmel_runtime_data* %13, %struct.atmel_runtime_data** %4, align 8
  %14 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %4, align 8
  %15 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %14, i32 0, i32 1
  %16 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %15, align 8
  store %struct.atmel_pcm_dma_params* %16, %struct.atmel_pcm_dma_params** %5, align 8
  %17 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atmel_pcm_dma_params*, %struct.atmel_pcm_dma_params** %5, align 8
  %23 = getelementptr inbounds %struct.atmel_pcm_dma_params, %struct.atmel_pcm_dma_params* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ssc_readx(i32 %21, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %28, i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i64, i64* %7, align 8
  ret i64 %42
}

declare dso_local i64 @ssc_readx(i32, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
