; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_reset_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_reset_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, %struct.dma_buffparms*, %struct.TYPE_2__*, i32 }
%struct.dma_buffparms = type { i32, i64, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@DMA_STARTED = common dso_local global i32 0, align 4
@DMA_SYNCING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@DMA_ACTIVE = common dso_local global i32 0, align 4
@DMA_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dma_reset_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_reset_output(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_operations*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dma_buffparms*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %7, i64 %9
  %11 = load %struct.audio_operations*, %struct.audio_operations** %10, align 8
  store %struct.audio_operations* %11, %struct.audio_operations** %3, align 8
  %12 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %13 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %12, i32 0, i32 1
  %14 = load %struct.dma_buffparms*, %struct.dma_buffparms** %13, align 8
  store %struct.dma_buffparms* %14, %struct.dma_buffparms** %6, align 8
  %15 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %16 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DMA_STARTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %148

22:                                               ; preds = %1
  %23 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %24 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* @DMA_SYNCING, align 4
  %28 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %29 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %28, i32 0, i32 1
  %30 = load %struct.dma_buffparms*, %struct.dma_buffparms** %29, align 8
  %31 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 8
  %34 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %35 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %34, i32 0, i32 1
  %36 = load %struct.dma_buffparms*, %struct.dma_buffparms** %35, align 8
  %37 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @current, align 4
  %39 = call i32 @signal_pending(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %22
  %42 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %43 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %42, i32 0, i32 1
  %44 = load %struct.dma_buffparms*, %struct.dma_buffparms** %43, align 8
  %45 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %50 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %49, i32 0, i32 1
  %51 = load %struct.dma_buffparms*, %struct.dma_buffparms** %50, align 8
  %52 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %57 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %56, i32 0, i32 2
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %61 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %60, i32 0, i32 3
  %62 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %63 = call i32 @dmabuf_timeout(%struct.dma_buffparms* %62)
  %64 = call i32 @interruptible_sleep_on_timeout(i32* %61, i32 %63)
  %65 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %66 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %65, i32 0, i32 2
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %55, %48, %41, %22
  %70 = load i32, i32* @DMA_SYNCING, align 4
  %71 = load i32, i32* @DMA_ACTIVE, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %75 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %74, i32 0, i32 1
  %76 = load %struct.dma_buffparms*, %struct.dma_buffparms** %75, align 8
  %77 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %73
  store i32 %79, i32* %77, align 8
  %80 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %81 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DMA_DUPLEX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %69
  %87 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %88 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = icmp ne i32 (i32)* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %86, %69
  %94 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %95 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32 (i32)*, i32 (i32)** %97, align 8
  %99 = load i32, i32* %2, align 4
  %100 = call i32 %98(i32 %99)
  br label %109

101:                                              ; preds = %86
  %102 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %103 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32 (i32)*, i32 (i32)** %105, align 8
  %107 = load i32, i32* %2, align 4
  %108 = call i32 %106(i32 %107)
  br label %109

109:                                              ; preds = %101, %93
  %110 = load i32, i32* @DMA_STARTED, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %113 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %112, i32 0, i32 1
  %114 = load %struct.dma_buffparms*, %struct.dma_buffparms** %113, align 8
  %115 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %116, %111
  store i32 %117, i32* %115, align 8
  %118 = call i64 (...) @claim_dma_lock()
  store i64 %118, i64* %5, align 8
  %119 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %120 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @clear_dma_ff(i32 %121)
  %123 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %124 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @disable_dma(i32 %125)
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @release_dma_lock(i64 %127)
  %129 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %130 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %129, i32 0, i32 7
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %2, align 4
  %132 = load %struct.audio_operations*, %struct.audio_operations** %3, align 8
  %133 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %132, i32 0, i32 1
  %134 = load %struct.dma_buffparms*, %struct.dma_buffparms** %133, align 8
  %135 = call i32 @reorganize_buffers(i32 %131, %struct.dma_buffparms* %134, i32 0)
  %136 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %137 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  %138 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %139 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %141 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %143 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %142, i32 0, i32 6
  store i64 0, i64* %143, align 8
  %144 = load %struct.dma_buffparms*, %struct.dma_buffparms** %6, align 8
  %145 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %144, i32 0, i32 2
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %109, %21
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @interruptible_sleep_on_timeout(i32*, i32) #1

declare dso_local i32 @dmabuf_timeout(%struct.dma_buffparms*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @reorganize_buffers(i32, %struct.dma_buffparms*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
