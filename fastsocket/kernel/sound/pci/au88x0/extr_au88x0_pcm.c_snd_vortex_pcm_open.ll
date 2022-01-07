; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, i32 }
%struct.snd_pcm_runtime = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }

@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@VORTEX_PCM_WT = common dso_local global i64 0, align 8
@VORTEX_PCM_A3D = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_a3d = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VORTEX_PCM_SPDIF = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_spdif = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SNDRV_PCM_RATE_32000 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_44100 = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@VORTEX_PCM_ADB = common dso_local global i64 0, align 8
@VORTEX_PCM_I2S = common dso_local global i64 0, align 8
@snd_vortex_playback_hw_adb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@snd_vortex_playback_hw_wt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vortex_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %14 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %21 = call i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime* %19, i32 0, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %18
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @VORTEX_PCM_TYPE(i32 %28)
  %30 = load i64, i64* @VORTEX_PCM_WT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %25
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @VORTEX_PCM_TYPE(i32 %35)
  %37 = load i64, i64* @VORTEX_PCM_A3D, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 1
  %42 = bitcast %struct.TYPE_8__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 bitcast (%struct.TYPE_8__* @snd_vortex_playback_hw_a3d to i8*), i64 4, i1 false)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @VORTEX_PCM_TYPE(i32 %46)
  %48 = load i64, i64* @VORTEX_PCM_SPDIF, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %43
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 1
  %53 = bitcast %struct.TYPE_8__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 4 bitcast (%struct.TYPE_8__* @snd_vortex_playback_hw_spdif to i8*), i64 4, i1 false)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %72 [
    i32 32000, label %57
    i32 44100, label %62
    i32 48000, label %67
  ]

57:                                               ; preds = %50
  %58 = load i32, i32* @SNDRV_PCM_RATE_32000, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %72

62:                                               ; preds = %50
  %63 = load i32, i32* @SNDRV_PCM_RATE_44100, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %72

67:                                               ; preds = %50
  %68 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %50, %67, %62, %57
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @VORTEX_PCM_TYPE(i32 %76)
  %78 = load i64, i64* @VORTEX_PCM_ADB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @VORTEX_PCM_TYPE(i32 %83)
  %85 = load i64, i64* @VORTEX_PCM_I2S, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80, %73
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_8__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 4 bitcast (%struct.TYPE_8__* @snd_vortex_playback_hw_adb to i8*), i64 4, i1 false)
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %92, i32 0, i32 0
  %94 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %93, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %104

96:                                               ; preds = %25
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 1
  %99 = bitcast %struct.TYPE_8__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 4 bitcast (%struct.TYPE_8__* @snd_vortex_playback_hw_wt to i8*), i64 4, i1 false)
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 0
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %101, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %23, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_pow2(%struct.snd_pcm_runtime*, i32, i32) #1

declare dso_local i64 @VORTEX_PCM_TYPE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
