; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_update_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_update_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux_voice*, i32)* }
%struct.snd_emux_voice = type { i32*, i32*, i32 }

@SNDRV_EMUX_UPDATE_VOLUME = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PITCH = common dso_local global i32 0, align 4
@SNDRV_EMUX_UPDATE_PAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emux_voice*, i32)* @update_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_voice(%struct.snd_emux* %0, %struct.snd_emux_voice* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_voice*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %8 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @STATE_IS_PLAYING(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %63

13:                                               ; preds = %3
  %14 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %15 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13
  br label %63

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SNDRV_EMUX_UPDATE_VOLUME, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %31 = call i32 @calc_volume(%struct.snd_emux_voice* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SNDRV_EMUX_UPDATE_PITCH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %39 = call i32 @calc_pitch(%struct.snd_emux_voice* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %47 = call i32 @calc_pan(%struct.snd_emux_voice* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SNDRV_EMUX_UPDATE_PAN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %63

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %40
  %56 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %57 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.snd_emux_voice*, i32)*, i32 (%struct.snd_emux_voice*, i32)** %58, align 8
  %60 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.snd_emux_voice* %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %53, %23, %12
  ret void
}

declare dso_local i32 @STATE_IS_PLAYING(i32) #1

declare dso_local i32 @calc_volume(%struct.snd_emux_voice*) #1

declare dso_local i32 @calc_pitch(%struct.snd_emux_voice*) #1

declare dso_local i32 @calc_pan(%struct.snd_emux_voice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
