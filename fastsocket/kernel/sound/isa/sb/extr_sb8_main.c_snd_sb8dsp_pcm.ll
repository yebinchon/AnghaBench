; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_pcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8dsp_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_pcm = type { %struct.snd_sb*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"SB8 DSP\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DSP v%i.%i\00", align 1
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_sb8_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_sb8_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sb8dsp_pcm(%struct.snd_sb* %0, i32 %1, %struct.snd_pcm** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm**, align 8
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.snd_pcm*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_pcm** %2, %struct.snd_pcm*** %7, align 8
  %11 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 1
  %13 = load %struct.snd_card*, %struct.snd_card** %12, align 8
  store %struct.snd_card* %13, %struct.snd_card** %8, align 8
  %14 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  %15 = icmp ne %struct.snd_pcm** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  store %struct.snd_pcm* null, %struct.snd_pcm** %17, align 8
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @snd_pcm_new(%struct.snd_card* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 1, i32 1, %struct.snd_pcm** %9)
  store i32 %21, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %30 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %34 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, 255
  %37 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %43 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %42, i32 0, i32 0
  store %struct.snd_sb* %41, %struct.snd_sb** %43, align 8
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %45 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %46 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %44, i32 %45, i32* @snd_sb8_playback_ops)
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %48 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %49 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %47, i32 %48, i32* @snd_sb8_capture_ops)
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %51 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %52 = call i32 (...) @snd_dma_isa_data()
  %53 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %50, i32 %51, i32 %52, i32 65536, i32 65536)
  %54 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  %55 = icmp ne %struct.snd_pcm** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %25
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  %58 = load %struct.snd_pcm**, %struct.snd_pcm*** %7, align 8
  store %struct.snd_pcm* %57, %struct.snd_pcm** %58, align 8
  br label %59

59:                                               ; preds = %56, %25
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_isa_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
