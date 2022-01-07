; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_get_bank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_synth.c_get_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_midi_channel = type { i32*, i32 }

@MIDI_CTL_MSB_BANK = common dso_local global i64 0, align 8
@MIDI_CTL_LSB_BANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emux_port*, %struct.snd_midi_channel*)* @get_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bank(%struct.snd_emux_port* %0, %struct.snd_midi_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emux_port*, align 8
  %5 = alloca %struct.snd_midi_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %4, align 8
  store %struct.snd_midi_channel* %1, %struct.snd_midi_channel** %5, align 8
  %7 = load %struct.snd_emux_port*, %struct.snd_emux_port** %4, align 8
  %8 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %41 [
    i32 128, label %11
    i32 129, label %28
  ]

11:                                               ; preds = %2
  %12 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %13 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @MIDI_CTL_MSB_BANK, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 127
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 128, i32* %3, align 4
  br label %54

21:                                               ; preds = %11
  %22 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %23 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @MIDI_CTL_LSB_BANK, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %30 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 128, i32* %3, align 4
  br label %54

34:                                               ; preds = %28
  %35 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %36 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MIDI_CTL_MSB_BANK, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %2
  %42 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %43 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 128, i32* %3, align 4
  br label %54

47:                                               ; preds = %41
  %48 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %5, align 8
  %49 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @MIDI_CTL_MSB_BANK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %46, %34, %33, %21, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
