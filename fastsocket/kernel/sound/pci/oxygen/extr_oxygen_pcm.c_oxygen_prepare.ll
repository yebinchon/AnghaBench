; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.oxygen = type { i32, i32 }

@OXYGEN_DMA_FLUSH = common dso_local global i32 0, align 4
@OXYGEN_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @oxygen_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.oxygen* %7, %struct.oxygen** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call i32 @oxygen_substream_channel(%struct.snd_pcm_substream* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %16 = load i32, i32* @OXYGEN_DMA_FLUSH, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @oxygen_set_bits8(%struct.oxygen* %15, i32 %16, i32 %17)
  %19 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %20 = load i32, i32* @OXYGEN_DMA_FLUSH, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @oxygen_clear_bits8(%struct.oxygen* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %29 = load i32, i32* @OXYGEN_INTERRUPT_MASK, align 4
  %30 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %31 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @oxygen_write16(%struct.oxygen* %28, i32 %29, i32 %32)
  %34 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  ret i32 0
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @oxygen_substream_channel(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @oxygen_set_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
