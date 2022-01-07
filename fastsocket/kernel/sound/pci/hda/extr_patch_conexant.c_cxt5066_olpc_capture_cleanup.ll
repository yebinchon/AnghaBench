; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_capture_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_olpc_capture_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.conexant_spec* }
%struct.conexant_spec = type { i64 }
%struct.hda_verb = type { i32, i32, i32 }

@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cxt5066_olpc_capture_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_olpc_capture_cleanup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca [4 x %struct.hda_verb], align 16
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.conexant_spec*, %struct.conexant_spec** %6, align 8
  store %struct.conexant_spec* %7, %struct.conexant_spec** %3, align 8
  %8 = getelementptr inbounds [4 x %struct.hda_verb], [4 x %struct.hda_verb]* %4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %8, i32 0, i32 0
  store i32 26, i32* %9, align 4
  %10 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %8, i32 0, i32 1
  %11 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %8, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %8, i64 1
  %14 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %13, i32 0, i32 0
  store i32 27, i32* %14, align 4
  %15 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %13, i32 0, i32 1
  %16 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %13, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %13, i64 1
  %19 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 0
  store i32 30, i32* %19, align 4
  %20 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 1
  %21 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %18, i64 1
  %24 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %23, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %23, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = getelementptr inbounds [4 x %struct.hda_verb], [4 x %struct.hda_verb]* %4, i64 0, i64 0
  %29 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %27, %struct.hda_verb* %28)
  %30 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %31 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, %struct.hda_verb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
