; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_reset_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_reset_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, %struct.dma_buffparms*, %struct.TYPE_2__* }
%struct.dma_buffparms = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_DUPLEX = common dso_local global i32 0, align 4
@DMA_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dma_reset_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_reset_input(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_operations*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dma_buffparms*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %6, i64 %8
  %10 = load %struct.audio_operations*, %struct.audio_operations** %9, align 8
  store %struct.audio_operations* %10, %struct.audio_operations** %3, align 8
  %11 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %12 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %11, i32 0, i32 1
  %13 = load %struct.dma_buffparms*, %struct.dma_buffparms** %12, align 8
  store %struct.dma_buffparms* %13, %struct.dma_buffparms** %5, align 8
  %14 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %15 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %19 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DMA_DUPLEX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %26 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %33 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 %36(i32 %37)
  br label %47

39:                                               ; preds = %24
  %40 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %41 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call i32 %44(i32 %45)
  br label %47

47:                                               ; preds = %39, %31
  %48 = load i32, i32* @DMA_STARTED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %51 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %50, i32 0, i32 1
  %52 = load %struct.dma_buffparms*, %struct.dma_buffparms** %51, align 8
  %53 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %49
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %57 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %59 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %61 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %63 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %65 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %68 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %67, i32 0, i32 1
  %69 = load %struct.dma_buffparms*, %struct.dma_buffparms** %68, align 8
  %70 = call i32 @reorganize_buffers(i32 %66, %struct.dma_buffparms* %69, i32 1)
  %71 = load %struct.dma_buffparms*, %struct.dma_buffparms** %5, align 8
  %72 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %71, i32 0, i32 0
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reorganize_buffers(i32, %struct.dma_buffparms*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
