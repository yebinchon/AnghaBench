; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc861vd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc861vd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.alc_spec* }
%struct.alc_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@alc861vd_fixup_tbl = common dso_local global i32 0, align 4
@alc861vd_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global i32 0, align 4
@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc861vd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc861vd(%struct.hda_codec* %0) #0 {
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
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 1
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 35, i32* %18, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* @alc861vd_fixup_tbl, align 4
  %21 = load i32, i32* @alc861vd_fixups, align 4
  %22 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %19, i32* null, i32 %20, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %25 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %23, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = call i32 @alc861vd_parse_auto_config(%struct.hda_codec* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  br label %51

31:                                               ; preds = %12
  %32 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %33 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %39 = load i32, i32* @HDA_INPUT, align 4
  %40 = call i32 @set_beep_amp(%struct.alc_spec* %38, i32 11, i32 5, i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* @alc_patch_ops, align 4
  %43 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %44 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @alc_eapd_shutup, align 4
  %46 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %47 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %50 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = call i32 @alc_free(%struct.hda_codec* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %41, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32*, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc861vd_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
