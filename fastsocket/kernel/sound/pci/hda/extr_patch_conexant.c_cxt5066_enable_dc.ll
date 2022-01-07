; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_enable_dc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_enable_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_verb = type { i32, i32, i32 }

@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_UNMUTE = common dso_local global i32 0, align 4
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_enable_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_enable_dc(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca [3 x %struct.hda_verb], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = getelementptr inbounds [3 x %struct.hda_verb], [3 x %struct.hda_verb]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %4, i32 0, i32 0
  store i32 23, i32* %5, align 4
  %6 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %4, i32 0, i32 1
  %7 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %4, i32 0, i32 2
  %9 = load i32, i32* @AMP_OUT_UNMUTE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %4, i64 1
  %11 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %10, i32 0, i32 0
  store i32 23, i32* %11, align 4
  %12 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %10, i32 0, i32 1
  %13 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %10, i32 0, i32 2
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %10, i64 1
  %16 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %15, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %15, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = getelementptr inbounds [3 x %struct.hda_verb], [3 x %struct.hda_verb]* %3, i64 0, i64 0
  %21 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %19, %struct.hda_verb* %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @cxt5066_olpc_select_mic(%struct.hda_codec* %22)
  ret void
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

declare dso_local i32 @cxt5066_olpc_select_mic(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
