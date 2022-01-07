; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32*, i32, i32 }
%struct.snd_sb = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SB_DSP_HI_OUTPUT_AUTO = common dso_local global i8* null, align 8
@SB_DSP_LO_OUTPUT_AUTO = common dso_local global i64 0, align 8
@SB_DSP_OUTPUT = common dso_local global i64 0, align 8
@SB_DSP_SPEAKER_ON = common dso_local global i32 0, align 4
@SB_DSP_STEREO_SW = common dso_local global i32 0, align 4
@SB_DSP_DMA8_EXIT = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@SB_MODE_HALT = common dso_local global i32 0, align 4
@SB_DSP_SAMPLE_RATE = common dso_local global i32 0, align 4
@SB_DSP_PLAYBACK_FILT = common dso_local global i32 0, align 4
@SB_DSP_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_sb* %12, %struct.snd_sb** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %6, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %20 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %66 [
    i32 128, label %22
    i32 129, label %49
    i32 130, label %58
    i32 131, label %62
  ]

22:                                               ; preds = %1
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @SB8_RATE(i32 11025)
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @SB8_RATE(i32 22050)
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @snd_BUG_ON(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %206

43:                                               ; preds = %35
  %44 = load i8*, i8** @SB_DSP_HI_OUTPUT_AUTO, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %69

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %1, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ugt i32 %50, 23000
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** @SB_DSP_HI_OUTPUT_AUTO, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %56 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %69

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %1, %57
  %59 = load i64, i64* @SB_DSP_LO_OUTPUT_AUTO, align 8
  %60 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %61 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %69

62:                                               ; preds = %1
  %63 = load i64, i64* @SB_DSP_OUTPUT, align 8
  %64 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %65 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %69

66:                                               ; preds = %1
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %206

69:                                               ; preds = %62, %58, %52, %43
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %71 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %70)
  %72 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %73 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  store i32 %71, i32* %9, align 4
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %74)
  %76 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %77 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  store i32 %75, i32* %10, align 4
  %78 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %79 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %78, i32 0, i32 6
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %83 = load i32, i32* @SB_DSP_SPEAKER_ON, align 4
  %84 = call i32 @snd_sbdsp_command(%struct.snd_sb* %82, i32 %83)
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %130

89:                                               ; preds = %69
  %90 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %91 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %90, i32 0, i32 7
  %92 = call i32 @spin_lock(i32* %91)
  %93 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %94 = load i32, i32* @SB_DSP_STEREO_SW, align 4
  %95 = call i32 @snd_sbmixer_read(%struct.snd_sb* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %97 = load i32, i32* @SB_DSP_STEREO_SW, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, 2
  %100 = call i32 @snd_sbmixer_write(%struct.snd_sb* %96, i32 %97, i32 %99)
  %101 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %102 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %101, i32 0, i32 7
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %105 = load i32, i32* @SB_DSP_DMA8_EXIT, align 4
  %106 = call i32 @snd_sbdsp_command(%struct.snd_sb* %104, i32 %105)
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 128, i32* %110, align 4
  %111 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %112 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DMA_MODE_WRITE, align 4
  %118 = call i32 @snd_dma_program(i32 %113, i32 %116, i32 1, i32 %117)
  %119 = load i32, i32* @SB_MODE_HALT, align 4
  %120 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %121 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %123 = load i64, i64* @SB_DSP_OUTPUT, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @snd_sbdsp_command(%struct.snd_sb* %122, i32 %124)
  %126 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %127 = call i32 @snd_sbdsp_command(%struct.snd_sb* %126, i32 0)
  %128 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %129 = call i32 @snd_sbdsp_command(%struct.snd_sb* %128, i32 0)
  br label %130

130:                                              ; preds = %89, %69
  %131 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %132 = load i32, i32* @SB_DSP_SAMPLE_RATE, align 4
  %133 = call i32 @snd_sbdsp_command(%struct.snd_sb* %131, i32 %132)
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %163

138:                                              ; preds = %130
  %139 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 256, %143
  %145 = call i32 @snd_sbdsp_command(%struct.snd_sb* %139, i32 %144)
  %146 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %147 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %146, i32 0, i32 7
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %150 = load i32, i32* @SB_DSP_PLAYBACK_FILT, align 4
  %151 = call i32 @snd_sbmixer_read(%struct.snd_sb* %149, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %153 = load i32, i32* @SB_DSP_PLAYBACK_FILT, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, 32
  %156 = call i32 @snd_sbmixer_write(%struct.snd_sb* %152, i32 %153, i32 %155)
  %157 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %158 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %157, i32 0, i32 7
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %162 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  br label %170

163:                                              ; preds = %130
  %164 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %165 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %166 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 256, %167
  %169 = call i32 @snd_sbdsp_command(%struct.snd_sb* %164, i32 %168)
  br label %170

170:                                              ; preds = %163, %138
  %171 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %172 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SB_DSP_OUTPUT, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  %178 = add i32 %177, -1
  store i32 %178, i32* %10, align 4
  %179 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %180 = load i32, i32* @SB_DSP_BLOCK_SIZE, align 4
  %181 = call i32 @snd_sbdsp_command(%struct.snd_sb* %179, i32 %180)
  %182 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = and i32 %183, 255
  %185 = call i32 @snd_sbdsp_command(%struct.snd_sb* %182, i32 %184)
  %186 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %187 = load i32, i32* %10, align 4
  %188 = lshr i32 %187, 8
  %189 = call i32 @snd_sbdsp_command(%struct.snd_sb* %186, i32 %188)
  br label %190

190:                                              ; preds = %176, %170
  %191 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %192 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %191, i32 0, i32 6
  %193 = load i64, i64* %4, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %196 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %199 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @DMA_MODE_WRITE, align 4
  %203 = load i32, i32* @DMA_AUTOINIT, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @snd_dma_program(i32 %197, i32 %200, i32 %201, i32 %204)
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %190, %66, %40
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @SB8_RATE(i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbmixer_read(%struct.snd_sb*, i32) #1

declare dso_local i32 @snd_sbmixer_write(%struct.snd_sb*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
