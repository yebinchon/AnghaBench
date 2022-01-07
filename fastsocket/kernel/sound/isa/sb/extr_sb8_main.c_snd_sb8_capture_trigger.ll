; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_sb = type { i32, i32, i32, i32, i32, i32 }

@SB_DSP_INPUT = common dso_local global i32 0, align 4
@SB_DSP_HI_INPUT_AUTO = common dso_local global i32 0, align 4
@SB_DSP_CAPTURE_FILT = common dso_local global i32 0, align 4
@SB_DSP_MONO_8BIT = common dso_local global i32 0, align 4
@SB_DSP_DMA8_OFF = common dso_local global i32 0, align 4
@SB_DSP_SPEAKER_OFF = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_8 = common dso_local global i32 0, align 4
@SB_MODE_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_sb8_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_sb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_sb* %10, %struct.snd_sb** %6, align 8
  %11 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %82 [
    i32 129, label %16
    i32 128, label %41
  ]

16:                                               ; preds = %2
  %17 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %18 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %19 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_sbdsp_command(%struct.snd_sb* %17, i32 %20)
  %22 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %23 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SB_DSP_INPUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %16
  %28 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %29 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @snd_sbdsp_command(%struct.snd_sb* %32, i32 %34)
  %36 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 8
  %39 = call i32 @snd_sbdsp_command(%struct.snd_sb* %36, i32 %38)
  br label %40

40:                                               ; preds = %27, %16
  br label %82

41:                                               ; preds = %2
  %42 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %43 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SB_DSP_HI_INPUT_AUTO, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %49, align 8
  store %struct.snd_pcm_runtime* %50, %struct.snd_pcm_runtime** %8, align 8
  %51 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %52 = call i32 @snd_sbdsp_reset(%struct.snd_sb* %51)
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %59 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %58, i32 0, i32 3
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %62 = load i32, i32* @SB_DSP_CAPTURE_FILT, align 4
  %63 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %64 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_sbmixer_write(%struct.snd_sb* %61, i32 %62, i32 %65)
  %67 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %68 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %71 = load i32, i32* @SB_DSP_MONO_8BIT, align 4
  %72 = call i32 @snd_sbdsp_command(%struct.snd_sb* %70, i32 %71)
  br label %73

73:                                               ; preds = %57, %47
  br label %78

74:                                               ; preds = %41
  %75 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %76 = load i32, i32* @SB_DSP_DMA8_OFF, align 4
  %77 = call i32 @snd_sbdsp_command(%struct.snd_sb* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %73
  %79 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %80 = load i32, i32* @SB_DSP_SPEAKER_OFF, align 4
  %81 = call i32 @snd_sbdsp_command(%struct.snd_sb* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %2, %40
  %83 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %84 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %83, i32 0, i32 2
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @SB_MODE_CAPTURE_8, align 4
  br label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @SB_MODE_HALT, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.snd_sb*, %struct.snd_sb** %6, align 8
  %96 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbdsp_reset(%struct.snd_sb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
