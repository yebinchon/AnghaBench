; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_playback_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atmel_ac97c = type { i32*, i64, i64, i32 }

@opened_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @atmel_ac97c_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.atmel_ac97c*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %4)
  store %struct.atmel_ac97c* %5, %struct.atmel_ac97c** %3, align 8
  %6 = call i32 @mutex_lock(i32* @opened_mutex)
  %7 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = call i32 @mutex_unlock(i32* @opened_mutex)
  %22 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  ret i32 0
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
