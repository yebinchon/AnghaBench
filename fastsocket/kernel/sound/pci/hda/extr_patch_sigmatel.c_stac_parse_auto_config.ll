; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_parse_auto_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_parse_auto_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_4__*, %struct.sigmatel_spec* }
%struct.TYPE_4__ = type { i32 }
%struct.sigmatel_spec = type { i64, i64, i64, %struct.TYPE_6__, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@HDA_PINCFG_HEADSET_MIC = common dso_local global i32 0, align 4
@stac_playback_pcm_hook = common dso_local global i32 0, align 4
@stac_capture_pcm_hook = common dso_local global i32 0, align 4
@stac_update_outputs = common dso_local global i32 0, align 4
@stac_hp_automute = common dso_local global i32 0, align 4
@stac_line_automute = common dso_local global i32 0, align 4
@stac_mic_autoswitch = common dso_local global i32 0, align 4
@TLV_DB_SCALE_MUTE = common dso_local global i32 0, align 4
@stac_vmaster_hook = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @stac_parse_auto_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_parse_auto_config(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.sigmatel_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 1
  %9 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %8, align 8
  store %struct.sigmatel_spec* %9, %struct.sigmatel_spec** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %11 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @HDA_PINCFG_HEADSET_MIC, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %21 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec* %19, i32* %22, i32* null, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %135

29:                                               ; preds = %18
  %30 = load i32, i32* @stac_playback_pcm_hook, align 4
  %31 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %32 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 9
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @stac_capture_pcm_hook, align 4
  %35 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %36 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 8
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @stac_update_outputs, align 4
  %39 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %40 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @stac_hp_automute, align 4
  %43 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %44 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @stac_line_automute, align 4
  %47 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %48 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @stac_mic_autoswitch, align 4
  %51 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %52 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %56 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = call i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec* %54, i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %29
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %29
  %64 = load i32, i32* @TLV_DB_SCALE_MUTE, align 4
  %65 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %66 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %73 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %63
  %77 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %78 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %79 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @stac_auto_create_beep_ctls(%struct.hda_codec* %77, i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %63
  %88 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %89 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* @stac_vmaster_hook, align 4
  %94 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %95 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %100 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %98
  %104 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %105 = call i32 @snd_hda_get_bool_hint(%struct.hda_codec* %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %109 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %108, i32 0, i32 3
  %110 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %111 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_6__* %109, i32* null, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %107
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %135

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %103, %98
  %120 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %4, align 8
  %121 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %126 = call i32 @stac_create_spdif_mux_ctls(%struct.hda_codec* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %135

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %119
  %133 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %134 = call i32 @stac_init_power_map(%struct.hda_codec* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %129, %115, %84, %61, %27
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @snd_hda_parse_pin_defcfg(%struct.hda_codec*, i32*, i32*, i32) #1

declare dso_local i32 @snd_hda_gen_parse_auto_config(%struct.hda_codec*, i32*) #1

declare dso_local i32 @stac_auto_create_beep_ctls(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_get_bool_hint(%struct.hda_codec*, i8*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_6__*, i32*, i64) #1

declare dso_local i32 @stac_create_spdif_mux_ctls(%struct.hda_codec*) #1

declare dso_local i32 @stac_init_power_map(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
