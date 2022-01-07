; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc662.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i32, %struct.TYPE_6__*, %struct.alc_spec* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.alc_spec = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, {}*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@HDA_PINCFG_NO_HP_FIXUP = common dso_local global i32 0, align 4
@alc662_fixup_models = common dso_local global i32 0, align 4
@alc662_fixup_tbl = common dso_local global i32 0, align 4
@alc662_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ALC272X\00", align 1
@HDA_INPUT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global i32 0, align 4
@alc_eapd_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc662 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc662(%struct.hda_codec* %0) #0 {
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
  br label %119

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load i32, i32* @HDA_PINCFG_NO_HP_FIXUP, align 4
  %17 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %18 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = call i32 @alc_fix_pll_init(%struct.hda_codec* %19, i32 32, i32 4, i32 15)
  %21 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 3
  %23 = bitcast {}** %22 to i32 (%struct.hda_codec*)**
  store i32 (%struct.hda_codec*)* @alc662_fill_coef, i32 (%struct.hda_codec*)** %23, align 8
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = call i32 @alc662_fill_coef(%struct.hda_codec* %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @alc662_fixup_models, align 4
  %28 = load i32, i32* @alc662_fixup_tbl, align 4
  %29 = load i32, i32* @alc662_fixups, align 4
  %30 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %33 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %34)
  %36 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %37 = call i64 @has_cdefine_beep(%struct.hda_codec* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %12
  %40 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %41 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %12
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @alc_get_coef0(%struct.hda_codec* %44)
  %46 = and i32 %45, 16384
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %50 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 4133
  br i1 %56, label %57, label %70

57:                                               ; preds = %48
  %58 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %59 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %65 = call i32 @alc_codec_rename(%struct.hda_codec* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %115

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %57, %48, %43
  %71 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %72 = call i32 @alc662_parse_auto_config(%struct.hda_codec* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %115

76:                                               ; preds = %70
  %77 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %78 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %76
  %83 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %84 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %90 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %104 [
    i32 283903586, label %92
    i32 283902578, label %96
    i32 283903587, label %96
    i32 283903589, label %96
    i32 283902579, label %100
  ]

92:                                               ; preds = %88
  %93 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %94 = load i32, i32* @HDA_INPUT, align 4
  %95 = call i32 @set_beep_amp(%struct.alc_spec* %93, i32 11, i32 5, i32 %94)
  br label %104

96:                                               ; preds = %88, %88, %88
  %97 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %98 = load i32, i32* @HDA_INPUT, align 4
  %99 = call i32 @set_beep_amp(%struct.alc_spec* %97, i32 11, i32 4, i32 %98)
  br label %104

100:                                              ; preds = %88
  %101 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %102 = load i32, i32* @HDA_INPUT, align 4
  %103 = call i32 @set_beep_amp(%struct.alc_spec* %101, i32 11, i32 3, i32 %102)
  br label %104

104:                                              ; preds = %88, %100, %96, %92
  br label %105

105:                                              ; preds = %104, %82, %76
  %106 = load i32, i32* @alc_patch_ops, align 4
  %107 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %108 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @alc_eapd_shutup, align 4
  %110 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %111 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %113 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %114 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %112, i32 %113)
  store i32 0, i32* %2, align 4
  br label %119

115:                                              ; preds = %75, %68
  %116 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %117 = call i32 @alc_free(%struct.hda_codec* %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %105, %10
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc662_fill_coef(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_codec_rename(%struct.hda_codec*, i8*) #1

declare dso_local i32 @alc662_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
