; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5047.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5047.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.hda_codec = type { i32, i32, %struct.TYPE_4__, %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i32, i32, i32*, i8**, i32*, i8*, i8*, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@CXT5047_MODELS = common dso_local global i32 0, align 4
@cxt5047_models = common dso_local global i32 0, align 4
@cxt5047_cfg_tbl = common dso_local global i32 0, align 4
@CXT5047_AUTO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cxt5047_dac_nids = common dso_local global i8* null, align 8
@CXT5047_SPDIF_OUT = common dso_local global i32 0, align 4
@cxt5047_adc_nids = common dso_local global i32 0, align 4
@cxt5047_capsrc_nids = common dso_local global i32 0, align 4
@cxt5047_base_mixers = common dso_local global i8* null, align 8
@cxt5047_init_verbs = common dso_local global i32 0, align 4
@cxt5047_modes = common dso_local global i8* null, align 8
@conexant_patch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cxt5047_hp_spk_mixers = common dso_local global i8* null, align 8
@cxt5047_hp_unsol_event = common dso_local global i8* null, align 8
@cxt5047_hp_only_mixers = common dso_local global i8* null, align 8
@cxt5047_hp_init = common dso_local global i32 0, align 4
@cxt5047_toshiba_capture_source = common dso_local global i32 0, align 4
@cxt5047_toshiba_init_verbs = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@cxt5047_test_capture_source = common dso_local global i32 0, align 4
@cxt5047_test_init_verbs = common dso_local global i32 0, align 4
@cxt5047_test_mixer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_cxt5047 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cxt5047(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.conexant_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @CXT5047_MODELS, align 4
  %8 = load i32, i32* @cxt5047_models, align 4
  %9 = load i32, i32* @cxt5047_cfg_tbl, align 4
  %10 = call i32 @snd_hda_check_board_config(%struct.hda_codec* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @CXT5047_AUTO, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CXT5047_AUTO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @patch_conexant_auto(%struct.hda_codec* %20)
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.conexant_spec* @kzalloc(i32 96, i32 %23)
  store %struct.conexant_spec* %24, %struct.conexant_spec** %4, align 8
  %25 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %26 = icmp ne %struct.conexant_spec* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %159

30:                                               ; preds = %22
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 3
  store %struct.conexant_spec* %31, %struct.conexant_spec** %33, align 8
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %37 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 2, i32* %38, align 8
  %39 = load i8*, i8** @cxt5047_dac_nids, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @cxt5047_dac_nids, align 8
  %45 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %46 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %45, i32 0, i32 12
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @CXT5047_SPDIF_OUT, align 4
  %49 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %50 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %53 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* @cxt5047_adc_nids, align 4
  %55 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %56 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @cxt5047_capsrc_nids, align 4
  %58 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %59 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %61 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i8*, i8** @cxt5047_base_mixers, align 8
  %63 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %64 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %63, i32 0, i32 5
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %68 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @cxt5047_init_verbs, align 4
  %70 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %71 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %75 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %74, i32 0, i32 9
  store i64 0, i64* %75, align 8
  %76 = load i8*, i8** @cxt5047_modes, align 8
  %77 = call i8* @ARRAY_SIZE(i8* %76)
  %78 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %79 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %78, i32 0, i32 8
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** @cxt5047_modes, align 8
  %81 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %82 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %84 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %83, i32 0, i32 2
  %85 = bitcast %struct.TYPE_4__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 bitcast (%struct.TYPE_4__* @conexant_patch_ops to i8*), i64 16, i1 false)
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %136 [
    i32 131, label %87
    i32 129, label %99
    i32 130, label %115
  ]

87:                                               ; preds = %30
  %88 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %89 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %88, i32 0, i32 1
  store i32 2, i32* %89, align 4
  %90 = load i8*, i8** @cxt5047_hp_spk_mixers, align 8
  %91 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %92 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %91, i32 0, i32 5
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  store i8* %90, i8** %94, align 8
  %95 = load i8*, i8** @cxt5047_hp_unsol_event, align 8
  %96 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %97 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  br label %136

99:                                               ; preds = %30
  %100 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %101 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %100, i32 0, i32 1
  store i32 2, i32* %101, align 4
  %102 = load i8*, i8** @cxt5047_hp_only_mixers, align 8
  %103 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %104 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %103, i32 0, i32 5
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* %102, i8** %106, align 8
  %107 = load i8*, i8** @cxt5047_hp_unsol_event, align 8
  %108 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %109 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i8* %107, i8** %110, align 8
  %111 = load i32, i32* @cxt5047_hp_init, align 4
  %112 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %113 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  br label %136

115:                                              ; preds = %30
  %116 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %117 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %116, i32 0, i32 6
  store i32* @cxt5047_toshiba_capture_source, i32** %117, align 8
  %118 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %119 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %118, i32 0, i32 1
  store i32 2, i32* %119, align 4
  %120 = load i8*, i8** @cxt5047_hp_spk_mixers, align 8
  %121 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %122 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %121, i32 0, i32 5
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* %120, i8** %124, align 8
  %125 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %126 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %125, i32 0, i32 2
  store i32 2, i32* %126, align 8
  %127 = load i32, i32* @cxt5047_toshiba_init_verbs, align 4
  %128 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %129 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %127, i32* %131, align 4
  %132 = load i8*, i8** @cxt5047_hp_unsol_event, align 8
  %133 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %134 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %30, %115, %99, %87
  %137 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %138 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %137, i32 0, i32 3
  store i32 19, i32* %138, align 4
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 16
  switch i32 %142, label %158 [
    i32 4156, label %143
  ]

143:                                              ; preds = %136
  %144 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %145 = load i32, i32* @HDA_INPUT, align 4
  %146 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %147 = shl i32 23, %146
  %148 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %149 = shl i32 23, %148
  %150 = or i32 %147, %149
  %151 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %152 = shl i32 5, %151
  %153 = or i32 %150, %152
  %154 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %155 = shl i32 1, %154
  %156 = or i32 %153, %155
  %157 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %144, i32 16, i32 %145, i32 %156)
  br label %158

158:                                              ; preds = %136, %143
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %27, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @snd_hda_check_board_config(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @patch_conexant_auto(%struct.hda_codec*) #1

declare dso_local %struct.conexant_spec* @kzalloc(i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
