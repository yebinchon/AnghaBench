; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd.c_snd_msnd_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_msnd = type { %struct.snd_pcm_substream*, i32, i32 }

@F_AUDIO_WRITE_INUSE = common dso_local global i32 0, align 4
@F_WRITING = common dso_local global i32 0, align 4
@snd_msnd_playback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_msnd_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_msnd* %9, %struct.snd_msnd** %4, align 8
  %10 = load i32, i32* @F_AUDIO_WRITE_INUSE, align 4
  %11 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %12 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %11, i32 0, i32 2
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @F_WRITING, align 4
  %15 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %16 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %15, i32 0, i32 2
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %19 = call i32 @snd_msnd_enable_irq(%struct.snd_msnd* %18)
  %20 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %21 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  store i32 12288, i32* %26, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %29 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %28, i32 0, i32 0
  store %struct.snd_pcm_substream* %27, %struct.snd_pcm_substream** %29, align 8
  %30 = load i32, i32* @snd_msnd_playback, align 4
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local %struct.snd_msnd* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @snd_msnd_enable_irq(%struct.snd_msnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
