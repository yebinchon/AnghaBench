; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm.c_pxa2xx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.pxa2xx_pcm_client* }
%struct.TYPE_2__ = type { %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { i32 }
%struct.pxa2xx_pcm_client = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pxa2xx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa2xx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.pxa2xx_pcm_client*, align 8
  %4 = alloca %struct.pxa2xx_runtime_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %6, align 8
  store %struct.pxa2xx_pcm_client* %7, %struct.pxa2xx_pcm_client** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %11, align 8
  store %struct.pxa2xx_runtime_data* %12, %struct.pxa2xx_runtime_data** %4, align 8
  %13 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %4, align 8
  %14 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pxa_free_dma(i32 %15)
  %17 = load %struct.pxa2xx_pcm_client*, %struct.pxa2xx_pcm_client** %3, align 8
  %18 = getelementptr inbounds %struct.pxa2xx_pcm_client, %struct.pxa2xx_pcm_client* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.snd_pcm_substream*)**
  %20 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %19, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i32 %20(%struct.snd_pcm_substream* %21)
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = call i32 @__pxa2xx_pcm_close(%struct.snd_pcm_substream* %23)
  ret i32 %24
}

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @__pxa2xx_pcm_close(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
