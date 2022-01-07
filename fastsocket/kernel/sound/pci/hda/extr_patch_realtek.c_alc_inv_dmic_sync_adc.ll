; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_inv_dmic_sync_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_inv_dmic_sync_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, %struct.hda_input_mux }
%struct.hda_input_mux = type { i32 }
%struct.nid_path = type { i32* }

@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@AC_AMP_SET_RIGHT = common dso_local global i32 0, align 4
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_OUTPUT = common dso_local global i32 0, align 4
@AC_AMP_SET_INPUT = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @alc_inv_dmic_sync_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_inv_dmic_sync_adc(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alc_spec*, align 8
  %6 = alloca %struct.hda_input_mux*, align 8
  %7 = alloca %struct.nid_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %5, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.hda_input_mux* %18, %struct.hda_input_mux** %6, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %40, %2
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %22 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %27 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %35 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %43

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %19

43:                                               ; preds = %38, %19
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.hda_input_mux*, %struct.hda_input_mux** %6, align 8
  %46 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %105

50:                                               ; preds = %43
  %51 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %52 = load %struct.alc_spec*, %struct.alc_spec** %5, align 8
  %53 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @get_adc_nid(%struct.hda_codec* %55, i32 %56, i32 %57)
  %59 = call %struct.nid_path* @snd_hda_get_nid_path(%struct.hda_codec* %51, i64 %54, i32 %58)
  store %struct.nid_path* %59, %struct.nid_path** %7, align 8
  %60 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %61 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %50
  br label %105

69:                                               ; preds = %50
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @get_amp_nid_(i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @get_amp_direction_(i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @AC_AMP_SET_RIGHT, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @HDA_OUTPUT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @AC_AMP_SET_OUTPUT, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @AC_AMP_SET_INPUT, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = or i32 %74, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %86 = call i32 @snd_hda_codec_flush_cache(%struct.hda_codec* %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @snd_hda_codec_amp_read(%struct.hda_codec* %87, i32 %88, i32 1, i32 %89, i32 0)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, 128
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %105

95:                                               ; preds = %82
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, 128
  store i32 %97, i32* %12, align 4
  %98 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @snd_hda_codec_write(%struct.hda_codec* %98, i32 %99, i32 0, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %95, %94, %68, %49
  ret void
}

declare dso_local %struct.nid_path* @snd_hda_get_nid_path(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @get_adc_nid(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_amp_nid_(i32) #1

declare dso_local i32 @get_amp_direction_(i32) #1

declare dso_local i32 @snd_hda_codec_flush_cache(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_amp_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
