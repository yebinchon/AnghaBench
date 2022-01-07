; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_sw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_sw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm_sw_params = type { i64, i64, i64, i64, i64, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SNDRV_PCM_TSTAMP_LAST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_sw_params*)* @snd_pcm_sw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_sw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_sw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_sw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_sw_params* %1, %struct.snd_pcm_sw_params** %5, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %162

14:                                               ; preds = %2
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  store %struct.snd_pcm_runtime* %17, %struct.snd_pcm_runtime** %6, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %18)
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %28)
  %30 = load i32, i32* @EBADFD, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %162

32:                                               ; preds = %14
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %33)
  %35 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SNDRV_PCM_TSTAMP_LAST, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %162

43:                                               ; preds = %32
  %44 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %162

51:                                               ; preds = %43
  %52 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %162

67:                                               ; preds = %59
  br label %91

68:                                               ; preds = %51
  %69 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %162

79:                                               ; preds = %68
  %80 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %162

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %67
  store i32 0, i32* %7, align 4
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %93 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %92)
  %94 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %108 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %107, i32 0, i32 7
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %127 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %132 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.snd_pcm_sw_params*, %struct.snd_pcm_sw_params** %5, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_sw_params, %struct.snd_pcm_sw_params* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %137 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %91
  %140 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %147 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %152 = load i32, i32* @ULONG_MAX, align 4
  %153 = call i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %145, %139
  %155 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %156 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %157 = call i32 @snd_pcm_update_state(%struct.snd_pcm_substream* %155, %struct.snd_pcm_runtime* %156)
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %154, %91
  %159 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %160 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %159)
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %158, %87, %76, %64, %48, %40, %27, %11
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_playback_silence(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_update_state(%struct.snd_pcm_substream*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
