; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_playback_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_playback_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_pcm_file* }
%struct.snd_pcm_file = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @snd_pcm_playback_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_playback_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_pcm_file*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %12, align 8
  store %struct.snd_pcm_file* %13, %struct.snd_pcm_file** %6, align 8
  %14 = load %struct.snd_pcm_file*, %struct.snd_pcm_file** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_file, %struct.snd_pcm_file* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %18 = call i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %25, align 8
  store %struct.snd_pcm_runtime* %26, %struct.snd_pcm_runtime** %8, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %28, i32 0, i32 2
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32* %29, i32* %30)
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %33 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %32)
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %35 = call i32 @snd_pcm_playback_avail(%struct.snd_pcm_runtime* %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %55 [
    i32 128, label %41
    i32 129, label %41
    i32 130, label %41
    i32 131, label %54
  ]

41:                                               ; preds = %23, %23, %23
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %42, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @POLLOUT, align 4
  %51 = load i32, i32* @POLLWRNORM, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  br label %61

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %23, %53
  store i32 0, i32* %9, align 4
  br label %61

55:                                               ; preds = %23
  %56 = load i32, i32* @POLLOUT, align 4
  %57 = load i32, i32* @POLLWRNORM, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @POLLERR, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %55, %54, %49
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %63 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @PCM_RUNTIME_CHECK(%struct.snd_pcm_substream*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_playback_avail(%struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
