; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/atmel/extr_atmel-pcm.c_atmel_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_soc_pcm_runtime*, %struct.snd_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.snd_pcm_runtime = type { i64, i64, %struct.atmel_runtime_data* }
%struct.atmel_runtime_data = type { i32, %struct.TYPE_6__*, i64, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@atmel_pcm_dma_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"atmel-pcm: hw_params: DMA for %s initialized (dma_bytes=%u, period_size=%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @atmel_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.atmel_runtime_data*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 2
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %12, align 8
  store %struct.atmel_runtime_data* %13, %struct.atmel_runtime_data** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %17, i32* %19)
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %22 = call i64 @params_buffer_bytes(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %32, i32 0, i32 1
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load i32, i32* @atmel_pcm_dma_irq, align 4
  %35 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %36 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %43 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %52 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %54 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %53)
  %55 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %56 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %58 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.atmel_runtime_data*, %struct.atmel_runtime_data** %6, align 8
  %66 = getelementptr inbounds %struct.atmel_runtime_data, %struct.atmel_runtime_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %64, i32 %67)
  ret i32 0
}

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i64 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
