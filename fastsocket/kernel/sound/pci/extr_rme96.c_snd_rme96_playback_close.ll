; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme96 = type { i32, %struct.TYPE_4__*, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RME96_WCR_ADAT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme96_playback_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.rme96* %6, %struct.rme96** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.rme96*, %struct.rme96** %3, align 8
  %8 = getelementptr inbounds %struct.rme96, %struct.rme96* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.rme96*, %struct.rme96** %3, align 8
  %11 = call i64 @RME96_ISPLAYING(%struct.rme96* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.rme96*, %struct.rme96** %3, align 8
  %15 = call i32 @snd_rme96_playback_stop(%struct.rme96* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.rme96*, %struct.rme96** %3, align 8
  %18 = getelementptr inbounds %struct.rme96, %struct.rme96* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load %struct.rme96*, %struct.rme96** %3, align 8
  %20 = getelementptr inbounds %struct.rme96, %struct.rme96* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.rme96*, %struct.rme96** %3, align 8
  %22 = getelementptr inbounds %struct.rme96, %struct.rme96* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RME96_WCR_ADAT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.rme96*, %struct.rme96** %3, align 8
  %29 = getelementptr inbounds %struct.rme96, %struct.rme96* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %16
  %34 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %35 = load %struct.rme96*, %struct.rme96** %3, align 8
  %36 = getelementptr inbounds %struct.rme96, %struct.rme96* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 4
  %44 = load %struct.rme96*, %struct.rme96** %3, align 8
  %45 = getelementptr inbounds %struct.rme96, %struct.rme96* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %48 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.rme96*, %struct.rme96** %3, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @snd_ctl_notify(i32 %46, i32 %49, i32* %53)
  br label %55

55:                                               ; preds = %33, %16
  ret i32 0
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @RME96_ISPLAYING(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_playback_stop(%struct.rme96*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
