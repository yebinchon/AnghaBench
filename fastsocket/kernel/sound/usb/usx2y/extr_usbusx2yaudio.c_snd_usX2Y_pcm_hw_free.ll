; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2yaudio.c_snd_usX2Y_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.snd_usX2Y_substream** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"snd_usX2Y_hw_free(%p)\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@state_STOPPED = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_PREPARED = common dso_local global i64 0, align 8
@state_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usX2Y_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_usX2Y_substream*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %11, align 8
  store %struct.snd_usX2Y_substream* %12, %struct.snd_usX2Y_substream** %4, align 8
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_printdd(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %18)
  %20 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %80

25:                                               ; preds = %1
  %26 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %27 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %29, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %32 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %30, i64 %31
  %33 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %32, align 8
  store %struct.snd_usX2Y_substream* %33, %struct.snd_usX2Y_substream** %5, align 8
  %34 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %34, i32 0, i32 1
  %36 = load i32, i32* @state_STOPPED, align 4
  %37 = call i32 @atomic_set(i32* %35, i32 %36)
  %38 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %39 = call i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %38)
  %40 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %41 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %25
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %46 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %53 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = icmp ne %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %51
  %61 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %62 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STATE_PREPARED, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60, %51, %44, %25
  %73 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %74 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %73, i32 0, i32 1
  %75 = load i32, i32* @state_STOPPED, align 4
  %76 = call i32 @atomic_set(i32* %74, i32 %75)
  %77 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %78 = call i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %77)
  br label %79

79:                                               ; preds = %72, %60
  br label %102

80:                                               ; preds = %1
  %81 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %82 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %84, align 8
  %86 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %87 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %85, i64 %86
  %88 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %87, align 8
  store %struct.snd_usX2Y_substream* %88, %struct.snd_usX2Y_substream** %6, align 8
  %89 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %90 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %89, i32 0, i32 1
  %91 = call i64 @atomic_read(i32* %90)
  %92 = load i64, i64* @state_PREPARED, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %80
  %95 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %96 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %95, i32 0, i32 1
  %97 = load i32, i32* @state_STOPPED, align 4
  %98 = call i32 @atomic_set(i32* %96, i32 %97)
  %99 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %100 = call i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream* %99)
  br label %101

101:                                              ; preds = %94, %80
  br label %102

102:                                              ; preds = %101, %79
  %103 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %104 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %109 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %108)
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_printdd(i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usX2Y_urbs_release(%struct.snd_usX2Y_substream*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
