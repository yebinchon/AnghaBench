; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_midisynth_unuse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi.c_midisynth_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.seq_midisynth = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @midisynth_unuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @midisynth_unuse(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca %struct.seq_midisynth*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %8, %struct.seq_midisynth** %6, align 8
  %9 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %10 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %23 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_rawmidi_drain_output(i32 %25)
  %27 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %28 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %27, i32 0, i32 0
  %29 = call i32 @snd_rawmidi_kernel_release(%struct.TYPE_2__* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_rawmidi_drain_output(i32) #1

declare dso_local i32 @snd_rawmidi_kernel_release(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
