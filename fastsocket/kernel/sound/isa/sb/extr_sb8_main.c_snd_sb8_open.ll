; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_3__ }
%struct.snd_sb = type { i32, i32, %struct.snd_pcm_substream*, %struct.snd_pcm_substream*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@SB_OPEN_PCM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_sb8_playback = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@snd_sb8_capture = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_sb8_hw_constraint_rate_channels = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_sb8_hw_constraint_channels_rate = common dso_local global i32 0, align 4
@hw_constraints_clock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_sb* %8, %struct.snd_sb** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %17 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %22 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %21, i32 0, i32 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %98

27:                                               ; preds = %1
  %28 = load i32, i32* @SB_OPEN_PCM, align 4
  %29 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %34 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %33, i32 0, i32 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %44 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %45 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %44, i32 0, i32 3
  store %struct.snd_pcm_substream* %43, %struct.snd_pcm_substream** %45, align 8
  %46 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %46, i32 0, i32 0
  %48 = bitcast %struct.TYPE_3__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast (%struct.TYPE_3__* @snd_sb8_playback to i8*), i64 8, i1 false)
  br label %56

49:                                               ; preds = %27
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %52 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %51, i32 0, i32 2
  store %struct.snd_pcm_substream* %50, %struct.snd_pcm_substream** %52, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = bitcast %struct.TYPE_3__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 bitcast (%struct.TYPE_3__* @snd_sb8_capture to i8*), i64 8, i1 false)
  br label %56

56:                                               ; preds = %49, %42
  %57 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %58 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %93 [
    i32 128, label %60
    i32 129, label %78
  ]

60:                                               ; preds = %56
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 44100, i32* %63, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %69 = load i32, i32* @snd_sb8_hw_constraint_rate_channels, align 4
  %70 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %71 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %72 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %67, i32 0, i32 %68, i32 %69, i32* null, i32 %70, i32 %71, i32 -1)
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %74 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %75 = load i32, i32* @snd_sb8_hw_constraint_channels_rate, align 4
  %76 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %77 = call i32 (%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32, ...) @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %73, i32 0, i32 %74, i32 %75, i32* null, i32 %76, i32 -1)
  br label %94

78:                                               ; preds = %56
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 44100, i32* %87, align 4
  br label %92

88:                                               ; preds = %78
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 15000, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %56, %92
  br label %94

94:                                               ; preds = %93, %60
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %96 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %97 = call i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime* %95, i32 0, i32 %96, i32* @hw_constraints_clock)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %20
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i32*, i32, i32, ...) #1

declare dso_local i32 @snd_pcm_hw_constraint_ratnums(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
