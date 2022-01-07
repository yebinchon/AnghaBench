; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_init_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_dma_init_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buffparms = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64 }

@DMODE_NONE = common dso_local global i32 0, align 4
@DMA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buffparms*)* @dma_init_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_init_buffers(%struct.dma_buffparms* %0) #0 {
  %2 = alloca %struct.dma_buffparms*, align 8
  store %struct.dma_buffparms* %0, %struct.dma_buffparms** %2, align 8
  %3 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %4 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %3, i32 0, i32 12
  store i64 0, i64* %4, align 8
  %5 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %6 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %5, i32 0, i32 13
  store i64 0, i64* %6, align 8
  %7 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %8 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %7, i32 0, i32 14
  store i64 0, i64* %8, align 8
  %9 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %10 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %9, i32 0, i32 15
  store i64 0, i64* %10, align 8
  %11 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %12 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %11, i32 0, i32 11
  store i64 0, i64* %12, align 8
  %13 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %14 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %13, i32 0, i32 0
  store i32 28800000, i32* %14, align 8
  %15 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %16 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %19 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @DMODE_NONE, align 4
  %21 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %22 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %24 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %26 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %25, i32 0, i32 1
  store i32 128, i32* %26, align 4
  %27 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %28 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %27, i32 0, i32 2
  store i32 8000, i32* %28, align 8
  %29 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %30 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %29, i32 0, i32 3
  store i32 -1, i32* %30, align 4
  %31 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %32 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %34 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %33, i32 0, i32 4
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @DMA_BUSY, align 4
  %36 = load %struct.dma_buffparms*, %struct.dma_buffparms** %2, align 8
  %37 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
