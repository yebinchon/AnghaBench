; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_increase_mic_boost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cxt5066_increase_mic_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @cxt5066_increase_mic_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxt5066_increase_mic_boost(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %26

11:                                               ; preds = %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* @HDA_OUTPUT, align 4
  %14 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %15 = shl i32 3, %14
  %16 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %17 = shl i32 4, %16
  %18 = or i32 %15, %17
  %19 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %20 = shl i32 39, %19
  %21 = or i32 %18, %20
  %22 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %23 = shl i32 0, %22
  %24 = or i32 %21, %23
  %25 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %12, i32 23, i32 %13, i32 %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
