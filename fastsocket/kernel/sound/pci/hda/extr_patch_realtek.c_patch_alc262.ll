; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc262.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc262.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@alc262_fixup_models = common dso_local global i32 0, align 4
@alc262_fixup_tbl = common dso_local global i32 0, align 4
@alc262_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global i32 0, align 4
@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_SET_PROC_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc262 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc262(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alc_alloc_spec(%struct.hda_codec* %6, i32 11)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %74

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 24, i32* %18, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @alc_fix_pll_init(%struct.hda_codec* %19, i32 32, i32 10, i32 10)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %22 = load i32, i32* @alc262_fixup_models, align 4
  %23 = load i32, i32* @alc262_fixup_tbl, align 4
  %24 = load i32, i32* @alc262_fixups, align 4
  %25 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %28 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %26, i32 %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = call i64 @has_cdefine_beep(%struct.hda_codec* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %12
  %35 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %36 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %12
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @alc262_parse_auto_config(%struct.hda_codec* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %70

44:                                               ; preds = %38
  %45 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %46 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %52 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %58 = load i32, i32* @HDA_INPUT, align 4
  %59 = call i32 @set_beep_amp(%struct.alc_spec* %57, i32 11, i32 5, i32 %58)
  br label %60

60:                                               ; preds = %56, %50, %44
  %61 = load i32, i32* @alc_patch_ops, align 4
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @alc_eapd_shutup, align 4
  %65 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %66 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %69 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %67, i32 %68)
  store i32 0, i32* %2, align 4
  br label %74

70:                                               ; preds = %43
  %71 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %72 = call i32 @alc_free(%struct.hda_codec* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %60, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc262_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
