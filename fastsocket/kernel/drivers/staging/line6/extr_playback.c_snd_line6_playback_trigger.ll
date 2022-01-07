; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_snd_line6_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/line6/extr_playback.c_snd_line6_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_line6_pcm = type { i32, i64 }

@BIT_RUNNING_PLAYBACK = common dso_local global i32 0, align 4
@BIT_PAUSE_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_line6_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_line6_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_line6_pcm* %9, %struct.snd_line6_pcm** %6, align 8
  %10 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %11 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %52 [
    i32 129, label %13
    i32 128, label %32
    i32 131, label %42
    i32 130, label %47
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @BIT_RUNNING_PLAYBACK, align 4
  %15 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %16 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %15, i32 0, i32 0
  %17 = call i32 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = call i32 @submit_audio_out_all_urbs(%struct.snd_pcm_substream* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @BIT_RUNNING_PLAYBACK, align 4
  %26 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %13
  br label %55

32:                                               ; preds = %2
  %33 = load i32, i32* @BIT_RUNNING_PLAYBACK, align 4
  %34 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %34, i32 0, i32 0
  %36 = call i32 @test_and_clear_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %40 = call i32 @unlink_audio_out_urbs(%struct.snd_line6_pcm* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %55

42:                                               ; preds = %2
  %43 = load i32, i32* @BIT_PAUSE_PLAYBACK, align 4
  %44 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  br label %55

47:                                               ; preds = %2
  %48 = load i32, i32* @BIT_PAUSE_PLAYBACK, align 4
  %49 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %49, i32 0, i32 0
  %51 = call i32 @clear_bit(i32 %48, i32* %50)
  br label %55

52:                                               ; preds = %2
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %47, %42, %41, %31
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.snd_line6_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @submit_audio_out_all_urbs(%struct.snd_pcm_substream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @unlink_audio_out_urbs(%struct.snd_line6_pcm*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
