; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_terminate_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_terminate_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)* }
%struct.snd_emux_voice = type { i32, i32*, i32*, i32*, i32*, i64 }

@SNDRV_EMUX_ST_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*, %struct.snd_emux_voice*, i32)* @terminate_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_voice(%struct.snd_emux* %0, %struct.snd_emux_voice* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emux*, align 8
  %5 = alloca %struct.snd_emux_voice*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %4, align 8
  store %struct.snd_emux_voice* %1, %struct.snd_emux_voice** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %8 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %9, align 8
  %11 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %12 = call i32 %10(%struct.snd_emux_voice* %11)
  %13 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %14 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = sext i32 %15 to i64
  %18 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %19 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %18, i32 0, i32 5
  store i64 %17, i64* %19, align 8
  %20 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %23 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %27 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @SNDRV_EMUX_ST_OFF, align 4
  %29 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %30 = getelementptr inbounds %struct.snd_emux_voice, %struct.snd_emux_voice* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %36, align 8
  %38 = icmp ne i32 (%struct.snd_emux_voice*)* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.snd_emux*, %struct.snd_emux** %4, align 8
  %41 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.snd_emux_voice*)*, i32 (%struct.snd_emux_voice*)** %42, align 8
  %44 = load %struct.snd_emux_voice*, %struct.snd_emux_voice** %5, align 8
  %45 = call i32 %43(%struct.snd_emux_voice* %44)
  br label %46

46:                                               ; preds = %39, %33, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
