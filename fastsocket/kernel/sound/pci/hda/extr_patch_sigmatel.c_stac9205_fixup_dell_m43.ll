; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac9205_fixup_dell_m43.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac9205_fixup_dell_m43.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32 }
%struct.hda_fixup = type { i32 }
%struct.hda_jack_tbl = type { i32 }

@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@dell_9205_m43_pin_configs = common dso_local global i32 0, align 4
@AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK = common dso_local global i32 0, align 4
@STAC_VREF_EVENT = common dso_local global i32 0, align 4
@stac_vref_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, %struct.hda_fixup*, i32)* @stac9205_fixup_dell_m43 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stac9205_fixup_dell_m43(%struct.hda_codec* %0, %struct.hda_fixup* %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.hda_fixup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigmatel_spec*, align 8
  %8 = alloca %struct.hda_jack_tbl*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.hda_fixup* %1, %struct.hda_fixup** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %10, align 8
  store %struct.sigmatel_spec* %11, %struct.sigmatel_spec** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %3
  %16 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %17 = load i32, i32* @dell_9205_m43_pin_configs, align 4
  %18 = call i32 @snd_hda_apply_pincfgs(%struct.hda_codec* %16, i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %21 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AC_VERB_SET_GPIO_UNSOLICITED_RSP_MASK, align 4
  %24 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %19, i32 %22, i32 0, i32 %23, i32 16)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @STAC_VREF_EVENT, align 4
  %30 = load i32, i32* @stac_vref_event, align 4
  %31 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec* %32, i32 %35)
  store %struct.hda_jack_tbl* %36, %struct.hda_jack_tbl** %8, align 8
  %37 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %38 = icmp ne %struct.hda_jack_tbl* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %15
  %40 = load %struct.hda_jack_tbl*, %struct.hda_jack_tbl** %8, align 8
  %41 = getelementptr inbounds %struct.hda_jack_tbl, %struct.hda_jack_tbl* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %15
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 0
  store i32 11, i32* %44, align 4
  %45 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %46 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %48 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %47, i32 0, i32 2
  store i32 27, i32* %48, align 4
  %49 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %50 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %49, i32 0, i32 3
  store i32 16, i32* %50, align 4
  %51 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  %52 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %51, i32 0, i32 4
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @snd_hda_apply_pincfgs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local %struct.hda_jack_tbl* @snd_hda_jack_tbl_get(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
