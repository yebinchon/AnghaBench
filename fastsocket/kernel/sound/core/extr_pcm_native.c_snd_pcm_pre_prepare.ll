; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_pre_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_pre_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_DISCONNECTED = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_pcm_pre_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_pre_prepare(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %6, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STATE_DISCONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %2
  %26 = load i32, i32* @EBADFD, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %17
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = call i64 @snd_pcm_running(%struct.snd_pcm_substream* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %32, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @snd_pcm_running(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
