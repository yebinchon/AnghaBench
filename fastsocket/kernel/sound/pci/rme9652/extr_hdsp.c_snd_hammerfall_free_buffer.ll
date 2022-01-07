; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hammerfall_free_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/rme9652/extr_hdsp.c_snd_hammerfall_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dma_buffer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dma_buffer*, %struct.pci_dev*)* @snd_hammerfall_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hammerfall_free_buffer(%struct.snd_dma_buffer* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.snd_dma_buffer*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.snd_dma_buffer* %0, %struct.snd_dma_buffer** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %3, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @snd_dma_pci_buf_id(%struct.pci_dev* %14)
  %16 = call i32 @snd_dma_reserve_buf(%struct.snd_dma_buffer* %13, i32 %15)
  br label %17

17:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @snd_dma_reserve_buf(%struct.snd_dma_buffer*, i32) #1

declare dso_local i32 @snd_dma_pci_buf_id(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
