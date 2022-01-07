; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5045.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.hda_codec = type { i32, i32, %struct.TYPE_4__, %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i32, i64, i8**, i8**, i32*, i8*, i8*, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@CXT5045_MODELS = common dso_local global i32 0, align 4
@cxt5045_models = common dso_local global i32 0, align 4
@cxt5045_cfg_tbl = common dso_local global i32 0, align 4
@CXT5045_AUTO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cxt5045_dac_nids = common dso_local global i8* null, align 8
@CXT5045_SPDIF_OUT = common dso_local global i32 0, align 4
@cxt5045_adc_nids = common dso_local global i32 0, align 4
@cxt5045_capsrc_nids = common dso_local global i32 0, align 4
@cxt5045_capture_source = common dso_local global i32 0, align 4
@cxt5045_mixers = common dso_local global i8* null, align 8
@cxt5045_init_verbs = common dso_local global i8* null, align 8
@cxt5045_modes = common dso_local global i8* null, align 8
@conexant_patch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cxt5045_hp_unsol_event = common dso_local global i8* null, align 8
@cxt5045_hp_sense_init_verbs = common dso_local global i8* null, align 8
@cxt5045_init = common dso_local global i8* null, align 8
@cxt5045_mic_sense_init_verbs = common dso_local global i8* null, align 8
@cxt5045_capture_source_benq = common dso_local global i32 0, align 4
@cxt5045_benq_init_verbs = common dso_local global i8* null, align 8
@cxt5045_benq_mixers = common dso_local global i8* null, align 8
@cxt5045_capture_source_hp530 = common dso_local global i32 0, align 4
@cxt5045_mixers_hp530 = common dso_local global i8* null, align 8
@HDA_INPUT = common dso_local global i32 0, align 4
@AC_AMPCAP_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_NUM_STEPS_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_STEP_SIZE_SHIFT = common dso_local global i32 0, align 4
@AC_AMPCAP_MUTE_SHIFT = common dso_local global i32 0, align 4
@cxt5045_test_capture_source = common dso_local global i32 0, align 4
@cxt5045_test_init_verbs = common dso_local global i8* null, align 8
@cxt5045_test_mixer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_cxt5045 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cxt5045(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.conexant_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @CXT5045_MODELS, align 4
  %8 = load i32, i32* @cxt5045_models, align 4
  %9 = load i32, i32* @cxt5045_cfg_tbl, align 4
  %10 = call i32 @snd_hda_check_board_config(%struct.hda_codec* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @CXT5045_AUTO, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CXT5045_AUTO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @patch_conexant_auto(%struct.hda_codec* %20)
  store i32 %21, i32* %2, align 4
  br label %252

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.conexant_spec* @kzalloc(i32 104, i32 %23)
  store %struct.conexant_spec* %24, %struct.conexant_spec** %4, align 8
  %25 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %26 = icmp ne %struct.conexant_spec* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %252

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
  %39 = load i8*, i8** @cxt5045_dac_nids, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 12
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @cxt5045_dac_nids, align 8
  %45 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %46 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %45, i32 0, i32 12
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* @CXT5045_SPDIF_OUT, align 4
  %49 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %50 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %49, i32 0, i32 12
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %53 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load i32, i32* @cxt5045_adc_nids, align 4
  %55 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %56 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @cxt5045_capsrc_nids, align 4
  %58 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %59 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %58, i32 0, i32 10
  store i32 %57, i32* %59, align 8
  %60 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %61 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %60, i32 0, i32 6
  store i32* @cxt5045_capture_source, i32** %61, align 8
  %62 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %63 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i8*, i8** @cxt5045_mixers, align 8
  %65 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %66 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %65, i32 0, i32 5
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  store i8* %64, i8** %68, align 8
  %69 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %70 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load i8*, i8** @cxt5045_init_verbs, align 8
  %72 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %73 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %72, i32 0, i32 4
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %71, i8** %75, align 8
  %76 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %77 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %76, i32 0, i32 9
  store i64 0, i64* %77, align 8
  %78 = load i8*, i8** @cxt5045_modes, align 8
  %79 = call i8* @ARRAY_SIZE(i8* %78)
  %80 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %81 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %80, i32 0, i32 8
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @cxt5045_modes, align 8
  %83 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %84 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %86 = call i32 @set_beep_amp(%struct.conexant_spec* %85, i32 22, i32 0, i32 1)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %88 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %87, i32 0, i32 2
  %89 = bitcast %struct.TYPE_4__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 bitcast (%struct.TYPE_4__* @conexant_patch_ops to i8*), i64 16, i1 false)
  %90 = load i32, i32* %5, align 4
  switch i32 %90, label %137 [
    i32 130, label %91
    i32 129, label %114
    i32 131, label %138
    i32 133, label %166
    i32 132, label %196
  ]

91:                                               ; preds = %30
  %92 = load i8*, i8** @cxt5045_hp_unsol_event, align 8
  %93 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %94 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %97 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %96, i32 0, i32 6
  store i32* @cxt5045_capture_source, i32** %97, align 8
  %98 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %99 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %98, i32 0, i32 2
  store i32 2, i32* %99, align 8
  %100 = load i8*, i8** @cxt5045_hp_sense_init_verbs, align 8
  %101 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %102 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %101, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* %100, i8** %104, align 8
  %105 = load i8*, i8** @cxt5045_mixers, align 8
  %106 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %107 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %106, i32 0, i32 5
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  store i8* %105, i8** %109, align 8
  %110 = load i8*, i8** @cxt5045_init, align 8
  %111 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %112 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  br label %219

114:                                              ; preds = %30
  %115 = load i8*, i8** @cxt5045_hp_unsol_event, align 8
  %116 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %117 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  %119 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %120 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %119, i32 0, i32 6
  store i32* @cxt5045_capture_source, i32** %120, align 8
  %121 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %122 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %121, i32 0, i32 2
  store i32 2, i32* %122, align 8
  %123 = load i8*, i8** @cxt5045_mic_sense_init_verbs, align 8
  %124 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %125 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %124, i32 0, i32 4
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  store i8* %123, i8** %127, align 8
  %128 = load i8*, i8** @cxt5045_mixers, align 8
  %129 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %130 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %129, i32 0, i32 5
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %128, i8** %132, align 8
  %133 = load i8*, i8** @cxt5045_init, align 8
  %134 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %135 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %219

137:                                              ; preds = %30
  br label %138

138:                                              ; preds = %30, %137
  %139 = load i8*, i8** @cxt5045_hp_unsol_event, align 8
  %140 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %141 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i8* %139, i8** %142, align 8
  %143 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %144 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %143, i32 0, i32 6
  store i32* @cxt5045_capture_source, i32** %144, align 8
  %145 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %146 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %145, i32 0, i32 2
  store i32 3, i32* %146, align 8
  %147 = load i8*, i8** @cxt5045_hp_sense_init_verbs, align 8
  %148 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %149 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %148, i32 0, i32 4
  %150 = load i8**, i8*** %149, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  store i8* %147, i8** %151, align 8
  %152 = load i8*, i8** @cxt5045_mic_sense_init_verbs, align 8
  %153 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %154 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %153, i32 0, i32 4
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 2
  store i8* %152, i8** %156, align 8
  %157 = load i8*, i8** @cxt5045_mixers, align 8
  %158 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %159 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %158, i32 0, i32 5
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* %157, i8** %161, align 8
  %162 = load i8*, i8** @cxt5045_init, align 8
  %163 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %164 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  br label %219

166:                                              ; preds = %30
  %167 = load i8*, i8** @cxt5045_hp_unsol_event, align 8
  %168 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %169 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %172 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %171, i32 0, i32 6
  store i32* @cxt5045_capture_source_benq, i32** %172, align 8
  %173 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %174 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load i8*, i8** @cxt5045_benq_init_verbs, align 8
  %176 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %177 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %176, i32 0, i32 4
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %175, i8** %179, align 8
  %180 = load i8*, i8** @cxt5045_mixers, align 8
  %181 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %182 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %181, i32 0, i32 5
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  store i8* %180, i8** %184, align 8
  %185 = load i8*, i8** @cxt5045_benq_mixers, align 8
  %186 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %187 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %186, i32 0, i32 5
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 1
  store i8* %185, i8** %189, align 8
  %190 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %191 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %190, i32 0, i32 1
  store i32 2, i32* %191, align 4
  %192 = load i8*, i8** @cxt5045_init, align 8
  %193 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %194 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  br label %219

196:                                              ; preds = %30
  %197 = load i8*, i8** @cxt5045_hp_unsol_event, align 8
  %198 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %199 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  store i8* %197, i8** %200, align 8
  %201 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %202 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %201, i32 0, i32 6
  store i32* @cxt5045_capture_source_hp530, i32** %202, align 8
  %203 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %204 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %203, i32 0, i32 2
  store i32 2, i32* %204, align 8
  %205 = load i8*, i8** @cxt5045_hp_sense_init_verbs, align 8
  %206 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %207 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %206, i32 0, i32 4
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  store i8* %205, i8** %209, align 8
  %210 = load i8*, i8** @cxt5045_mixers_hp530, align 8
  %211 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %212 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %211, i32 0, i32 5
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 0
  store i8* %210, i8** %214, align 8
  %215 = load i8*, i8** @cxt5045_init, align 8
  %216 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %217 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i8* %215, i8** %218, align 8
  br label %219

219:                                              ; preds = %196, %166, %138, %114, %91
  %220 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %221 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = ashr i32 %222, 16
  switch i32 %223, label %239 [
    i32 4156, label %224
    i32 5681, label %224
    i32 5940, label %224
    i32 6058, label %224
  ]

224:                                              ; preds = %219, %219, %219, %219
  %225 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %226 = load i32, i32* @HDA_INPUT, align 4
  %227 = load i32, i32* @AC_AMPCAP_OFFSET_SHIFT, align 4
  %228 = shl i32 20, %227
  %229 = load i32, i32* @AC_AMPCAP_NUM_STEPS_SHIFT, align 4
  %230 = shl i32 20, %229
  %231 = or i32 %228, %230
  %232 = load i32, i32* @AC_AMPCAP_STEP_SIZE_SHIFT, align 4
  %233 = shl i32 5, %232
  %234 = or i32 %231, %233
  %235 = load i32, i32* @AC_AMPCAP_MUTE_SHIFT, align 4
  %236 = shl i32 1, %235
  %237 = or i32 %234, %236
  %238 = call i32 @snd_hda_override_amp_caps(%struct.hda_codec* %225, i32 23, i32 %226, i32 %237)
  br label %239

239:                                              ; preds = %219, %224
  %240 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %241 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %246 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %247 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @get_amp_nid_(i64 %248)
  %250 = call i32 @snd_hda_attach_beep_device(%struct.hda_codec* %245, i32 %249)
  br label %251

251:                                              ; preds = %244, %239
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %251, %27, %19
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @snd_hda_check_board_config(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @patch_conexant_auto(%struct.hda_codec*) #1

declare dso_local %struct.conexant_spec* @kzalloc(i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @set_beep_amp(%struct.conexant_spec*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_hda_override_amp_caps(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_attach_beep_device(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_amp_nid_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
