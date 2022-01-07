; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc260.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@alc260_fixup_models = common dso_local global i32 0, align 4
@alc260_fixup_tbl = common dso_local global i32 0, align 4
@alc260_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global i32 0, align 4
@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc260 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc260(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alc_alloc_spec(%struct.hda_codec* %6, i32 7)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = load i32, i32* @alc260_fixup_models, align 4
  %24 = load i32, i32* @alc260_fixup_tbl, align 4
  %25 = load i32, i32* @alc260_fixups, align 4
  %26 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %29 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %27, i32 %28)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %31 = call i32 @alc260_parse_auto_config(%struct.hda_codec* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %12
  br label %55

35:                                               ; preds = %12
  %36 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %37 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %43 = load i32, i32* @HDA_INPUT, align 4
  %44 = call i32 @set_beep_amp(%struct.alc_spec* %42, i32 7, i32 5, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* @alc_patch_ops, align 4
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @alc_eapd_shutup, align 4
  %50 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %51 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %54 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %52, i32 %53)
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %34
  %56 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %57 = call i32 @alc_free(%struct.hda_codec* %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %45, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc260_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
