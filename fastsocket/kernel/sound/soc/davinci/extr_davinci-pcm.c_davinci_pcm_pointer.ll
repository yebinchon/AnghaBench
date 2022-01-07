; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-pcm.c_davinci_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, %struct.davinci_runtime_data* }
%struct.davinci_runtime_data = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @davinci_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.davinci_runtime_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %13, align 8
  store %struct.davinci_runtime_data* %14, %struct.davinci_runtime_data** %4, align 8
  %15 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %16 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %19 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @edma_get_position(i32 %20, i64* %7, i64* %8)
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %6, align 8
  br label %39

33:                                               ; preds = %1
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.davinci_runtime_data*, %struct.davinci_runtime_data** %4, align 8
  %41 = getelementptr inbounds %struct.davinci_runtime_data, %struct.davinci_runtime_data* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %43, i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp uge i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @edma_get_position(i32, i64*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
