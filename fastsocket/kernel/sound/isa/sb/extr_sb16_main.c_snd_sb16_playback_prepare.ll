; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_sb = type { i32, i32, i32, i32, i32 }

@SB_DSP4_MODE_UNS_STEREO = common dso_local global i8 0, align 1
@SB_DSP4_MODE_UNS_MONO = common dso_local global i8 0, align 1
@SB_DSP4_MODE_SIGN_STEREO = common dso_local global i8 0, align 1
@SB_DSP4_MODE_SIGN_MONO = common dso_local global i8 0, align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_8 = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@SB_DSP4_OUT16_AI = common dso_local global i32 0, align 4
@SB_DSP_DMA16_OFF = common dso_local global i32 0, align 4
@SB_DSP4_OUT8_AI = common dso_local global i32 0, align 4
@SB_DSP_DMA8_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb16_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb16_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_sb* %11, %struct.snd_sb** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %5, align 8
  %15 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = call i32 @snd_sb16_csp_playback_prepare(%struct.snd_sb* %15, %struct.snd_pcm_runtime* %16)
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @snd_pcm_format_unsigned(i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8, i8* @SB_DSP4_MODE_UNS_STEREO, align 1
  %30 = zext i8 %29 to i32
  br label %34

31:                                               ; preds = %23
  %32 = load i8, i8* @SB_DSP4_MODE_UNS_MONO, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %6, align 1
  br label %51

37:                                               ; preds = %1
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8, i8* @SB_DSP4_MODE_SIGN_STEREO, align 1
  %44 = zext i8 %43 to i32
  br label %48

45:                                               ; preds = %37
  %46 = load i8, i8* @SB_DSP4_MODE_SIGN_MONO, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i32 [ %44, %42 ], [ %47, %45 ]
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %6, align 1
  br label %51

51:                                               ; preds = %48, %34
  %52 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %57 = call i32 @snd_sb16_setup_rate(%struct.snd_sb* %52, i32 %55, i32 %56)
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %59 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %58)
  %60 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %61 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  store i32 %59, i32* %7, align 4
  %62 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %63 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SB_MODE_PLAYBACK_8, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %51
  %69 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %70 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  br label %76

72:                                               ; preds = %51
  %73 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %74 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %71, %68 ], [ %75, %72 ]
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @DMA_MODE_WRITE, align 4
  %84 = load i32, i32* @DMA_AUTOINIT, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @snd_dma_program(i32 %78, i32 %81, i32 %82, i32 %85)
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %88 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %90 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %89, i32 0, i32 4
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @spin_lock_irqsave(i32* %90, i64 %91)
  %93 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %94 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %76
  %100 = load i32, i32* %8, align 4
  %101 = lshr i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %8, align 4
  %104 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %105 = load i32, i32* @SB_DSP4_OUT16_AI, align 4
  %106 = call i32 @snd_sbdsp_command(%struct.snd_sb* %104, i32 %105)
  %107 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %108 = load i8, i8* %6, align 1
  %109 = zext i8 %108 to i32
  %110 = call i32 @snd_sbdsp_command(%struct.snd_sb* %107, i32 %109)
  %111 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, 255
  %114 = call i32 @snd_sbdsp_command(%struct.snd_sb* %111, i32 %113)
  %115 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = lshr i32 %116, 8
  %118 = call i32 @snd_sbdsp_command(%struct.snd_sb* %115, i32 %117)
  %119 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %120 = load i32, i32* @SB_DSP_DMA16_OFF, align 4
  %121 = call i32 @snd_sbdsp_command(%struct.snd_sb* %119, i32 %120)
  br label %143

122:                                              ; preds = %76
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, -1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %126 = load i32, i32* @SB_DSP4_OUT8_AI, align 4
  %127 = call i32 @snd_sbdsp_command(%struct.snd_sb* %125, i32 %126)
  %128 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 @snd_sbdsp_command(%struct.snd_sb* %128, i32 %130)
  %132 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 255
  %135 = call i32 @snd_sbdsp_command(%struct.snd_sb* %132, i32 %134)
  %136 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = lshr i32 %137, 8
  %139 = call i32 @snd_sbdsp_command(%struct.snd_sb* %136, i32 %138)
  %140 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %141 = load i32, i32* @SB_DSP_DMA8_OFF, align 4
  %142 = call i32 @snd_sbdsp_command(%struct.snd_sb* %140, i32 %141)
  br label %143

143:                                              ; preds = %122, %99
  %144 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %145 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %144, i32 0, i32 4
  %146 = load i64, i64* %3, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  ret i32 0
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_sb16_csp_playback_prepare(%struct.snd_sb*, %struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_sb16_setup_rate(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
