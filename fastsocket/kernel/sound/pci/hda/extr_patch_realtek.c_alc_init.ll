; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i32, {}* }

@HDA_FIXUP_ACT_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  store %struct.alc_spec* %6, %struct.alc_spec** %3, align 8
  %7 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %8 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %7, i32 0, i32 1
  %9 = bitcast {}** %8 to i32 (%struct.hda_codec*)**
  %10 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %9, align 8
  %11 = icmp ne i32 (%struct.hda_codec*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %14 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %13, i32 0, i32 1
  %15 = bitcast {}** %14 to i32 (%struct.hda_codec*)**
  %16 = load i32 (%struct.hda_codec*)*, i32 (%struct.hda_codec*)** %15, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 %16(%struct.hda_codec* %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @alc_fix_pll(%struct.hda_codec* %20)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %24 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @alc_auto_init_amp(%struct.hda_codec* %22, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = call i32 @snd_hda_gen_init(%struct.hda_codec* %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i32, i32* @HDA_FIXUP_ACT_INIT, align 4
  %31 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %29, i32 %30)
  ret i32 0
}

declare dso_local i32 @alc_fix_pll(%struct.hda_codec*) #1

declare dso_local i32 @alc_auto_init_amp(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
