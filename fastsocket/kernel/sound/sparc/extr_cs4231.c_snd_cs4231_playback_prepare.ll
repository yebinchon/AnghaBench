; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_snd_cs4231_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_cs4231 = type { i32*, i32, i64 }

@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_PIO = common dso_local global i32 0, align 4
@CS4231_IFACE_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs4231_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cs4231*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_cs4231* %7, %struct.snd_cs4231** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %12 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %16 = load i32, i32* @CS4231_PLAYBACK_PIO, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %20 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @CS4231_IFACE_CTRL, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %18
  store i32 %25, i32* %23, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 65536
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %33 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.snd_cs4231*, %struct.snd_cs4231** %3, align 8
  %35 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %34, i32 0, i32 1
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
