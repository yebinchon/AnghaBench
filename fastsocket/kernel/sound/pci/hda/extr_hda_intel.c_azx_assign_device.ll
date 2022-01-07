; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_assign_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_assign_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx_dev = type { i32, i32 }
%struct.azx = type { i32, i32, i32, i32, %struct.azx_dev* }
%struct.snd_pcm_substream = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.azx_dev* (%struct.azx*, %struct.snd_pcm_substream*)* @azx_assign_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.azx_dev* @azx_assign_device(%struct.azx* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.azx_dev*, align 8
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.azx_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.azx_dev*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store %struct.azx_dev* null, %struct.azx_dev** %9, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 2
  %22 = or i32 %17, %21
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = or i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.azx*, %struct.azx** %4, align 8
  %35 = getelementptr inbounds %struct.azx, %struct.azx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.azx*, %struct.azx** %4, align 8
  %38 = getelementptr inbounds %struct.azx, %struct.azx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.azx*, %struct.azx** %4, align 8
  %42 = getelementptr inbounds %struct.azx, %struct.azx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  %44 = load %struct.azx*, %struct.azx** %4, align 8
  %45 = getelementptr inbounds %struct.azx, %struct.azx* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %40, %33
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %89, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = load %struct.azx*, %struct.azx** %4, align 8
  %54 = getelementptr inbounds %struct.azx, %struct.azx* %53, i32 0, i32 4
  %55 = load %struct.azx_dev*, %struct.azx_dev** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %55, i64 %57
  store %struct.azx_dev* %58, %struct.azx_dev** %11, align 8
  %59 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %60 = call i32 @dsp_lock(%struct.azx_dev* %59)
  %61 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %62 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %52
  %66 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %67 = call i32 @dsp_is_locked(%struct.azx_dev* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  store %struct.azx_dev* %70, %struct.azx_dev** %9, align 8
  %71 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %72 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %78 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %81 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %83 = call i32 @dsp_unlock(%struct.azx_dev* %82)
  %84 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  store %struct.azx_dev* %84, %struct.azx_dev** %3, align 8
  br label %109

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %65, %52
  %87 = load %struct.azx_dev*, %struct.azx_dev** %11, align 8
  %88 = call i32 @dsp_unlock(%struct.azx_dev* %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %48

94:                                               ; preds = %48
  %95 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %96 = icmp ne %struct.azx_dev* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %99 = call i32 @dsp_lock(%struct.azx_dev* %98)
  %100 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %101 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %104 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  %106 = call i32 @dsp_unlock(%struct.azx_dev* %105)
  br label %107

107:                                              ; preds = %97, %94
  %108 = load %struct.azx_dev*, %struct.azx_dev** %9, align 8
  store %struct.azx_dev* %108, %struct.azx_dev** %3, align 8
  br label %109

109:                                              ; preds = %107, %76
  %110 = load %struct.azx_dev*, %struct.azx_dev** %3, align 8
  ret %struct.azx_dev* %110
}

declare dso_local i32 @dsp_lock(%struct.azx_dev*) #1

declare dso_local i32 @dsp_is_locked(%struct.azx_dev*) #1

declare dso_local i32 @dsp_unlock(%struct.azx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
