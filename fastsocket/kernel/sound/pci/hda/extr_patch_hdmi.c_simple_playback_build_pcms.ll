; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_simple_playback_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_simple_playback_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.hda_pcm*, %struct.hdmi_spec* }
%struct.hda_pcm = type { %struct.hda_pcm_stream*, i32, i32 }
%struct.hda_pcm_stream = type { i32, i32 }
%struct.hdmi_spec = type { %struct.hda_pcm_stream, i32 }
%struct.hdmi_spec_per_cvt = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"HDMI 0\00", align 1
@HDA_PCM_TYPE_HDMI = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @simple_playback_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_playback_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hdmi_spec_per_cvt*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 2
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %4, align 8
  %12 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %13 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %12, i32 0)
  store %struct.hdmi_spec_per_cvt* %13, %struct.hdmi_spec_per_cvt** %8, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %8, align 8
  %16 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_wcaps(%struct.hda_codec* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_wcaps_channels(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %22 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %21, i32 0, i32 1
  %23 = call %struct.hda_pcm* @snd_array_new(i32* %22)
  store %struct.hda_pcm* %23, %struct.hda_pcm** %5, align 8
  %24 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %25 = icmp ne %struct.hda_pcm* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %78

29:                                               ; preds = %1
  %30 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %31 = call %struct.TYPE_2__* @get_pin(%struct.hdmi_spec* %30, i32 0)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %35 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sprintf(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @HDA_PCM_TYPE_HDMI, align 4
  %41 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %44 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %43, i32 0, i32 0
  %45 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %47 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %45, i64 %46
  store %struct.hda_pcm_stream* %47, %struct.hda_pcm_stream** %7, align 8
  %48 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %49 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %49, i32 0, i32 0
  %51 = bitcast %struct.hda_pcm_stream* %48 to i8*
  %52 = bitcast %struct.hda_pcm_stream* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 8, i1 false)
  %53 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %8, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %57 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %59 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %60, 2
  br i1 %61, label %62, label %72

62:                                               ; preds = %29
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp ule i32 %66, 16
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %71 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %65, %62, %29
  %73 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %74 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %76 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %77 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %76, i32 0, i32 1
  store %struct.hda_pcm* %75, %struct.hda_pcm** %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %72, %26
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_wcaps_channels(i32) #1

declare dso_local %struct.hda_pcm* @snd_array_new(i32*) #1

declare dso_local %struct.TYPE_2__* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
