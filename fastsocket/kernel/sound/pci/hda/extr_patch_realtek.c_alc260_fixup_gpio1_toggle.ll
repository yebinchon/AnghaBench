; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc260_fixup_gpio1_toggle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc260_fixup_gpio1_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hda_fixup = type { i32 }

@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@alc260_gpio1_automute = common dso_local global i32 0, align 4
@HDA_GEN_HP_EVENT = common dso_local global i32 0, align 4
@snd_hda_gen_hp_automute = common dso_local global i32 0, align 4
@alc_gpio1_init_verbs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @alc260_fixup_gpio1_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc260_fixup_gpio1_toggle(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.alc_spec*, %struct.alc_spec** %9, align 8
  store %struct.alc_spec* %10, %struct.alc_spec** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load i32, i32* @alc260_gpio1_automute, align 4
  %16 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %20 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.alc_spec*, %struct.alc_spec** %7, align 8
  %26 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 15, i32* %30, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = load i32, i32* @HDA_GEN_HP_EVENT, align 4
  %33 = load i32, i32* @snd_hda_gen_hp_automute, align 4
  %34 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %31, i32 15, i32 %32, i32 %33)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %36 = load i32, i32* @alc_gpio1_init_verbs, align 4
  %37 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %35, i32 %36)
  br label %38

38:                                               ; preds = %14, %3
  ret void
}

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
