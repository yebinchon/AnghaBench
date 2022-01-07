; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via82xx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.viadev* }
%struct.viadev = type { i64, i32* }
%struct.via82xx = type { i32, %struct.via_rate_lock* }
%struct.via_rate_lock = type { i64, i32, i32 }

@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_SURR_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LFE_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via82xx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via82xx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.viadev*, align 8
  %5 = alloca %struct.via_rate_lock*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.via82xx* %7, %struct.via82xx** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.viadev*, %struct.viadev** %11, align 8
  store %struct.viadev* %12, %struct.viadev** %4, align 8
  %13 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %14 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %13, i32 0, i32 1
  %15 = load %struct.via_rate_lock*, %struct.via_rate_lock** %14, align 8
  %16 = load %struct.viadev*, %struct.viadev** %4, align 8
  %17 = getelementptr inbounds %struct.viadev, %struct.viadev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %15, i64 %18
  store %struct.via_rate_lock* %19, %struct.via_rate_lock** %5, align 8
  %20 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %21 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %24 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %28 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %33 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %36 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.via_rate_lock*, %struct.via_rate_lock** %5, align 8
  %39 = getelementptr inbounds %struct.via_rate_lock, %struct.via_rate_lock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %70, label %42

42:                                               ; preds = %34
  %43 = load %struct.viadev*, %struct.viadev** %4, align 8
  %44 = getelementptr inbounds %struct.viadev, %struct.viadev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %42
  %48 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %49 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %52 = call i32 @snd_ac97_update_power(i32 %50, i32 %51, i32 0)
  %53 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %54 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %57 = call i32 @snd_ac97_update_power(i32 %55, i32 %56, i32 0)
  %58 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %59 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AC97_PCM_LFE_DAC_RATE, align 4
  %62 = call i32 @snd_ac97_update_power(i32 %60, i32 %61, i32 0)
  br label %69

63:                                               ; preds = %42
  %64 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %65 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %68 = call i32 @snd_ac97_update_power(i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %63, %47
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.viadev*, %struct.viadev** %4, align 8
  %72 = getelementptr inbounds %struct.viadev, %struct.viadev* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  ret i32 0
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ac97_update_power(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
