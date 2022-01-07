; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via8233_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_via82xx.c_snd_via8233_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, i32, %struct.viadev* }
%struct.viadev = type { i32 }
%struct.via82xx = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@VIA_REG_CAPTURE_FIFO_ENABLE = common dso_local global i32 0, align 4
@OFS_CAPTURE_FIFO = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i64 0, align 8
@VIA8233_REG_TYPE_16BIT = common dso_local global i32 0, align 4
@VIA8233_REG_TYPE_STEREO = common dso_local global i32 0, align 4
@OFFSET_STOP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_via8233_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.via82xx*, align 8
  %5 = alloca %struct.viadev*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.via82xx* %8, %struct.via82xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 3
  %13 = load %struct.viadev*, %struct.viadev** %12, align 8
  store %struct.viadev* %13, %struct.viadev** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %6, align 8
  %17 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %18 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @via_lock_rate(i32* %20, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %1
  %30 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %31 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_ac97_set_rate(i32 %32, i32 %33, i32 %36)
  %38 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %39 = load %struct.viadev*, %struct.viadev** %5, align 8
  %40 = call i32 @snd_via82xx_channel_reset(%struct.via82xx* %38, %struct.viadev* %39)
  %41 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %42 = load %struct.viadev*, %struct.viadev** %5, align 8
  %43 = call i32 @snd_via82xx_set_table_ptr(%struct.via82xx* %41, %struct.viadev* %42)
  %44 = load i32, i32* @VIA_REG_CAPTURE_FIFO_ENABLE, align 4
  %45 = load %struct.viadev*, %struct.viadev** %5, align 8
  %46 = load i32, i32* @OFS_CAPTURE_FIFO, align 4
  %47 = call i32 @VIADEV_REG(%struct.viadev* %45, i32 %46)
  %48 = call i32 @outb(i32 %44, i32 %47)
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SNDRV_PCM_FORMAT_S16_LE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %29
  %55 = load i32, i32* @VIA8233_REG_TYPE_16BIT, align 4
  br label %57

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @VIA8233_REG_TYPE_STEREO, align 4
  br label %66

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %58, %67
  %69 = or i32 %68, -16777216
  %70 = load %struct.viadev*, %struct.viadev** %5, align 8
  %71 = load i32, i32* @OFFSET_STOP_IDX, align 4
  %72 = call i32 @VIADEV_REG(%struct.viadev* %70, i32 %71)
  %73 = call i32 @outl(i32 %69, i32 %72)
  %74 = call i32 @udelay(i32 20)
  %75 = load %struct.via82xx*, %struct.via82xx** %4, align 8
  %76 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %75, i32 0)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %66, %26
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.via82xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @via_lock_rate(i32*, i32) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

declare dso_local i32 @snd_via82xx_channel_reset(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @snd_via82xx_set_table_ptr(%struct.via82xx*, %struct.viadev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @VIADEV_REG(%struct.viadev*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
