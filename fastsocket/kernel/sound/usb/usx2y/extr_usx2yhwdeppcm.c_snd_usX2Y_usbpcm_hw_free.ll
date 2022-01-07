; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_usbpcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_usbpcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.snd_usX2Y_substream** }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"snd_usX2Y_usbpcm_hw_free(%p)\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@state_STOPPED = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_PREPARED = common dso_local global i64 0, align 8
@state_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usX2Y_usbpcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_usbpcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_usX2Y_substream*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %3, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %12, align 8
  store %struct.snd_usX2Y_substream* %13, %struct.snd_usX2Y_substream** %4, align 8
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %20 = add nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %18, i64 %21
  %23 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %22, align 8
  store %struct.snd_usX2Y_substream* %23, %struct.snd_usX2Y_substream** %5, align 8
  %24 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %25 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %30 = call i32 @snd_printdd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %29)
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %106

36:                                               ; preds = %1
  %37 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %40, align 8
  %42 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %41, i64 %43
  %45 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %44, align 8
  store %struct.snd_usX2Y_substream* %45, %struct.snd_usX2Y_substream** %6, align 8
  %46 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %47 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %46, i32 0, i32 1
  %48 = load i32, i32* @state_STOPPED, align 4
  %49 = call i32 @atomic_set(i32* %47, i32 %48)
  %50 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %51 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %50)
  %52 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %53 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %36
  %57 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %58 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %65 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = icmp ne %struct.TYPE_5__* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %74 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SNDRV_PCM_STATE_PREPARED, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %72, %63, %56, %36
  %85 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %86 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %85, i32 0, i32 1
  %87 = load i32, i32* @state_STOPPED, align 4
  %88 = call i32 @atomic_set(i32* %86, i32 %87)
  %89 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %90 = icmp ne %struct.snd_usX2Y_substream* null, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %93 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %92, i32 0, i32 1
  %94 = load i32, i32* @state_STOPPED, align 4
  %95 = call i32 @atomic_set(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %98 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %97)
  %99 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %100 = icmp ne %struct.snd_usX2Y_substream* null, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %103 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %72
  br label %142

106:                                              ; preds = %1
  %107 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %108 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %110, align 8
  %112 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %113 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %111, i64 %112
  %114 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %113, align 8
  store %struct.snd_usX2Y_substream* %114, %struct.snd_usX2Y_substream** %7, align 8
  %115 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %116 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %115, i32 0, i32 1
  %117 = call i64 @atomic_read(i32* %116)
  %118 = load i64, i64* @state_PREPARED, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %106
  %121 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %122 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %121, i32 0, i32 1
  %123 = load i32, i32* @state_STOPPED, align 4
  %124 = call i32 @atomic_set(i32* %122, i32 %123)
  %125 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %126 = icmp ne %struct.snd_usX2Y_substream* null, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %129 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %128, i32 0, i32 1
  %130 = load i32, i32* @state_STOPPED, align 4
  %131 = call i32 @atomic_set(i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %120
  %133 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %134 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %133)
  %135 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %136 = icmp ne %struct.snd_usX2Y_substream* null, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %139 = call i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream* %138)
  br label %140

140:                                              ; preds = %137, %132
  br label %141

141:                                              ; preds = %140, %106
  br label %142

142:                                              ; preds = %141, %105
  %143 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %144 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %149 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %148)
  ret i32 %149
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_printdd(i8*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usX2Y_usbpcm_urbs_release(%struct.snd_usX2Y_substream*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
