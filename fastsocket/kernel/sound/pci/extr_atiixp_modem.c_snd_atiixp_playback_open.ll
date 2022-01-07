; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_atiixp_modem.c_snd_atiixp_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.atiixp_modem = type { i32, i32* }

@ATI_DMA_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_atiixp_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.atiixp_modem*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.atiixp_modem* %7, %struct.atiixp_modem** %4, align 8
  %8 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %9 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %13 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @snd_atiixp_pcm_open(%struct.snd_pcm_substream* %11, i32* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.atiixp_modem*, %struct.atiixp_modem** %4, align 8
  %19 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.atiixp_modem* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_atiixp_pcm_open(%struct.snd_pcm_substream*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
