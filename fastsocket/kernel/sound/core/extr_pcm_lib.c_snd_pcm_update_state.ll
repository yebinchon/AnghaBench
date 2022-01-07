; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_update_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_pcm_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_runtime = type { i64, i64, i64, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm_runtime2 = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_update_state(%struct.snd_pcm_substream* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %5, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = call i64 @snd_pcm_playback_avail(%struct.snd_pcm_runtime* %13)
  store i64 %14, i64* %6, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = call i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime* %16)
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = call i32 @snd_pcm_drain_done(%struct.snd_pcm_substream* %43)
  %45 = load i32, i32* @EPIPE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %36
  br label %60

48:                                               ; preds = %28
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %56 = call i32 @xrun(%struct.snd_pcm_substream* %55)
  %57 = load i32, i32* @EPIPE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %92

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = bitcast %struct.snd_pcm_runtime* %61 to %struct.snd_pcm_runtime2*
  %63 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = bitcast %struct.snd_pcm_runtime* %68 to %struct.snd_pcm_runtime2*
  %70 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 5
  %76 = call i32 @wake_up(i32* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %91

78:                                               ; preds = %60
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %79, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 3
  %89 = call i32 @wake_up(i32* %88)
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %77
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %54, %42
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @snd_pcm_playback_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_drain_done(%struct.snd_pcm_substream*) #1

declare dso_local i32 @xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
