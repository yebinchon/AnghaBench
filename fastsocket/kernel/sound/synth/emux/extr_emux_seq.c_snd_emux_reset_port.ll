; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_seq.c_snd_emux_reset_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/synth/emux/extr_emux_seq.c_snd_emux_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_midi_channel* }
%struct.snd_midi_channel = type { i32 }

@EMUX_MD_DEF_BANK = common dso_local global i64 0, align 8
@EMUX_MD_DEF_DRUM = common dso_local global i64 0, align 8
@EMUX_MD_REALTIME_PAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emux_reset_port(%struct.snd_emux_port* %0) #0 {
  %2 = alloca %struct.snd_emux_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_midi_channel*, align 8
  store %struct.snd_emux_port* %0, %struct.snd_emux_port** %2, align 8
  %5 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %6 = call i32 @snd_emux_sounds_off_all(%struct.snd_emux_port* %5)
  %7 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %8 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %7, i32 0, i32 2
  %9 = call i32 @snd_midi_channel_set_clear(%struct.TYPE_2__* %8)
  %10 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %11 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @EMUX_MD_DEF_BANK, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %16 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @EMUX_MD_DEF_DRUM, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 0, i32* %19, align 4
  %20 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %21 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @EMUX_MD_REALTIME_PAN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 1, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %51, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %28 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %36, i64 %38
  store %struct.snd_midi_channel* %39, %struct.snd_midi_channel** %4, align 8
  %40 = load %struct.snd_emux_port*, %struct.snd_emux_port** %2, align 8
  %41 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %4, align 8
  %50 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %25

54:                                               ; preds = %25
  ret void
}

declare dso_local i32 @snd_emux_sounds_off_all(%struct.snd_emux_port*) #1

declare dso_local i32 @snd_midi_channel_set_clear(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
