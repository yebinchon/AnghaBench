; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel = type { i32, i32, i32, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_midi_channel*, i32)* @snd_midi_channel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_midi_channel_init(%struct.snd_midi_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_midi_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_midi_channel* %0, %struct.snd_midi_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %6 = icmp eq %struct.snd_midi_channel* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %29

8:                                                ; preds = %2
  %9 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %10 = call i32 @memset(%struct.snd_midi_channel* %9, i32 0, i32 40)
  %11 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %12 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %11, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %15 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %17 = call i32 @snd_midi_reset_controllers(%struct.snd_midi_channel* %16)
  %18 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %19 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %18, i32 0, i32 1
  store i32 256, i32* %19, align 4
  %20 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %21 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %23 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load %struct.snd_midi_channel*, %struct.snd_midi_channel** %3, align 8
  %28 = getelementptr inbounds %struct.snd_midi_channel, %struct.snd_midi_channel* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %7, %26, %8
  ret void
}

declare dso_local i32 @memset(%struct.snd_midi_channel*, i32, i32) #1

declare dso_local i32 @snd_midi_reset_controllers(%struct.snd_midi_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
