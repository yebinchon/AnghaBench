; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad198x_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad198x_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.hda_codec = type { i32, i32, %struct.hda_pcm*, %struct.ad198x_spec* }
%struct.hda_pcm = type { i8*, %struct.TYPE_7__*, i32 }
%struct.ad198x_spec = type { i64, %struct.TYPE_6__, i64*, i32, %struct.hda_pcm* }
%struct.TYPE_6__ = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"AD198x Analog\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ad198x_pcm_analog_playback = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@ad198x_pcm_analog_capture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"AD198x Digital\00", align 1
@HDA_PCM_TYPE_SPDIF = common dso_local global i32 0, align 4
@ad198x_pcm_digital_playback = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ad198x_pcm_digital_capture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ad198x_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad198x_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ad198x_spec*, align 8
  %4 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 3
  %7 = load %struct.ad198x_spec*, %struct.ad198x_spec** %6, align 8
  store %struct.ad198x_spec* %7, %struct.ad198x_spec** %3, align 8
  %8 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %9 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %8, i32 0, i32 4
  %10 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  store %struct.hda_pcm* %10, %struct.hda_pcm** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 2
  store %struct.hda_pcm* %13, %struct.hda_pcm** %15, align 8
  %16 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %17 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %21
  %23 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_7__* @ad198x_pcm_analog_playback to i8*), i64 16, i1 false)
  %24 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %25 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %29 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 %27, i32* %33, align 4
  %34 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %35 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %39, i64* %45, align 8
  %46 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %47 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = bitcast %struct.TYPE_7__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 bitcast (%struct.TYPE_7__* @ad198x_pcm_analog_capture to i8*), i64 16, i1 false)
  %52 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %53 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %56 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 8
  %61 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %62 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %67 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %65, i64* %71, align 8
  %72 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %73 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %128

77:                                               ; preds = %1
  %78 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %79 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %78, i32 1
  store %struct.hda_pcm* %79, %struct.hda_pcm** %4, align 8
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %85 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %87 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %87, align 8
  %88 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %89 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %90 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %92 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %94
  %96 = bitcast %struct.TYPE_7__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 bitcast (%struct.TYPE_7__* @ad198x_pcm_digital_playback to i8*), i64 16, i1 false)
  %97 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %98 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %102 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i64 %100, i64* %106, align 8
  %107 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %108 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %77
  %112 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %113 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %115
  %117 = bitcast %struct.TYPE_7__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 bitcast (%struct.TYPE_7__* @ad198x_pcm_digital_capture to i8*), i64 16, i1 false)
  %118 = load %struct.ad198x_spec*, %struct.ad198x_spec** %3, align 8
  %119 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %122 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i64 %120, i64* %126, align 8
  br label %127

127:                                              ; preds = %111, %77
  br label %128

128:                                              ; preds = %127, %1
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
