; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32, i32, %struct.loopback_pcm* }
%struct.loopback_pcm = type { i32, i32, %struct.TYPE_3__*, i8*, i64, i64, i8*, i8*, i64, %struct.loopback_cable* }
%struct.TYPE_3__ = type { i32 }
%struct.loopback_cable = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 6
  %14 = load %struct.loopback_pcm*, %struct.loopback_pcm** %13, align 8
  store %struct.loopback_pcm* %14, %struct.loopback_pcm** %5, align 8
  %15 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %16 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %15, i32 0, i32 9
  %17 = load %struct.loopback_cable*, %struct.loopback_cable** %16, align 8
  store %struct.loopback_cable* %17, %struct.loopback_cable** %6, align 8
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_pcm_format_width(i32 %20)
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %1
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %137

40:                                               ; preds = %34
  %41 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %42 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %41, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %43, i32 %46)
  %48 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %49 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %40
  %56 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %57 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %56, i32 0, i32 6
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %60 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = call i32 @snd_pcm_format_set_silence(i32 %63, i32 %66, i32 %73)
  br label %75

75:                                               ; preds = %55, %40
  %76 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %77 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %79 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %82 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %85 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %87 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @frames_to_bytes(%struct.snd_pcm_runtime* %86, i32 %89)
  %91 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %92 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %94 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %99 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %100, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %75
  %109 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %110 = call %struct.TYPE_4__* @get_setup(%struct.loopback_pcm* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114, %75
  %121 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %122 = call i32 @params_change(%struct.snd_pcm_substream* %121)
  br label %123

123:                                              ; preds = %120, %114, %108
  %124 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = shl i32 1, %126
  %128 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %129 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %133 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @mutex_unlock(i32* %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %123, %37
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i8* @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_format_set_silence(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @get_setup(%struct.loopback_pcm*) #1

declare dso_local i32 @params_change(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
