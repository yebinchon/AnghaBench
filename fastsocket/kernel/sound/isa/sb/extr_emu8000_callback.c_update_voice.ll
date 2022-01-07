; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_callback.c_update_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_callback.c_update_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_voice = type { %struct.TYPE_2__*, %struct.snd_emu8000* }
%struct.TYPE_2__ = type { i64* }
%struct.snd_emu8000 = type { i32 }

@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PITCH = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PAN = common dso_local global i32 0, align 4
@EMUX_MD_REALTIME_PAN = common dso_local global i64 0, align 8
@SNDRV_EMUX_UPDATE_FMMOD = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_TREMFREQ = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_FM2FRQ2 = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux_voice*, i32)* @update_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_voice(%struct.snd_emux_voice* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emux_voice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu8000*, align 8
  store %struct.snd_emux_voice* %0, %struct.snd_emux_voice** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %6, i32 0, i32 1
  %8 = load %struct.snd_emu8000*, %struct.snd_emu8000** %7, align 8
  store %struct.snd_emu8000* %8, %struct.snd_emu8000** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %15 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %16 = call i32 @set_volume(%struct.snd_emu8000* %14, %struct.snd_emux_voice* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SNDRV_EMUX_UPDATE_PITCH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %24 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %25 = call i32 @set_pitch(%struct.snd_emu8000* %23, %struct.snd_emux_voice* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %33 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EMUX_MD_REALTIME_PAN, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %43 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %44 = call i32 @set_pan(%struct.snd_emu8000* %42, %struct.snd_emux_voice* %43)
  br label %45

45:                                               ; preds = %41, %31, %26
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SNDRV_EMUX_UPDATE_FMMOD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %52 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %53 = call i32 @set_fmmod(%struct.snd_emu8000* %51, %struct.snd_emux_voice* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SNDRV_EMUX_UPDATE_TREMFREQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %61 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %62 = call i32 @set_tremfreq(%struct.snd_emu8000* %60, %struct.snd_emux_voice* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SNDRV_EMUX_UPDATE_FM2FRQ2, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %70 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %71 = call i32 @set_fm2frq2(%struct.snd_emu8000* %69, %struct.snd_emux_voice* %70)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @SNDRV_EMUX_UPDATE_Q, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %79 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %3, align 8
  %80 = call i32 @set_filterQ(%struct.snd_emu8000* %78, %struct.snd_emux_voice* %79)
  br label %81

81:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @set_volume(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_pitch(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_pan(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_fmmod(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_tremfreq(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_fm2frq2(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

declare dso_local i32 @set_filterQ(%struct.snd_emu8000*, %struct.snd_emux_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
