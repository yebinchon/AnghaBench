; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd71bxx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_patch_stac92hd71bxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_verb = type { i32 }
%struct.hda_codec = type { i32, i32, i32, i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@stac92hd71bxx_unmute_core_init = common dso_local global %struct.hda_verb* null, align 8
@stac_patch_ops = common dso_local global i32 0, align 4
@AC_WID_VOL_KNB = common dso_local global i64 0, align 8
@stac92hd71bxx_core_init = common dso_local global i32 0, align 4
@AC_WCAP_IN_AMP = common dso_local global i32 0, align 4
@stac92hd71bxx_loopback = common dso_local global i32 0, align 4
@stac92hd71bxx_pwr_nids = common dso_local global i32 0, align 4
@stac92hd71bxx_models = common dso_local global i32 0, align 4
@stac92hd71bxx_fixup_tbl = common dso_local global i32 0, align 4
@stac92hd71bxx_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@stac92hd7x_proc_hook = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_stac92hd71bxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_stac92hd71bxx(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca %struct.hda_verb*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_verb*, %struct.hda_verb** @stac92hd71bxx_unmute_core_init, align 8
  store %struct.hda_verb* %7, %struct.hda_verb** %5, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = call i32 @alloc_stac_spec(%struct.hda_codec* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %142

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 4
  %17 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %16, align 8
  store %struct.sigmatel_spec* %17, %struct.sigmatel_spec** %4, align 8
  %18 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %19 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %18, i32 0, i32 12
  store i64 0, i64* %19, align 8
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %24 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 23, i32* %28, align 4
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @stac_patch_ops, align 4
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %35 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %39 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %78 [
    i32 287143606, label %43
    i32 287143607, label %43
    i32 287143432, label %46
    i32 287143427, label %68
  ]

43:                                               ; preds = %14, %14
  %44 = load %struct.hda_verb*, %struct.hda_verb** %5, align 8
  %45 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %44, i32 1
  store %struct.hda_verb* %45, %struct.hda_verb** %5, align 8
  br label %78

46:                                               ; preds = %14
  %47 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %48 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %54 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %46
  %59 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %60 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %59, i32 0, i32 4
  store i32 40, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.hda_verb*, %struct.hda_verb** %5, align 8
  %63 = getelementptr inbounds %struct.hda_verb, %struct.hda_verb* %62, i32 1
  store %struct.hda_verb* %63, %struct.hda_verb** %5, align 8
  %64 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %65 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %64, i32 15, i32 1089470704)
  %66 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %67 = call i32 @snd_hda_codec_set_pincfg(%struct.hda_codec* %66, i32 25, i32 1089470707)
  br label %78

68:                                               ; preds = %14
  %69 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 15
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %76 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %75, i32 0, i32 4
  store i32 40, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %14, %77, %61, %43
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = call i32 @get_wcaps(%struct.hda_codec* %79, i32 40)
  %81 = call i64 @get_wcaps_type(i32 %80)
  %82 = load i64, i64* @AC_WID_VOL_KNB, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %86 = load i32, i32* @stac92hd71bxx_core_init, align 4
  %87 = call i32 @snd_hda_add_verbs(%struct.hda_codec* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %90 = call i32 @get_wcaps(%struct.hda_codec* %89, i32 10)
  %91 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %96 = load %struct.hda_verb*, %struct.hda_verb** %5, align 8
  %97 = call i32 @snd_hda_sequence_write_cache(%struct.hda_codec* %95, %struct.hda_verb* %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %100 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %99, i32 0, i32 11
  store i32* @stac92hd71bxx_loopback, i32** %100, align 8
  %101 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %102 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %101, i32 0, i32 5
  store i32 80, i32* %102, align 4
  %103 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %104 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %103, i32 0, i32 10
  store i64 0, i64* %104, align 8
  %105 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %106 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %105, i32 0, i32 6
  store i32 1, i32* %106, align 8
  %107 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %108 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  store i32 38, i32* %109, align 4
  %110 = load i32, i32* @stac92hd71bxx_pwr_nids, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %113 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @stac92hd71bxx_pwr_nids, align 4
  %115 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %116 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %118 = load i32, i32* @stac92hd71bxx_models, align 4
  %119 = load i32, i32* @stac92hd71bxx_fixup_tbl, align 4
  %120 = load i32, i32* @stac92hd71bxx_fixups, align 4
  %121 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %123 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %124 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %122, i32 %123)
  %125 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %126 = call i32 @stac_setup_gpio(%struct.hda_codec* %125)
  %127 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %128 = call i32 @stac_parse_auto_config(%struct.hda_codec* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %98
  %132 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %133 = call i32 @stac_free(%struct.hda_codec* %132)
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %142

135:                                              ; preds = %98
  %136 = load i32, i32* @stac92hd7x_proc_hook, align 4
  %137 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %138 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %141 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %139, i32 %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %135, %131, %12
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @alloc_stac_spec(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_set_pincfg(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_add_verbs(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_sequence_write_cache(%struct.hda_codec*, %struct.hda_verb*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @stac_setup_gpio(%struct.hda_codec*) #1

declare dso_local i32 @stac_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @stac_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
