; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc268.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc268.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@alc268_fixup_models = common dso_local global i32 0, align 4
@alc268_fixup_tbl = common dso_local global i32 0, align 4
@alc268_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@alc268_beep_mixer = common dso_local global i32 0, align 4
@alc268_beep_init_verbs = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global i32 0, align 4
@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc268 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc268(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alc_alloc_spec(%struct.hda_codec* %6, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* @alc268_fixup_models, align 4
  %21 = load i32, i32* @alc268_fixup_tbl, align 4
  %22 = load i32, i32* @alc268_fixups, align 4
  %23 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %26 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = call i32 @alc268_parse_auto_config(%struct.hda_codec* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  br label %87

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %37 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %43 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 29
  br i1 %49, label %50, label %77

50:                                               ; preds = %41
  %51 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %52 = load i32, i32* @alc268_beep_mixer, align 4
  %53 = call i32 @add_mixer(%struct.alc_spec* %51, i32 %52)
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = load i32, i32* @alc268_beep_init_verbs, align 4
  %56 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %54, i32 %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %58 = load i32, i32* @HDA_INPUT, align 4
  %59 = call i32 @query_amp_caps(%struct.hda_codec* %57, i32 29, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %50
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load i32, i32* @HDA_INPUT, align 4
  %64 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %65 = shl i32 12, %64
  %66 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %67 = shl i32 12, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %70 = shl i32 7, %69
  %71 = or i32 %68, %70
  %72 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %73 = shl i32 0, %72
  %74 = or i32 %71, %73
  %75 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %62, i32 29, i32 %63, i32 %74)
  br label %76

76:                                               ; preds = %61, %50
  br label %77

77:                                               ; preds = %76, %41, %35, %32
  %78 = load i32, i32* @alc_patch_ops, align 4
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @alc_eapd_shutup, align 4
  %82 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %83 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %86 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %84, i32 %85)
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %31
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = call i32 @alc_free(%struct.hda_codec* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %77, %10
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc268_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @add_mixer(%struct.alc_spec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @query_amp_caps(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
