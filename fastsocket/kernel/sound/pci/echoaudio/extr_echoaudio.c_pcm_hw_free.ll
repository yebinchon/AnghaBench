; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.echoaudio = type { i32, i32** }
%struct.audiopipe = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"pcm_hw_free(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"pcm_hw_freed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca %struct.audiopipe*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.echoaudio* %6, %struct.echoaudio** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.audiopipe*
  store %struct.audiopipe* %12, %struct.audiopipe** %4, align 8
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %17 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %22 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DE_HWP(i8* %24)
  %26 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %27 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %28 = call i32 @free_pipes(%struct.echoaudio* %26, %struct.audiopipe* %27)
  %29 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %33 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %37 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %36, i32 0, i32 0
  store i64 -1, i64* %37, align 8
  br label %38

38:                                               ; preds = %20, %1
  %39 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %40 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = call i32 @DE_HWP(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %44 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %43)
  ret i32 0
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DE_HWP(i8*) #1

declare dso_local i32 @free_pipes(%struct.echoaudio*, %struct.audiopipe*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
