; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_atiixp_clear_dma_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_atiixp_clear_dma_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i64 }
%struct.atiixp_dma = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_modem*, %struct.atiixp_dma*, %struct.snd_pcm_substream*)* @atiixp_clear_dma_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_clear_dma_packets(%struct.atiixp_modem* %0, %struct.atiixp_dma* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.atiixp_modem*, align 8
  %5 = alloca %struct.atiixp_dma*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %4, align 8
  store %struct.atiixp_dma* %1, %struct.atiixp_dma** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %7 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %8 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %14 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %17 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = call i32 @writel(i32 0, i64 %21)
  %23 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %24 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %23, i32 0, i32 0
  %25 = call i32 @snd_dma_free_pages(%struct.TYPE_4__* %24)
  %26 = load %struct.atiixp_dma*, %struct.atiixp_dma** %5, align 8
  %27 = getelementptr inbounds %struct.atiixp_dma, %struct.atiixp_dma* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
