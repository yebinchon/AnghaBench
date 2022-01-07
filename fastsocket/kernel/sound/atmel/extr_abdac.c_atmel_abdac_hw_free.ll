; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_abdac.c_atmel_abdac_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_abdac = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DMA_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @atmel_abdac_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_abdac_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atmel_abdac*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.atmel_abdac* %5, %struct.atmel_abdac** %3, align 8
  %6 = load i32, i32* @DMA_READY, align 4
  %7 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %7, i32 0, i32 1
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.atmel_abdac*, %struct.atmel_abdac** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_abdac, %struct.atmel_abdac* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dw_dma_cyclic_free(i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %18)
  ret i32 %19
}

declare dso_local %struct.atmel_abdac* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dw_dma_cyclic_free(i32) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
