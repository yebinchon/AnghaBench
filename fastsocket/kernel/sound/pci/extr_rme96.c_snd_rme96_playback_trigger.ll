; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_rme96.c_snd_rme96_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.rme96 = type { %struct.snd_pcm_substream* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_rme96_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rme96*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.rme96* %8, %struct.rme96** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %60 [
    i32 129, label %10
    i32 128, label %27
    i32 131, label %44
    i32 130, label %52
  ]

10:                                               ; preds = %2
  %11 = load %struct.rme96*, %struct.rme96** %6, align 8
  %12 = call i32 @RME96_ISPLAYING(%struct.rme96* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %16 = load %struct.rme96*, %struct.rme96** %6, align 8
  %17 = getelementptr inbounds %struct.rme96, %struct.rme96* %16, i32 0, i32 0
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %17, align 8
  %19 = icmp ne %struct.snd_pcm_substream* %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %64

23:                                               ; preds = %14
  %24 = load %struct.rme96*, %struct.rme96** %6, align 8
  %25 = call i32 @snd_rme96_playback_start(%struct.rme96* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %10
  br label %63

27:                                               ; preds = %2
  %28 = load %struct.rme96*, %struct.rme96** %6, align 8
  %29 = call i32 @RME96_ISPLAYING(%struct.rme96* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %33 = load %struct.rme96*, %struct.rme96** %6, align 8
  %34 = getelementptr inbounds %struct.rme96, %struct.rme96* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %34, align 8
  %36 = icmp ne %struct.snd_pcm_substream* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load %struct.rme96*, %struct.rme96** %6, align 8
  %42 = call i32 @snd_rme96_playback_stop(%struct.rme96* %41)
  br label %43

43:                                               ; preds = %40, %27
  br label %63

44:                                               ; preds = %2
  %45 = load %struct.rme96*, %struct.rme96** %6, align 8
  %46 = call i32 @RME96_ISPLAYING(%struct.rme96* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.rme96*, %struct.rme96** %6, align 8
  %50 = call i32 @snd_rme96_playback_stop(%struct.rme96* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %63

52:                                               ; preds = %2
  %53 = load %struct.rme96*, %struct.rme96** %6, align 8
  %54 = call i32 @RME96_ISPLAYING(%struct.rme96* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct.rme96*, %struct.rme96** %6, align 8
  %58 = call i32 @snd_rme96_playback_start(%struct.rme96* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %52
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %59, %51, %43, %26
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60, %37, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.rme96* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @RME96_ISPLAYING(%struct.rme96*) #1

declare dso_local i32 @snd_rme96_playback_start(%struct.rme96*, i32) #1

declare dso_local i32 @snd_rme96_playback_stop(%struct.rme96*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
