; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_multich_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_pcm.c_oxygen_multich_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.oxygen = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)* }
%struct.oxygen.0 = type opaque

@OXYGEN_PLAY_CHANNELS = common dso_local global i32 0, align 4
@OXYGEN_PLAY_CHANNELS_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_FORMAT = common dso_local global i32 0, align 4
@OXYGEN_MULTICH_FORMAT_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_MULTICH_FORMAT_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_MULTICH_FORMAT = common dso_local global i32 0, align 4
@PCM_MULTICH = common dso_local global i32 0, align 4
@OXYGEN_I2S_RATE_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_FORMAT_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_MCLK_MASK = common dso_local global i32 0, align 4
@OXYGEN_I2S_BITS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @oxygen_multich_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxygen_multich_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.oxygen*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.oxygen* %9, %struct.oxygen** %6, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = call i32 @oxygen_hw_params(%struct.snd_pcm_substream* %10, %struct.snd_pcm_hw_params* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %81

17:                                               ; preds = %2
  %18 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %19 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %22 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %25 = load i32, i32* @OXYGEN_PLAY_CHANNELS, align 4
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @oxygen_play_channels(%struct.snd_pcm_hw_params* %26)
  %28 = load i32, i32* @OXYGEN_PLAY_CHANNELS_MASK, align 4
  %29 = call i32 @oxygen_write8_masked(%struct.oxygen* %24, i32 %25, i32 %27, i32 %28)
  %30 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %31 = load i32, i32* @OXYGEN_PLAY_FORMAT, align 4
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @oxygen_format(%struct.snd_pcm_hw_params* %32)
  %34 = load i32, i32* @OXYGEN_MULTICH_FORMAT_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @OXYGEN_MULTICH_FORMAT_MASK, align 4
  %37 = call i32 @oxygen_write8_masked(%struct.oxygen* %30, i32 %31, i32 %35, i32 %36)
  %38 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %39 = load i32, i32* @OXYGEN_I2S_MULTICH_FORMAT, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %41 = call i32 @oxygen_rate(%struct.snd_pcm_hw_params* %40)
  %42 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %43 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %41, %45
  %47 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %48 = load i32, i32* @PCM_MULTICH, align 4
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %50 = call i32 @get_mclk(%struct.oxygen* %47, i32 %48, %struct.snd_pcm_hw_params* %49)
  %51 = or i32 %46, %50
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %53 = call i32 @oxygen_i2s_bits(%struct.snd_pcm_hw_params* %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @OXYGEN_I2S_RATE_MASK, align 4
  %56 = load i32, i32* @OXYGEN_I2S_FORMAT_MASK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @OXYGEN_I2S_MCLK_MASK, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @OXYGEN_I2S_BITS_MASK, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @oxygen_write16_masked(%struct.oxygen* %38, i32 %39, i32 %54, i32 %61)
  %63 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %64 = call i32 @oxygen_update_spdif_source(%struct.oxygen* %63)
  %65 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %69 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)*, i32 (%struct.oxygen.0*, %struct.snd_pcm_hw_params*)** %70, align 8
  %72 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %73 = bitcast %struct.oxygen* %72 to %struct.oxygen.0*
  %74 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %75 = call i32 %71(%struct.oxygen.0* %73, %struct.snd_pcm_hw_params* %74)
  %76 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %77 = call i32 @oxygen_update_dac_routing(%struct.oxygen* %76)
  %78 = load %struct.oxygen*, %struct.oxygen** %6, align 8
  %79 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %17, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.oxygen* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @oxygen_hw_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_play_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_write16_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @oxygen_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_mclk(%struct.oxygen*, i32, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_i2s_bits(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @oxygen_update_spdif_source(%struct.oxygen*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @oxygen_update_dac_routing(%struct.oxygen*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
