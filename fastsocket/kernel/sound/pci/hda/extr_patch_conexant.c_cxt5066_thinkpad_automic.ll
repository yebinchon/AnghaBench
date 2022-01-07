; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_thinkpad_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_thinkpad_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { i32 }

@cxt5066_thinkpad_automic.ext_mic_present = internal constant [6 x %struct.hda_verb] [%struct.hda_verb { i32 20, i32 131, i32 0 }, %struct.hda_verb { i32 23, i32 131, i32 1 }, %struct.hda_verb { i32 27, i32 130, i32 128 }, %struct.hda_verb { i32 35, i32 130, i32 0 }, %struct.hda_verb { i32 26, i32 130, i32 0 }, %struct.hda_verb zeroinitializer], align 16
@cxt5066_thinkpad_automic.dock_mic_present = internal constant [6 x %struct.hda_verb] [%struct.hda_verb { i32 20, i32 131, i32 0 }, %struct.hda_verb { i32 23, i32 131, i32 0 }, %struct.hda_verb { i32 26, i32 130, i32 128 }, %struct.hda_verb { i32 35, i32 130, i32 0 }, %struct.hda_verb { i32 27, i32 130, i32 0 }, %struct.hda_verb zeroinitializer], align 16
@cxt5066_thinkpad_automic.ext_mic_absent = internal constant [5 x %struct.hda_verb] [%struct.hda_verb { i32 20, i32 131, i32 2 }, %struct.hda_verb { i32 35, i32 130, i32 129 }, %struct.hda_verb { i32 27, i32 130, i32 0 }, %struct.hda_verb { i32 26, i32 130, i32 0 }, %struct.hda_verb zeroinitializer], align 16
@.str = private unnamed_addr constant [39 x i8] c"CXT5066: external microphone detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CXT5066: dock microphone detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"CXT5066: external microphone absent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_thinkpad_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_thinkpad_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %5, i32 27)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %7, i32 26)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i32 @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %14 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %13, %struct.hda_verb* getelementptr inbounds ([6 x %struct.hda_verb], [6 x %struct.hda_verb]* @cxt5066_thinkpad_automic.ext_mic_present, i64 0, i64 0))
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %20, %struct.hda_verb* getelementptr inbounds ([6 x %struct.hda_verb], [6 x %struct.hda_verb]* @cxt5066_thinkpad_automic.dock_mic_present, i64 0, i64 0))
  br label %26

22:                                               ; preds = %15
  %23 = call i32 @snd_printdd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %24, %struct.hda_verb* getelementptr inbounds ([5 x %struct.hda_verb], [5 x %struct.hda_verb]* @cxt5066_thinkpad_automic.ext_mic_absent, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %11
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
