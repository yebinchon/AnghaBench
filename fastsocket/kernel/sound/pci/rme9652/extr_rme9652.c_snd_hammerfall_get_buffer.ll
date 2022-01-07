; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_hammerfall_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_rme9652.c_snd_hammerfall_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.snd_dma_buffer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.snd_dma_buffer*, i64)* @snd_hammerfall_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hammerfall_get_buffer(%struct.pci_dev* %0, %struct.snd_dma_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.snd_dma_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %9 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = call i32 @snd_dma_pci_data(%struct.pci_dev* %12)
  %14 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i32 @snd_dma_pci_buf_id(%struct.pci_dev* %18)
  %20 = call i64 @snd_dma_get_reserved_buf(%struct.snd_dma_buffer* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i32 @snd_dma_pci_data(%struct.pci_dev* %32)
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %6, align 8
  %36 = call i64 @snd_dma_alloc_pages(i32 %31, i32 %33, i64 %34, %struct.snd_dma_buffer* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @snd_dma_pci_data(%struct.pci_dev*) #1

declare dso_local i64 @snd_dma_get_reserved_buf(%struct.snd_dma_buffer*, i32) #1

declare dso_local i32 @snd_dma_pci_buf_id(%struct.pci_dev*) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i64, %struct.snd_dma_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
