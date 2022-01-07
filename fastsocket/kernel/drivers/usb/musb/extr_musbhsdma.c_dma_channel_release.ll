; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musbhsdma.c_dma_channel_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/musb/extr_musbhsdma.c_dma_channel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i64, %struct.musb_dma_channel* }
%struct.musb_dma_channel = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @dma_channel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_channel_release(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.musb_dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %4 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %5 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %4, i32 0, i32 2
  %6 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %5, align 8
  store %struct.musb_dma_channel* %6, %struct.musb_dma_channel** %3, align 8
  %7 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %8 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %3, align 8
  %10 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %3, align 8
  %14 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %3, align 8
  %19 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @MUSB_DMA_STATUS_UNKNOWN, align 4
  %25 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %26 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
