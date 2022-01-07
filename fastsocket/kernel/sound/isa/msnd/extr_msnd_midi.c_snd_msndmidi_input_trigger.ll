; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_input_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_msndmidi* }
%struct.snd_msndmidi = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"snd_msndmidi_input_trigger(, %i)\0A\00", align 1
@MSNDMIDI_MODE_BIT_INPUT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_rawmidi_substream*, i32)* @snd_msndmidi_input_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_msndmidi_input_trigger(%struct.snd_rawmidi_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_rawmidi_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_msndmidi*, align 8
  store %struct.snd_rawmidi_substream* %0, %struct.snd_rawmidi_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.snd_rawmidi_substream*, %struct.snd_rawmidi_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rawmidi_substream, %struct.snd_rawmidi_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %12, align 8
  store %struct.snd_msndmidi* %13, %struct.snd_msndmidi** %6, align 8
  %14 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %15 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @MSNDMIDI_MODE_BIT_INPUT_TRIGGER, align 4
  %22 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %23 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %22, i32 0, i32 1
  %24 = call i32 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %28 = call i32 @snd_msndmidi_input_drop(%struct.snd_msndmidi* %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @MSNDMIDI_MODE_BIT_INPUT_TRIGGER, align 4
  %32 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %33 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %32, i32 0, i32 1
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %30, %29
  %36 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %37 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %6, align 8
  %44 = call i32 @snd_msndmidi_input_read(%struct.snd_msndmidi* %43)
  br label %45

45:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @snd_msndmidi_input_drop(%struct.snd_msndmidi*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_msndmidi_input_read(%struct.snd_msndmidi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
