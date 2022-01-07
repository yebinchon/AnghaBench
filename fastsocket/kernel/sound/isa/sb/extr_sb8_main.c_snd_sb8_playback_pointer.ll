; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_main.c_snd_sb8_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_sb = type { i64, i32, i32 }

@SB_MODE_PLAYBACK_8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sb8_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sb8_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_sb* %7, %struct.snd_sb** %4, align 8
  %8 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SB_MODE_PLAYBACK_8, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %16 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %19 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @snd_dma_pointer(i32 %17, i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @bytes_to_frames(i32 %24, i64 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_dma_pointer(i32, i32) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
