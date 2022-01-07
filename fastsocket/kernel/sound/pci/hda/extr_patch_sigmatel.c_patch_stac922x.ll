; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac922x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac922x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@stac_patch_ops = common dso_local global i32 0, align 4
@stac922x_core_init = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@stac922x_models = common dso_local global i32 0, align 4
@stac922x_fixup_tbl = common dso_local global i32 0, align 4
@stac922x_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac922x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac922x(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alloc_stac_spec(%struct.hda_codec* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %14, align 8
  store %struct.sigmatel_spec* %15, %struct.sigmatel_spec** %4, align 8
  %16 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %17 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @stac_patch_ops, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @stac922x_core_init, align 4
  %26 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load i32, i32* @HDA_OUTPUT, align 4
  %29 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %30 = shl i32 0, %29
  %31 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %32 = shl i32 2, %31
  %33 = or i32 %30, %32
  %34 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %35 = shl i32 39, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %38 = shl i32 0, %37
  %39 = or i32 %36, %38
  %40 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %27, i32 18, i32 %28, i32 %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = load i32, i32* @stac922x_models, align 4
  %43 = load i32, i32* @stac922x_fixup_tbl, align 4
  %44 = load i32, i32* @stac922x_fixups, align 4
  %45 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %47 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %48 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %46, i32 %47)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = call i32 @stac_parse_auto_config(%struct.hda_codec* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %12
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = call i32 @stac_free(%struct.hda_codec* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %12
  %58 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %59 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %60 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %53, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
