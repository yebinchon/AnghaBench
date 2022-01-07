; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_conexant_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.hda_codec = type { i32, i32, %struct.hda_pcm*, %struct.conexant_spec* }
%struct.hda_pcm = type { i8*, %struct.TYPE_8__*, i32 }
%struct.conexant_spec = type { i64, %struct.TYPE_7__, i64*, i32, %struct.TYPE_8__*, %struct.hda_pcm* }
%struct.TYPE_7__ = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"CONEXANT Analog\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@conexant_pcm_analog_playback = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@cx5051_pcm_analog_capture = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@conexant_pcm_analog_capture = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Conexant Digital\00", align 1
@HDA_PCM_TYPE_SPDIF = common dso_local global i32 0, align 4
@conexant_pcm_digital_playback = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@conexant_pcm_digital_capture = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @conexant_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conexant_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 3
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %9 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %8, i32 0, i32 5
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
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %21
  %23 = bitcast %struct.TYPE_8__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_8__* @conexant_pcm_analog_playback to i8*), i64 16, i1 false)
  %24 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %25 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %29 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %27, i32* %33, align 4
  %34 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %35 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i64 %39, i64* %45, align 8
  %46 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %47 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %1
  %51 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %52 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %57 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = bitcast %struct.TYPE_8__* %55 to i8*
  %60 = bitcast %struct.TYPE_8__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %90

61:                                               ; preds = %1
  %62 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 351359057
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %68 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = bitcast %struct.TYPE_8__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 bitcast (%struct.TYPE_8__* @cx5051_pcm_analog_capture to i8*), i64 16, i1 false)
  br label %89

73:                                               ; preds = %61
  %74 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %75 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %77
  %79 = bitcast %struct.TYPE_8__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 bitcast (%struct.TYPE_8__* @conexant_pcm_analog_capture to i8*), i64 16, i1 false)
  %80 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %81 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %84 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %82, i32* %88, align 8
  br label %89

89:                                               ; preds = %73, %66
  br label %90

90:                                               ; preds = %89, %50
  %91 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %92 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %97 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i64 %95, i64* %101, align 8
  %102 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %103 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %90
  %108 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %109 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %108, i32 1
  store %struct.hda_pcm* %109, %struct.hda_pcm** %4, align 8
  %110 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %111 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %115 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %115, align 8
  %116 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %117 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %118 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %120 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %119, i32 0, i32 1
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = bitcast %struct.TYPE_8__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 bitcast (%struct.TYPE_8__* @conexant_pcm_digital_playback to i8*), i64 16, i1 false)
  %125 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %126 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %130 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i64 %128, i64* %134, align 8
  %135 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %136 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %107
  %140 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %141 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %143
  %145 = bitcast %struct.TYPE_8__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 bitcast (%struct.TYPE_8__* @conexant_pcm_digital_capture to i8*), i64 16, i1 false)
  %146 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %147 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %150 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i64 %148, i64* %154, align 8
  br label %155

155:                                              ; preds = %139, %107
  br label %156

156:                                              ; preds = %155, %90
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
