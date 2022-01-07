; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_audio_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vidc.c_vidc_audio_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@DMA_ACTIVE = common dso_local global i32 0, align 4
@vidc_audio_dma_interrupt = common dso_local global i32 0, align 4
@dma_interrupt = common dso_local global i32 0, align 4
@DMA_CR_E = common dso_local global i32 0, align 4
@IOMD_SD0CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @vidc_audio_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidc_audio_trigger(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.audio_operations*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %7, i64 %9
  %11 = load %struct.audio_operations*, %struct.audio_operations** %10, align 8
  store %struct.audio_operations* %11, %struct.audio_operations** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %18 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DMA_ACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @local_irq_save(i64 %24)
  %26 = load i32, i32* @DMA_ACTIVE, align 4
  %27 = load %struct.audio_operations*, %struct.audio_operations** %5, align 8
  %28 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @vidc_audio_dma_interrupt, align 4
  store i32 %31, i32* @dma_interrupt, align 4
  %32 = call i32 @vidc_sound_dma_irq(i32 0, i32* null)
  %33 = load i32, i32* @DMA_CR_E, align 4
  %34 = or i32 %33, 16
  %35 = load i32, i32* @IOMD_SD0CR, align 4
  %36 = call i32 @iomd_writeb(i32 %34, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  br label %39

39:                                               ; preds = %23, %16
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @vidc_sound_dma_irq(i32, i32*) #1

declare dso_local i32 @iomd_writeb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
