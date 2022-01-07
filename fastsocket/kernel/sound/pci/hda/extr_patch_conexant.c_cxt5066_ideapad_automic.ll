; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_ideapad_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_ideapad_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { i32 }

@PIN_VREF80 = common dso_local global i32 0, align 4
@cxt5066_ideapad_automic.ext_mic_absent = internal constant [4 x %struct.hda_verb] [%struct.hda_verb { i32 20, i32 130, i32 2 }, %struct.hda_verb { i32 35, i32 129, i32 128 }, %struct.hda_verb { i32 27, i32 129, i32 0 }, %struct.hda_verb zeroinitializer], align 16
@.str = private unnamed_addr constant [39 x i8] c"CXT5066: external microphone detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"CXT5066: external microphone absent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_ideapad_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_ideapad_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x %struct.hda_verb], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds [4 x %struct.hda_verb], [4 x %struct.hda_verb]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %5, i32 0, i32 0
  store i32 20, i32* %6, align 4
  %7 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %5, i32 0, i32 1
  store i32 130, i32* %7, align 4
  %8 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %5, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %5, i64 1
  %10 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %9, i32 0, i32 0
  store i32 27, i32* %10, align 4
  %11 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %9, i32 0, i32 1
  store i32 129, i32* %11, align 4
  %12 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %9, i32 0, i32 2
  %13 = load i32, i32* @PIN_VREF80, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %9, i64 1
  %15 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %14, i32 0, i32 0
  store i32 35, i32* %15, align 4
  %16 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %14, i32 0, i32 1
  store i32 129, i32* %16, align 4
  %17 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %14, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %14, i64 1
  %19 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %22, i32 27)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = call i32 @snd_printdd(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = getelementptr inbounds [4 x %struct.hda_verb], [4 x %struct.hda_verb]* %4, i64 0, i64 0
  %30 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %28, %struct.hda_verb* %29)
  br label %35

31:                                               ; preds = %1
  %32 = call i32 @snd_printdd(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %33, %struct.hda_verb* getelementptr inbounds ([4 x %struct.hda_verb], [4 x %struct.hda_verb]* @cxt5066_ideapad_automic.ext_mic_absent, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %26
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
