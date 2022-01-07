; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c_pxa2xx_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64, %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pxa2xx_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.pxa2xx_runtime_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 2
  %12 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %11, align 8
  store %struct.pxa2xx_runtime_data* %12, %struct.pxa2xx_runtime_data** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %4, align 8
  %20 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @DSADR(i32 %21)
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %4, align 8
  %25 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @DTADR(i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i64 [ %22, %18 ], [ %27, %23 ]
  store i64 %29, i64* %5, align 8
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %30, i64 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

declare dso_local i64 @DSADR(i32) #1

declare dso_local i64 @DTADR(i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
