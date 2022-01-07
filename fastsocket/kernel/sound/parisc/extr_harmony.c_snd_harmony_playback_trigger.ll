; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_snd_harmony_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_harmony = type { i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@HARMONY_PNXTADD = common dso_local global i32 0, align 4
@HARMONY_RNXTADD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_harmony_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_harmony_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_harmony*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.snd_harmony* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_harmony* %8, %struct.snd_harmony** %6, align 8
  %9 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %10 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %19 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %60 [
    i32 130, label %22
    i32 129, label %44
    i32 132, label %59
    i32 131, label %59
    i32 128, label %59
  ]

22:                                               ; preds = %17
  %23 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %24 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %27 = load i32, i32* @HARMONY_PNXTADD, align 4
  %28 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %29 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @harmony_write(%struct.snd_harmony* %26, i32 %27, i32 %31)
  %33 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %34 = load i32, i32* @HARMONY_RNXTADD, align 4
  %35 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %36 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @harmony_write(%struct.snd_harmony* %33, i32 %34, i32 %38)
  %40 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %41 = call i32 @harmony_unmute(%struct.snd_harmony* %40)
  %42 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %43 = call i32 @harmony_enable_interrupts(%struct.snd_harmony* %42)
  br label %67

44:                                               ; preds = %17
  %45 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %46 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %49 = call i32 @harmony_mute(%struct.snd_harmony* %48)
  %50 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %51 = load i32, i32* @HARMONY_PNXTADD, align 4
  %52 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %53 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @harmony_write(%struct.snd_harmony* %50, i32 %51, i32 %55)
  %57 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %58 = call i32 @harmony_disable_interrupts(%struct.snd_harmony* %57)
  br label %67

59:                                               ; preds = %17, %17, %17
  br label %60

60:                                               ; preds = %17, %59
  %61 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %62 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = call i32 (...) @snd_BUG()
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %44, %22
  %68 = load %struct.snd_harmony*, %struct.snd_harmony** %6, align 8
  %69 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %60, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.snd_harmony* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @harmony_write(%struct.snd_harmony*, i32, i32) #1

declare dso_local i32 @harmony_unmute(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_enable_interrupts(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_mute(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_disable_interrupts(%struct.snd_harmony*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
