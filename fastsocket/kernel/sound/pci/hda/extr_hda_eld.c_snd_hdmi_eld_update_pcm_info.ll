; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_eld.c_snd_hdmi_eld_update_pcm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_eld.c_snd_hdmi_eld_update_pcm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_hdmi_eld = type { i32, %struct.cea_sad* }
%struct.cea_sad = type { i32, i32, i64, i32 }
%struct.hda_pcm_stream = type { i32, i8*, i8*, i32 }

@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S16_LE = common dso_local global i32 0, align 4
@AUDIO_CODING_TYPE_LPCM = common dso_local global i64 0, align 8
@AC_SUPPCM_BITS_20 = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@AC_SUPPCM_BITS_24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdmi_eld_update_pcm_info(%struct.parsed_hdmi_eld* %0, %struct.hda_pcm_stream* %1) #0 {
  %3 = alloca %struct.parsed_hdmi_eld*, align 8
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cea_sad*, align 8
  store %struct.parsed_hdmi_eld* %0, %struct.parsed_hdmi_eld** %3, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %4, align 8
  %11 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %12 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SNDRV_PCM_FMTBIT_S16_LE, align 4
  store i32 %16, i32* %6, align 4
  store i32 16, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %82, %2
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %3, align 8
  %20 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %17
  %24 = load %struct.parsed_hdmi_eld*, %struct.parsed_hdmi_eld** %3, align 8
  %25 = getelementptr inbounds %struct.parsed_hdmi_eld, %struct.parsed_hdmi_eld* %24, i32 0, i32 1
  %26 = load %struct.cea_sad*, %struct.cea_sad** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %26, i64 %28
  store %struct.cea_sad* %29, %struct.cea_sad** %10, align 8
  %30 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %31 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %36 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %42 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %23
  %45 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %46 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUDIO_CODING_TYPE_LPCM, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %52 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AC_SUPPCM_BITS_20, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %61, 20
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 20, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.cea_sad*, %struct.cea_sad** %10, align 8
  %67 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AC_SUPPCM_BITS_24, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ult i32 %76, 24
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 24, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79, %65
  br label %81

81:                                               ; preds = %80, %44
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %17

85:                                               ; preds = %17
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %88 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %93 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %97 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i8* @min(i8* %98, i32 %99)
  %101 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %102 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %104 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i8* @min(i8* %105, i32 %106)
  %108 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %109 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  ret void
}

declare dso_local i8* @min(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
