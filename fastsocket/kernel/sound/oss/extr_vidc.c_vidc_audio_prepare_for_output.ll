; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_audio_prepare_for_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_audio_prepare_for_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@dma_interrupt = common dso_local global i32* null, align 8
@DMA_NODMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @vidc_audio_prepare_for_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidc_audio_prepare_for_output(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.audio_operations*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %8, i64 %10
  %12 = load %struct.audio_operations*, %struct.audio_operations** %11, align 8
  store %struct.audio_operations* %12, %struct.audio_operations** %7, align 8
  store i32* null, i32** @dma_interrupt, align 8
  %13 = load i32, i32* @DMA_NODMA, align 4
  %14 = load %struct.audio_operations*, %struct.audio_operations** %7, align 8
  %15 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
