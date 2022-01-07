; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_build_pcms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_build_pcms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.hda_codec = type { i32, %struct.hda_pcm*, %struct.cmi_spec* }
%struct.hda_pcm = type { i8*, %struct.TYPE_7__*, i32 }
%struct.cmi_spec = type { i64, %struct.TYPE_6__, %struct.hda_pcm* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"CMI9880\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@cmi9880_pcm_analog_playback = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@cmi9880_pcm_analog_capture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"CMI9880 Digital\00", align 1
@HDA_PCM_TYPE_SPDIF = common dso_local global i32 0, align 4
@cmi9880_pcm_digital_playback = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cmi9880_pcm_digital_capture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @cmi9880_build_pcms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi9880_build_pcms(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.cmi_spec*, align 8
  %4 = alloca %struct.hda_pcm*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 2
  %7 = load %struct.cmi_spec*, %struct.cmi_spec** %6, align 8
  store %struct.cmi_spec* %7, %struct.cmi_spec** %3, align 8
  %8 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %9 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %8, i32 0, i32 2
  %10 = load %struct.hda_pcm*, %struct.hda_pcm** %9, align 8
  store %struct.hda_pcm* %10, %struct.hda_pcm** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 1
  store %struct.hda_pcm* %13, %struct.hda_pcm** %15, align 8
  %16 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %17 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %19 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %21
  %23 = bitcast %struct.TYPE_7__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_7__* @cmi9880_pcm_analog_playback to i8*), i64 8, i1 false)
  %24 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %27
  %29 = bitcast %struct.TYPE_7__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_7__* @cmi9880_pcm_analog_capture to i8*), i64 8, i1 false)
  %30 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %31 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %37 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %96

40:                                               ; preds = %35, %1
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %46 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %45, i32 1
  store %struct.hda_pcm* %46, %struct.hda_pcm** %4, align 8
  %47 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %48 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @HDA_PCM_TYPE_SPDIF, align 4
  %50 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %51 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %53 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %40
  %58 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %59 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = bitcast %struct.TYPE_7__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 bitcast (%struct.TYPE_7__* @cmi9880_pcm_digital_playback to i8*), i64 8, i1 false)
  %64 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %65 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %69 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i64 %67, i64* %73, align 8
  br label %74

74:                                               ; preds = %57, %40
  %75 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %76 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %81 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = bitcast %struct.TYPE_7__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 bitcast (%struct.TYPE_7__* @cmi9880_pcm_digital_capture to i8*), i64 8, i1 false)
  %86 = load %struct.cmi_spec*, %struct.cmi_spec** %3, align 8
  %87 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.hda_pcm*, %struct.hda_pcm** %4, align 8
  %90 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i64 %88, i64* %94, align 8
  br label %95

95:                                               ; preds = %79, %74
  br label %96

96:                                               ; preds = %95, %35
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
