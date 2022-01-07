; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_amd7930.c_snd_amd7930_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_amd7930.c_snd_amd7930_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32 }
%struct.snd_amd7930 = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AMD7930_FLAG_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_A_LAW = common dso_local global i64 0, align 8
@AM_MAP_MMR1_ALAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_amd7930_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_amd7930*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_amd7930* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_amd7930* %9, %struct.snd_amd7930** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %16 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %15, i32 0, i32 1
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @AMD7930_FLAG_PLAYBACK, align 4
  %20 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %21 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %28 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %30 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %33 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %35 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SNDRV_PCM_FORMAT_A_LAW, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = load i32, i32* @AM_MAP_MMR1_ALAW, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %1
  %48 = load i32, i32* @AM_MAP_MMR1_ALAW, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %55 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %62 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %65 = call i32 @__amd7930_update_map(%struct.snd_amd7930* %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %68 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret i32 0
}

declare dso_local %struct.snd_amd7930* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__amd7930_update_map(%struct.snd_amd7930*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
