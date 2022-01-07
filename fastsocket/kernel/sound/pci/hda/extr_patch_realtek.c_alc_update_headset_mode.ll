; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_update_headset_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_update_headset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64*, i64*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@ALC_HEADSET_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_CTIA = common dso_local global i32 0, align 4
@ALC_HEADSET_TYPE_OMTP = common dso_local global i32 0, align 4
@AC_PINCTL_OUT_EN = common dso_local global i32 0, align 4
@AC_PINCTL_HP_EN = common dso_local global i32 0, align 4
@PIN_VREFHIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_update_headset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_update_headset_mode(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.alc_spec*, %struct.alc_spec** %8, align 8
  store %struct.alc_spec* %9, %struct.alc_spec** %3, align 8
  %10 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %11 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %15 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %13, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %23 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %29, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 128, i32* %6, align 4
  br label %51

34:                                               ; preds = %1
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %37 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 130, i32* %6, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %44 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 129, i32* %6, align 4
  br label %49

48:                                               ; preds = %41
  store i32 131, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %54 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %142

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %114 [
    i32 128, label %60
    i32 130, label %66
    i32 129, label %98
    i32 131, label %108
  ]

60:                                               ; preds = %58
  %61 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %62 = call i32 @alc_headset_mode_unplugged(%struct.hda_codec* %61)
  %63 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %64 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  br label %114

66:                                               ; preds = %58
  %67 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %68 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ALC_HEADSET_TYPE_UNKNOWN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = call i32 @alc_determine_headset_type(%struct.hda_codec* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %77 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ALC_HEADSET_TYPE_CTIA, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %83 = call i32 @alc_headset_mode_ctia(%struct.hda_codec* %82)
  br label %94

84:                                               ; preds = %75
  %85 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %86 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ALC_HEADSET_TYPE_OMTP, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %92 = call i32 @alc_headset_mode_omtp(%struct.hda_codec* %91)
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %93, %81
  %95 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %96 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %114

98:                                               ; preds = %58
  %99 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %102 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @alc_headset_mode_mic_in(%struct.hda_codec* %99, i64 %100, i64 %103)
  %105 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %106 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  br label %114

108:                                              ; preds = %58
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = call i32 @alc_headset_mode_default(%struct.hda_codec* %109)
  %111 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %112 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %58, %108, %98, %94, %60
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 129
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %119 = load i64, i64* %5, align 8
  %120 = load i32, i32* @AC_PINCTL_OUT_EN, align 4
  %121 = load i32, i32* @AC_PINCTL_HP_EN, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %118, i64 %119, i32 %122)
  %124 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %125 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %130 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %131 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @PIN_VREFHIZ, align 4
  %134 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %129, i64 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %117
  br label %136

136:                                              ; preds = %135, %114
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %139 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %141 = call i32 @snd_hda_gen_update_outputs(%struct.hda_codec* %140)
  br label %142

142:                                              ; preds = %136, %57
  ret void
}

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i64) #1

declare dso_local i32 @alc_headset_mode_unplugged(%struct.hda_codec*) #1

declare dso_local i32 @alc_determine_headset_type(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_ctia(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_omtp(%struct.hda_codec*) #1

declare dso_local i32 @alc_headset_mode_mic_in(%struct.hda_codec*, i64, i64) #1

declare dso_local i32 @alc_headset_mode_default(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @snd_hda_gen_update_outputs(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
