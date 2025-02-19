; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_virmidi* }
%struct.snd_virmidi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_substream*)* @snd_virmidi_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_input_close(%struct.snd_rawmidi_substream* %0) #0 {
  %2 = alloca %struct.snd_rawmidi_substream*, align 8
  %3 = alloca %struct.snd_virmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %2, align 8
  %4 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.snd_virmidi*, %struct.snd_virmidi** %7, align 8
  store %struct.snd_virmidi* %8, %struct.snd_virmidi** %3, align 8
  %9 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %10 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snd_midi_event_free(i32 %11)
  %13 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %14 = getelementptr inbounds %struct.snd_virmidi, %struct.snd_virmidi* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.snd_virmidi* null, %struct.snd_virmidi** %19, align 8
  %20 = load %struct.snd_virmidi*, %struct.snd_virmidi** %3, align 8
  %21 = call i32 @kfree(%struct.snd_virmidi* %20)
  ret i32 0
}

declare dso_local i32 @snd_midi_event_free(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.snd_virmidi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
