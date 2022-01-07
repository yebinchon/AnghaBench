; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_als4000.c_snd_als4000_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_sb = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SB_RATE_LOCK_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_als4000_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_sb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_sb* %10, %struct.snd_sb** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %12 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %42 [
    i32 130, label %15
    i32 131, label %15
    i32 129, label %28
    i32 128, label %28
  ]

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @SB_RATE_LOCK_PLAYBACK, align 4
  %17 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %18 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %22 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %23 = call i64 @playback_cmd(%struct.snd_sb* %22)
  %24 = bitcast %struct.TYPE_2__* %7 to i64*
  store i64 %23, i64* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_sbdsp_command(%struct.snd_sb* %21, i32 %26)
  br label %45

28:                                               ; preds = %2, %2
  %29 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %30 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %31 = call i64 @playback_cmd(%struct.snd_sb* %30)
  %32 = bitcast %struct.TYPE_2__* %8 to i64*
  store i64 %31, i64* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_sbdsp_command(%struct.snd_sb* %29, i32 %34)
  %36 = load i32, i32* @SB_RATE_LOCK_PLAYBACK, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %28, %15
  %46 = load %struct.snd_sb*, %struct.snd_sb** %5, align 8
  %47 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.snd_sb* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i32) #1

declare dso_local i64 @playback_cmd(%struct.snd_sb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
