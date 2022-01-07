; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_hwdep_pcm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_hwdep = type { %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_2__ = type { i32 }

@USX2Y_STAT_CHIP_MMAP_PCM_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_hwdep*, %struct.file*)* @snd_usX2Y_hwdep_pcm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_hwdep_pcm_release(%struct.snd_hwdep* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.snd_hwdep*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_hwdep* %0, %struct.snd_hwdep** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %8 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %7, i32 0, i32 0
  %9 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  store %struct.snd_card* %9, %struct.snd_card** %5, align 8
  %10 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %11 = call i32 @usX2Y_pcms_lock_check(%struct.snd_card* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 0, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @USX2Y_STAT_CHIP_MMAP_PCM_URBS, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.snd_hwdep*, %struct.snd_hwdep** %3, align 8
  %18 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %17, i32 0, i32 0
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  %20 = call %struct.TYPE_2__* @usX2Y(%struct.snd_card* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %16
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %14, %2
  %25 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %26 = call i32 @usX2Y_pcms_unlock(%struct.snd_card* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @usX2Y_pcms_lock_check(%struct.snd_card*) #1

declare dso_local %struct.TYPE_2__* @usX2Y(%struct.snd_card*) #1

declare dso_local i32 @usX2Y_pcms_unlock(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
