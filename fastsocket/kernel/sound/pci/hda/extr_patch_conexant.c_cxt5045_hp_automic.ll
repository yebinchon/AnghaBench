; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5045_hp_automic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5045_hp_automic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32, i32, i32 }
%struct.hda_codec = type { i32 }

@cxt5045_hp_automic.mic_jack_on = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i32 20, i32 128, i32 45184 }, %struct.hda_verb { i32 18, i32 128, i32 45056 }, %struct.hda_verb zeroinitializer], align 16
@cxt5045_hp_automic.mic_jack_off = internal constant [3 x %struct.hda_verb] [%struct.hda_verb { i32 18, i32 128, i32 45184 }, %struct.hda_verb { i32 20, i32 128, i32 45056 }, %struct.hda_verb zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5045_hp_automic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5045_hp_automic(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %4, i32 18)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %9, %struct.hda_verb* getelementptr inbounds ([3 x %struct.hda_verb], [3 x %struct.hda_verb]* @cxt5045_hp_automic.mic_jack_on, i64 0, i64 0))
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %12, %struct.hda_verb* getelementptr inbounds ([3 x %struct.hda_verb], [3 x %struct.hda_verb]* @cxt5045_hp_automic.mic_jack_off, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
