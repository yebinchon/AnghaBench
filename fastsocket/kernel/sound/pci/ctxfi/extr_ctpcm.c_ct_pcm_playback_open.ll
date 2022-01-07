; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctpcm.c_ct_pcm_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm_runtime = type { %struct.TYPE_5__, i32, %struct.ct_atc_pcm* }
%struct.ct_atc_pcm = type { i32, i32, %struct.snd_pcm_substream* }
%struct.ct_atc = type { i32, i32 (%struct.ct_atc*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ct_atc_pcm_interrupt = common dso_local global i32 0, align 4
@ct_atc_pcm_free_substream = common dso_local global i32 0, align 4
@IEC958 = common dso_local global i64 0, align 8
@ct_spdif_passthru_playback_hw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ct_pcm_playback_hw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@FRONT = common dso_local global i64 0, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @ct_pcm_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_pcm_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.ct_atc* %9, %struct.ct_atc** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ct_atc_pcm* @kzalloc(i32 16, i32 %13)
  store %struct.ct_atc_pcm* %14, %struct.ct_atc_pcm** %6, align 8
  %15 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %16 = icmp ne %struct.ct_atc_pcm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %102

20:                                               ; preds = %1
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %22, i32 0, i32 2
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %23, align 8
  %24 = load i32, i32* @ct_atc_pcm_interrupt, align 4
  %25 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  store %struct.ct_atc_pcm* %27, %struct.ct_atc_pcm** %29, align 8
  %30 = load i32, i32* @ct_atc_pcm_free_substream, align 4
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @IEC958, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %20
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = bitcast %struct.TYPE_5__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 bitcast (%struct.TYPE_5__* @ct_spdif_passthru_playback_hw to i8*), i64 4, i1 false)
  %44 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %45 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %44, i32 0, i32 1
  %46 = load i32 (%struct.ct_atc*, i32)*, i32 (%struct.ct_atc*, i32)** %45, align 8
  %47 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %48 = call i32 %46(%struct.ct_atc* %47, i32 1)
  br label %65

49:                                               ; preds = %20
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_5__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 4 bitcast (%struct.TYPE_5__* @ct_pcm_playback_hw to i8*), i64 4, i1 false)
  %53 = load i64, i64* @FRONT, align 8
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 8, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %49
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %68 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %73 = call i32 @kfree(%struct.ct_atc_pcm* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %102

75:                                               ; preds = %65
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %77 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %78 = load i32, i32* @UINT_MAX, align 4
  %79 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %76, i32 %77, i32 1024, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %84 = call i32 @kfree(%struct.ct_atc_pcm* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %102

86:                                               ; preds = %75
  %87 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %88 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %91 = call i32 @ct_timer_instance_new(i32 %89, %struct.ct_atc_pcm* %90)
  %92 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %93 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %95 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %102

101:                                              ; preds = %86
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %98, %82, %71, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.ct_atc* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.ct_atc_pcm* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.ct_atc_pcm*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @ct_timer_instance_new(i32, %struct.ct_atc_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
