; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32 }
%struct.cx25821_buffer = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.videobuf_dmabuf = type { i32 }

@VIDEOBUF_NEEDS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_free_buffer(%struct.videobuf_queue* %0, %struct.cx25821_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.cx25821_buffer*, align 8
  %5 = alloca %struct.videobuf_dmabuf*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.cx25821_buffer* %1, %struct.cx25821_buffer** %4, align 8
  %6 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %6, i32 0, i32 0
  %8 = call %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__* %7)
  store %struct.videobuf_dmabuf* %8, %struct.videobuf_dmabuf** %5, align 8
  %9 = call i32 (...) @in_interrupt()
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %11, i32 0, i32 0
  %13 = call i32 @videobuf_waiton(%struct.TYPE_3__* %12, i32 0, i32 0)
  %14 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %15 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %16 = call i32 @videobuf_dma_unmap(%struct.videobuf_queue* %14, %struct.videobuf_dmabuf* %15)
  %17 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %18 = call i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %17)
  %19 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %20 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @to_pci_dev(i32 %21)
  %23 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %23, i32 0, i32 1
  %25 = call i32 @btcx_riscmem_free(i32 %22, i32* %24)
  %26 = load i32, i32* @VIDEOBUF_NEEDS_INIT, align 4
  %27 = load %struct.cx25821_buffer*, %struct.cx25821_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.cx25821_buffer, %struct.cx25821_buffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  ret void
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @videobuf_waiton(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_unmap(%struct.videobuf_queue*, %struct.videobuf_dmabuf*) #1

declare dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf*) #1

declare dso_local i32 @btcx_riscmem_free(i32, i32*) #1

declare dso_local i32 @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
