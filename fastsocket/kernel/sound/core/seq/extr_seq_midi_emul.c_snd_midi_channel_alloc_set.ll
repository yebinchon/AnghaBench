; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_alloc_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_midi_emul.c_snd_midi_channel_alloc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_midi_channel_set = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_midi_channel_set* @snd_midi_channel_alloc_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_midi_channel_set*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.snd_midi_channel_set* @kmalloc(i32 24, i32 %4)
  store %struct.snd_midi_channel_set* %5, %struct.snd_midi_channel_set** %3, align 8
  %6 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %3, align 8
  %7 = icmp ne %struct.snd_midi_channel_set* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @snd_midi_channel_init_set(i32 %9)
  %11 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %3, align 8
  %12 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %3, align 8
  %14 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %3, align 8
  %17 = getelementptr inbounds %struct.snd_midi_channel_set, %struct.snd_midi_channel_set* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.snd_midi_channel_set*, %struct.snd_midi_channel_set** %3, align 8
  ret %struct.snd_midi_channel_set* %19
}

declare dso_local %struct.snd_midi_channel_set* @kmalloc(i32, i32) #1

declare dso_local i32 @snd_midi_channel_init_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
