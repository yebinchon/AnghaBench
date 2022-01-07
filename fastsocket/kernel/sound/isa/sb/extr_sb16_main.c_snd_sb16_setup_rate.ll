; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_setup_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_main.c_snd_sb16_setup_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { i32, i16, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SB_MODE_PLAYBACK_16 = common dso_local global i32 0, align 4
@SB_MODE_CAPTURE_16 = common dso_local global i32 0, align 4
@SB_RATE_LOCK = common dso_local global i32 0, align 4
@SB_DSP_SAMPLE_RATE_IN = common dso_local global i16 0, align 2
@SB_DSP_SAMPLE_RATE_OUT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_sb*, i16, i32)* @snd_sb16_setup_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb16_setup_rate(%struct.snd_sb* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %13 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @SB_MODE_PLAYBACK_16, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @SB_MODE_CAPTURE_16, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = and i32 %14, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %28 = call i32 @snd_sb_ack_16bit(%struct.snd_sb* %27)
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %31 = call i32 @snd_sb_ack_8bit(%struct.snd_sb* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %34 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SB_RATE_LOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %32
  %40 = load i16, i16* %5, align 2
  %41 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %42 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %41, i32 0, i32 1
  store i16 %40, i16* %42, align 4
  %43 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %44 = load i16, i16* @SB_DSP_SAMPLE_RATE_IN, align 2
  %45 = call i32 @snd_sbdsp_command(%struct.snd_sb* %43, i16 zeroext %44)
  %46 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = ashr i32 %48, 8
  %50 = trunc i32 %49 to i16
  %51 = call i32 @snd_sbdsp_command(%struct.snd_sb* %46, i16 zeroext %50)
  %52 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %53 = load i16, i16* %5, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i16
  %57 = call i32 @snd_sbdsp_command(%struct.snd_sb* %52, i16 zeroext %56)
  %58 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %59 = load i16, i16* @SB_DSP_SAMPLE_RATE_OUT, align 2
  %60 = call i32 @snd_sbdsp_command(%struct.snd_sb* %58, i16 zeroext %59)
  %61 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %62 = load i16, i16* %5, align 2
  %63 = zext i16 %62 to i32
  %64 = ashr i32 %63, 8
  %65 = trunc i32 %64 to i16
  %66 = call i32 @snd_sbdsp_command(%struct.snd_sb* %61, i16 zeroext %65)
  %67 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %68 = load i16, i16* %5, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %69, 255
  %71 = trunc i32 %70 to i16
  %72 = call i32 @snd_sbdsp_command(%struct.snd_sb* %67, i16 zeroext %71)
  br label %73

73:                                               ; preds = %39, %32
  %74 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %75 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %74, i32 0, i32 2
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_sb_ack_16bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sb_ack_8bit(%struct.snd_sb*) #1

declare dso_local i32 @snd_sbdsp_command(%struct.snd_sb*, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
