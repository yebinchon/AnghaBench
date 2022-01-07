; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_dummy.c_dummy_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)* }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime*, %struct.TYPE_5__* }
%struct.snd_pcm_runtime = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.snd_dummy = type { %struct.TYPE_6__* }

@dummy_systimer_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dummy_pcm_hardware = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SNDRV_PCM_INFO_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_NONINTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@dummy_hrtimer_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@hrtimer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dummy_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dummy*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_dummy* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_dummy* %8, %struct.snd_dummy** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_dummy*, %struct.snd_dummy** %4, align 8
  %13 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %12, i32 0, i32 0
  store %struct.TYPE_6__* @dummy_systimer_ops, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.snd_dummy*, %struct.snd_dummy** %4, align 8
  %15 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %17, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = call i32 %18(%struct.snd_pcm_substream* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %1
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = bitcast %struct.TYPE_7__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.TYPE_7__* @dummy_pcm_hardware to i8*), i64 4, i1 false)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %25
  %37 = load i32, i32* @SNDRV_PCM_INFO_INTERLEAVED, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @SNDRV_PCM_INFO_NONINTERLEAVED, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %36, %25
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %60 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %58, %50
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %75, i32 0, i32 1
  %77 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %76, align 8
  %78 = call i32 @add_playback_constraints(%struct.snd_pcm_runtime* %77)
  store i32 %78, i32* %6, align 4
  br label %84

79:                                               ; preds = %68
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %80, i32 0, i32 1
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %81, align 8
  %83 = call i32 @add_capture_constraints(%struct.snd_pcm_runtime* %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.snd_dummy*, %struct.snd_dummy** %4, align 8
  %89 = getelementptr inbounds %struct.snd_dummy, %struct.snd_dummy* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32 (%struct.snd_pcm_substream*)*, i32 (%struct.snd_pcm_substream*)** %91, align 8
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %94 = call i32 %92(%struct.snd_pcm_substream* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %87, %23
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.snd_dummy* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_playback_constraints(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @add_capture_constraints(%struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
