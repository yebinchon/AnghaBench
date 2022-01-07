; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_one_param_ctrl_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_event.c_one_param_ctrl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_event = type { i32* }
%struct.snd_seq_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_event*, %struct.snd_seq_event*)* @one_param_ctrl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_param_ctrl_event(%struct.snd_midi_event* %0, %struct.snd_seq_event* %1) #0 {
  %3 = alloca %struct.snd_midi_event*, align 8
  %4 = alloca %struct.snd_seq_event*, align 8
  store %struct.snd_midi_event* %0, %struct.snd_midi_event** %3, align 8
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %4, align 8
  %5 = load %struct.snd_midi_event*, %struct.snd_midi_event** %3, align 8
  %6 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 15
  %11 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %12 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.snd_midi_event*, %struct.snd_midi_event** %3, align 8
  %16 = getelementptr inbounds %struct.snd_midi_event, %struct.snd_midi_event* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_seq_event*, %struct.snd_seq_event** %4, align 8
  %21 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
