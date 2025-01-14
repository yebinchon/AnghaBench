; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac922x_fixup_intel_mac_auto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac922x_fixup_intel_mac_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64 }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac922x_intel_mac_fixup_tbl = common dso_local global i32 0, align 4
@stac922x_fixups = common dso_local global i32 0, align 4
@STAC_INTEL_MAC_AUTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @stac922x_fixup_intel_mac_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac922x_fixup_intel_mac_auto(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
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
  br label %25

11:                                               ; preds = %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* @stac922x_intel_mac_fixup_tbl, align 4
  %14 = load i32, i32* @stac922x_fixups, align 4
  %15 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %12, i32* null, i32 %13, i32 %14)
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STAC_INTEL_MAC_AUTO, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %22, i32 %23)
  br label %25

25:                                               ; preds = %10, %21, %11
  ret void
}

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
