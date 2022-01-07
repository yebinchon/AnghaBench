; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/msnd/extr_msnd_midi.c_snd_msndmidi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_msnd* }
%struct.snd_msnd = type { %struct.snd_msndmidi* }
%struct.snd_msndmidi = type { i32, %struct.snd_msnd* }
%struct.snd_rawmidi = type { i32, i32, i32, %struct.snd_msndmidi* }

@.str = private unnamed_addr constant [10 x i8] c"MSND-MIDI\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_msndmidi_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"MSND MIDI\00", align 1
@SNDRV_RAWMIDI_STREAM_INPUT = common dso_local global i32 0, align 4
@snd_msndmidi_input = common dso_local global i32 0, align 4
@SNDRV_RAWMIDI_INFO_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_msndmidi_new(%struct.snd_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_msnd*, align 8
  %7 = alloca %struct.snd_msndmidi*, align 8
  %8 = alloca %struct.snd_rawmidi*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %11 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %10, i32 0, i32 0
  %12 = load %struct.snd_msnd*, %struct.snd_msnd** %11, align 8
  store %struct.snd_msnd* %12, %struct.snd_msnd** %6, align 8
  %13 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @snd_rawmidi_new(%struct.snd_card* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i32 1, i32 1, %struct.snd_rawmidi** %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.snd_msndmidi* @kcalloc(i32 1, i32 16, i32 %21)
  store %struct.snd_msndmidi* %22, %struct.snd_msndmidi** %7, align 8
  %23 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  %24 = icmp eq %struct.snd_msndmidi* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %27 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %28 = call i32 @snd_device_free(%struct.snd_card* %26, %struct.snd_rawmidi* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %59

31:                                               ; preds = %20
  %32 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %33 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  %34 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %33, i32 0, i32 1
  store %struct.snd_msnd* %32, %struct.snd_msnd** %34, align 8
  %35 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  %36 = load %struct.snd_msnd*, %struct.snd_msnd** %6, align 8
  %37 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %36, i32 0, i32 0
  store %struct.snd_msndmidi* %35, %struct.snd_msndmidi** %37, align 8
  %38 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  %39 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %40 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %39, i32 0, i32 3
  store %struct.snd_msndmidi* %38, %struct.snd_msndmidi** %40, align 8
  %41 = load i32, i32* @snd_msndmidi_free, align 4
  %42 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %43 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.snd_msndmidi*, %struct.snd_msndmidi** %7, align 8
  %45 = getelementptr inbounds %struct.snd_msndmidi, %struct.snd_msndmidi* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %48 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %52 = load i32, i32* @SNDRV_RAWMIDI_STREAM_INPUT, align 4
  %53 = call i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi* %51, i32 %52, i32* @snd_msndmidi_input)
  %54 = load i32, i32* @SNDRV_RAWMIDI_INFO_INPUT, align 4
  %55 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %8, align 8
  %56 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %31, %25, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @snd_rawmidi_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_rawmidi**) #1

declare dso_local %struct.snd_msndmidi* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snd_device_free(%struct.snd_card*, %struct.snd_rawmidi*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_rawmidi_set_ops(%struct.snd_rawmidi*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
