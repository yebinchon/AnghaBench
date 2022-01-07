; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_ad1889_load_wave_buffer_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_ad1889_load_wave_buffer_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i32 }

@AD_DMA_WAVBA = common dso_local global i32 0, align 4
@AD_DMA_WAVCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ad1889*, i32)* @ad1889_load_wave_buffer_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1889_load_wave_buffer_address(%struct.snd_ad1889* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ad1889*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ad1889* %0, %struct.snd_ad1889** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %6 = load i32, i32* @AD_DMA_WAVBA, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ad1889_writel(%struct.snd_ad1889* %5, i32 %6, i32 %7)
  %9 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %10 = load i32, i32* @AD_DMA_WAVCA, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ad1889_writel(%struct.snd_ad1889* %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @ad1889_writel(%struct.snd_ad1889*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
