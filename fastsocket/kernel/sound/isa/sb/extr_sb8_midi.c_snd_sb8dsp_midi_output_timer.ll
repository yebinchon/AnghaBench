; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb8_midi.c_snd_sb8dsp_midi_output_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_sb* }
%struct.snd_sb = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @snd_sb8dsp_midi_output_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_sb8dsp_midi_output_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.snd_rawmidi_substream*
  store %struct.snd_rawmidi_substream* %7, %struct.snd_rawmidi_substream** %3, align 8
  %8 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.snd_sb*, %struct.snd_sb** %11, align 8
  store %struct.snd_sb* %12, %struct.snd_sb** %4, align 8
  %13 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %14 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = add nsw i64 1, %17
  %19 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %22, i32 0, i32 1
  %24 = call i32 @add_timer(%struct.TYPE_4__* %23)
  %25 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %26 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %30 = call i32 @snd_sb8dsp_midi_output_write(%struct.snd_rawmidi_substream* %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_sb8dsp_midi_output_write(%struct.snd_rawmidi_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
