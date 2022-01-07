; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_sb = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SB_DSP_HI_INPUT_AUTO = common dso_local global i8* null, align 8
@SB_DSP_LO_INPUT_AUTO = common dso_local global i8* null, align 8
@SB_DSP_INPUT = common dso_local global i64 0, align 8
@SB_DSP_SPEAKER_OFF = common dso_local global i32 0, align 4
@SB_DSP_STEREO_8BIT = common dso_local global i32 0, align 4
@SB_DSP_SAMPLE_RATE = common dso_local global i32 0, align 4
@SB_DSP_CAPTURE_FILT = common dso_local global i32 0, align 4
@SB_DSP_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %20 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %78 [
    i32 128, label %22
    i32 129, label %60
    i32 130, label %69
    i32 131, label %74
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
  br label %181

43:                                               ; preds = %35
  %44 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  br label %81

48:                                               ; preds = %22
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %49, 23000
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** @SB_DSP_LO_INPUT_AUTO, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ]
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %59 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %81

60:                                               ; preds = %1
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %61, 13000
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8*, i8** @SB_DSP_HI_INPUT_AUTO, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %67 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %81

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %1, %68
  %70 = load i8*, i8** @SB_DSP_LO_INPUT_AUTO, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %73 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %81

74:                                               ; preds = %1
  %75 = load i64, i64* @SB_DSP_INPUT, align 8
  %76 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %77 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %181

81:                                               ; preds = %74, %69, %63, %55, %43
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %83 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %82)
  %84 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %85 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  store i32 %83, i32* %9, align 4
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %87 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %86)
  %88 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %89 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  store i32 %87, i32* %10, align 4
  %90 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %91 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %90, i32 0, i32 6
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_lock_irqsave(i32* %91, i64 %92)
  %94 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %95 = load i32, i32* @SB_DSP_SPEAKER_OFF, align 4
  %96 = call i32 @snd_sbdsp_command(%struct.snd_sb* %94, i32 %95)
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %81
  %102 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %103 = load i32, i32* @SB_DSP_STEREO_8BIT, align 4
  %104 = call i32 @snd_sbdsp_command(%struct.snd_sb* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %81
  %106 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %107 = load i32, i32* @SB_DSP_SAMPLE_RATE, align 4
  %108 = call i32 @snd_sbdsp_command(%struct.snd_sb* %106, i32 %107)
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %138

113:                                              ; preds = %105
  %114 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %115 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = sub nsw i32 256, %118
  %120 = call i32 @snd_sbdsp_command(%struct.snd_sb* %114, i32 %119)
  %121 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %122 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %121, i32 0, i32 7
  %123 = call i32 @spin_lock(i32* %122)
  %124 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %125 = load i32, i32* @SB_DSP_CAPTURE_FILT, align 4
  %126 = call i32 @snd_sbmixer_read(%struct.snd_sb* %124, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %128 = load i32, i32* @SB_DSP_CAPTURE_FILT, align 4
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, 32
  %131 = call i32 @snd_sbmixer_write(%struct.snd_sb* %127, i32 %128, i32 %130)
  %132 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %133 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %132, i32 0, i32 7
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %137 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  br label %145

138:                                              ; preds = %105
  %139 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 256, %142
  %144 = call i32 @snd_sbdsp_command(%struct.snd_sb* %139, i32 %143)
  br label %145

145:                                              ; preds = %138, %113
  %146 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %147 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SB_DSP_INPUT, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, -1
  store i32 %153, i32* %10, align 4
  %154 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %155 = load i32, i32* @SB_DSP_BLOCK_SIZE, align 4
  %156 = call i32 @snd_sbdsp_command(%struct.snd_sb* %154, i32 %155)
  %157 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, 255
  %160 = call i32 @snd_sbdsp_command(%struct.snd_sb* %157, i32 %159)
  %161 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = lshr i32 %162, 8
  %164 = call i32 @snd_sbdsp_command(%struct.snd_sb* %161, i32 %163)
  br label %165

165:                                              ; preds = %151, %145
  %166 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %167 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %166, i32 0, i32 6
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %171 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %174 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @DMA_MODE_READ, align 4
  %178 = load i32, i32* @DMA_AUTOINIT, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @snd_dma_program(i32 %172, i32 %175, i32 %176, i32 %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %165, %78, %40
  %182 = load i32, i32* %2, align 4
  ret i32 %182
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

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
