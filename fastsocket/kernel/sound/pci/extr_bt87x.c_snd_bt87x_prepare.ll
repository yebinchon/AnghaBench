; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_bt87x.c_snd_bt87x_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64 }
%struct.snd_bt87x = type { i32, i32 }

@CTL_DA_SDR_MASK = common dso_local global i32 0, align 4
@CTL_DA_SBR = common dso_local global i32 0, align 4
@ANALOG_CLOCK = common dso_local global i32 0, align 4
@CTL_DA_SDR_SHIFT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S8 = common dso_local global i64 0, align 8
@REG_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bt87x_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_bt87x*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_bt87x* %7, %struct.snd_bt87x** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %12 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* @CTL_DA_SDR_MASK, align 4
  %15 = load i32, i32* @CTL_DA_SBR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %19 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @ANALOG_CLOCK, align 4
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 4
  %27 = add nsw i32 %22, %26
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CTL_DA_SDR_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %36 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SNDRV_PCM_FORMAT_S8, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i32, i32* @CTL_DA_SBR, align 4
  %46 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %47 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %1
  %51 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %52 = load i32, i32* @REG_GPIO_DMA_CTL, align 4
  %53 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %54 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %51, i32 %52, i32 %55)
  %57 = load %struct.snd_bt87x*, %struct.snd_bt87x** %3, align 8
  %58 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_irq(i32* %58)
  ret i32 0
}

declare dso_local %struct.snd_bt87x* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_bt87x_writel(%struct.snd_bt87x*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
