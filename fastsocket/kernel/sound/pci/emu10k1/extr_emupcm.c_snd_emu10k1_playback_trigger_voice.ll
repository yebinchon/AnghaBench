; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_trigger_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_emu10k1_voice = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }

@PITCH_48000 = common dso_local global i32 0, align 4
@PTRX_PITCHTARGET = common dso_local global i32 0, align 4
@PLAYBACK_EFX = common dso_local global i64 0, align 8
@CPF_CURRENTPITCH = common dso_local global i32 0, align 4
@IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_voice*, i32, i32)* @snd_emu10k1_playback_trigger_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_playback_trigger_voice(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_voice* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_emu10k1_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store %struct.snd_emu10k1_voice* %1, %struct.snd_emu10k1_voice** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %15 = icmp eq %struct.snd_emu10k1_voice* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %81

17:                                               ; preds = %4
  %18 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %21, align 8
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %9, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %24, align 8
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %10, align 8
  %26 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_emu10k1_rate_to_pitch(i32 %31)
  %33 = ashr i32 %32, 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = load i32, i32* @PITCH_48000, align 4
  store i32 %41, i32* %13, align 4
  br label %47

42:                                               ; preds = %17
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @emu10k1_calc_pitch_target(i32 %45)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %42, %40
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %49 = load i32, i32* @PTRX_PITCHTARGET, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.snd_emu10k1_voice*, %struct.snd_emu10k1_voice** %6, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_voice, %struct.snd_emu10k1_voice* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PLAYBACK_EFX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55, %47
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %65 = load i32, i32* @CPF_CURRENTPITCH, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %55
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %71 = load i32, i32* @IP, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @snd_emu10k1_voice_intr_enable(%struct.snd_emu10k1* %78, i32 %79)
  br label %81

81:                                               ; preds = %16, %77, %69
  ret void
}

declare dso_local i32 @snd_emu10k1_rate_to_pitch(i32) #1

declare dso_local i32 @emu10k1_calc_pitch_target(i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_voice_intr_enable(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
