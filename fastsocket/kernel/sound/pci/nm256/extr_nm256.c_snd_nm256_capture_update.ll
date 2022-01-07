; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/nm256/extr_nm256.c_snd_nm256_capture_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32, %struct.nm256_stream* }
%struct.nm256_stream = type { i64, i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nm256*)* @snd_nm256_capture_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_nm256_capture_update(%struct.nm256* %0) #0 {
  %2 = alloca %struct.nm256*, align 8
  %3 = alloca %struct.nm256_stream*, align 8
  store %struct.nm256* %0, %struct.nm256** %2, align 8
  %4 = load %struct.nm256*, %struct.nm256** %2, align 8
  %5 = getelementptr inbounds %struct.nm256, %struct.nm256* %4, i32 0, i32 1
  %6 = load %struct.nm256_stream*, %struct.nm256_stream** %5, align 8
  %7 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %8 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %6, i64 %7
  store %struct.nm256_stream* %8, %struct.nm256_stream** %3, align 8
  %9 = load %struct.nm256_stream*, %struct.nm256_stream** %3, align 8
  %10 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.nm256_stream*, %struct.nm256_stream** %3, align 8
  %15 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.nm256*, %struct.nm256** %2, align 8
  %20 = getelementptr inbounds %struct.nm256, %struct.nm256* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.nm256_stream*, %struct.nm256_stream** %3, align 8
  %23 = getelementptr inbounds %struct.nm256_stream, %struct.nm256_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @snd_pcm_period_elapsed(i64 %24)
  %26 = load %struct.nm256*, %struct.nm256** %2, align 8
  %27 = getelementptr inbounds %struct.nm256, %struct.nm256* %26, i32 0, i32 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.nm256*, %struct.nm256** %2, align 8
  %30 = load %struct.nm256_stream*, %struct.nm256_stream** %3, align 8
  %31 = call i32 @snd_nm256_capture_mark(%struct.nm256* %29, %struct.nm256_stream* %30)
  br label %32

32:                                               ; preds = %18, %13, %1
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_nm256_capture_mark(%struct.nm256*, %struct.nm256_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
