; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.fm801 = type { i32, i32, i32, i64, i32 }

@FM801_START = common dso_local global i32 0, align 4
@PLY_COUNT = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@FM801_IRQ_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_fm801_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.fm801*, align 8
  %5 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.fm801* %7, %struct.fm801** %4, align 8
  %8 = load %struct.fm801*, %struct.fm801** %4, align 8
  %9 = getelementptr inbounds %struct.fm801, %struct.fm801* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FM801_START, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.fm801*, %struct.fm801** %4, align 8
  %17 = getelementptr inbounds %struct.fm801, %struct.fm801* %16, i32 0, i32 4
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.fm801*, %struct.fm801** %4, align 8
  %20 = getelementptr inbounds %struct.fm801, %struct.fm801* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fm801*, %struct.fm801** %4, align 8
  %23 = getelementptr inbounds %struct.fm801, %struct.fm801* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = add nsw i32 %21, %25
  %27 = load %struct.fm801*, %struct.fm801** %4, align 8
  %28 = load i32, i32* @PLY_COUNT, align 4
  %29 = call i32 @FM801_REG(%struct.fm801* %27, i32 %28)
  %30 = call i32 @inw(i32 %29)
  %31 = sub nsw i32 %26, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load %struct.fm801*, %struct.fm801** %4, align 8
  %34 = load i32, i32* @IRQ_STATUS, align 4
  %35 = call i32 @FM801_REG(%struct.fm801* %33, i32 %34)
  %36 = call i32 @inw(i32 %35)
  %37 = load i32, i32* @FM801_IRQ_PLAYBACK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %15
  %41 = load %struct.fm801*, %struct.fm801** %4, align 8
  %42 = getelementptr inbounds %struct.fm801, %struct.fm801* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load %struct.fm801*, %struct.fm801** %4, align 8
  %48 = getelementptr inbounds %struct.fm801, %struct.fm801* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = urem i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %40, %15
  %53 = load %struct.fm801*, %struct.fm801** %4, align 8
  %54 = getelementptr inbounds %struct.fm801, %struct.fm801* %53, i32 0, i32 4
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @bytes_to_frames(i32 %58, i64 %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.fm801* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @FM801_REG(%struct.fm801*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @bytes_to_frames(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
