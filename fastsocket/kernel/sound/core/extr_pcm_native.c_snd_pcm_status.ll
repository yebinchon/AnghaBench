; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64, i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_status = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@SNDRV_PCM_TSTAMP_ENABLE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_RUNNING = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_status(%struct.snd_pcm_substream* %0, %struct.snd_pcm_status* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_status*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_status* %1, %struct.snd_pcm_status** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 1
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %9)
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %164

31:                                               ; preds = %2
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %42 = call i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream* %41)
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SNDRV_PCM_TSTAMP_ENABLE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  br label %62

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %59 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %59, i32 0, i32 7
  %61 = call i32 @snd_pcm_gettime(%struct.snd_pcm_runtime* %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 6
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %62
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %84 = call i64 @snd_pcm_playback_avail(%struct.snd_pcm_runtime* %83)
  %85 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %102, label %94

94:                                               ; preds = %82
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %94, %82
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  br label %122

119:                                              ; preds = %94
  %120 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %102
  br label %149

123:                                              ; preds = %62
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %125 = call i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime* %124)
  %126 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %129 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %128, i32 0, i32 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SNDRV_PCM_STATE_RUNNING, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %140 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %144 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  br label %148

145:                                              ; preds = %123
  %146 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %135
  br label %149

149:                                              ; preds = %148, %122
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %154 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %156 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.snd_pcm_status*, %struct.snd_pcm_status** %4, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_status, %struct.snd_pcm_status* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %161 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %149, %30
  %165 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %166 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %165)
  ret i32 0
}

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_update_hw_ptr(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_gettime(%struct.snd_pcm_runtime*, i32*) #1

declare dso_local i64 @snd_pcm_playback_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i64 @snd_pcm_capture_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
