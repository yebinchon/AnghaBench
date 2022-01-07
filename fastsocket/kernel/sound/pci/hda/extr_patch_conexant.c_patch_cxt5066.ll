; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5066.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_patch_cxt5066.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.hda_codec = type { %struct.TYPE_4__, %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_3__, i8*, i32*, i32, i8**, i32, i32, i64, i64, i8*, i8*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@CXT5066_MODELS = common dso_local global i32 0, align 4
@cxt5066_models = common dso_local global i32 0, align 4
@cxt5066_cfg_tbl = common dso_local global i32 0, align 4
@CXT5066_AUTO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@conexant_patch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@conexant_init = common dso_local global i8* null, align 8
@cxt5066_dac_nids = common dso_local global i8* null, align 8
@cxt5066_digout_pin_nids = common dso_local global i8* null, align 8
@cxt5066_adc_nids = common dso_local global i32 0, align 4
@cxt5066_capsrc_nids = common dso_local global i32 0, align 4
@cxt5066_capture_source = common dso_local global i32 0, align 4
@PIN_HP = common dso_local global i8* null, align 8
@cxt5066_init_verbs = common dso_local global i32 0, align 4
@cxt5066_modes = common dso_local global i8* null, align 8
@HDA_OUTPUT = common dso_local global i32 0, align 4
@cxt5066_mixer_master = common dso_local global i8* null, align 8
@cxt5066_mixers = common dso_local global i8* null, align 8
@PIN_OUT = common dso_local global i8* null, align 8
@cxt5066_init_verbs_portd_lo = common dso_local global i32 0, align 4
@cxt5066_init = common dso_local global i8* null, align 8
@cxt5066_unsol_event = common dso_local global i8* null, align 8
@cxt5066_init_verbs_hp_laptop = common dso_local global i32 0, align 4
@cxt5066_olpc_init = common dso_local global i8* null, align 8
@cxt5066_olpc_unsol_event = common dso_local global i8* null, align 8
@cxt5066_init_verbs_olpc = common dso_local global i32 0, align 4
@cxt5066_mixer_master_olpc = common dso_local global i8* null, align 8
@cxt5066_mixer_olpc_dc = common dso_local global i8* null, align 8
@cxt5066_olpc_capture_prepare = common dso_local global i32 0, align 4
@cxt5066_olpc_capture_cleanup = common dso_local global i32 0, align 4
@cxt5066_init_verbs_vostro = common dso_local global i32 0, align 4
@cxt5066_vostro_mixers = common dso_local global i8* null, align 8
@cxt5066_init_verbs_ideapad = common dso_local global i32 0, align 4
@cxt5066_init_verbs_thinkpad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_cxt5066 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_cxt5066(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.conexant_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = load i32, i32* @CXT5066_MODELS, align 4
  %8 = load i32, i32* @cxt5066_models, align 4
  %9 = load i32, i32* @cxt5066_cfg_tbl, align 4
  %10 = call i32 @snd_hda_check_board_config(%struct.hda_codec* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @CXT5066_AUTO, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CXT5066_AUTO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = call i32 @patch_conexant_auto(%struct.hda_codec* %20)
  store i32 %21, i32* %2, align 4
  br label %439

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.conexant_spec* @kzalloc(i32 160, i32 %23)
  store %struct.conexant_spec* %24, %struct.conexant_spec** %4, align 8
  %25 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %26 = icmp ne %struct.conexant_spec* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %439

30:                                               ; preds = %22
  %31 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 1
  store %struct.conexant_spec* %31, %struct.conexant_spec** %33, align 8
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_4__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_4__* @conexant_patch_ops to i8*), i64 16, i1 false)
  %37 = load i8*, i8** @conexant_init, align 8
  %38 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %39 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %44 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load i8*, i8** @cxt5066_dac_nids, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %49 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @cxt5066_dac_nids, align 8
  %52 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %53 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = load i8*, i8** @cxt5066_digout_pin_nids, align 8
  %57 = load i8*, i8** @cxt5066_digout_pin_nids, align 8
  %58 = call i8* @ARRAY_SIZE(i8* %57)
  %59 = call i32 @conexant_check_dig_outs(%struct.hda_codec* %55, i8* %56, i8* %58)
  %60 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %61 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @cxt5066_adc_nids, align 4
  %63 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %64 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %63, i32 0, i32 23
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @cxt5066_capsrc_nids, align 4
  %66 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %67 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %66, i32 0, i32 22
  store i32 %65, i32* %67, align 8
  %68 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %69 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %68, i32 0, i32 10
  store i32* @cxt5066_capture_source, i32** %69, align 8
  %70 = load i8*, i8** @PIN_HP, align 8
  %71 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %72 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %71, i32 0, i32 12
  store i8* %70, i8** %72, align 8
  %73 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %74 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @cxt5066_init_verbs, align 4
  %76 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %77 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %76, i32 0, i32 13
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  %80 = load i8*, i8** @cxt5066_modes, align 8
  %81 = call i8* @ARRAY_SIZE(i8* %80)
  %82 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %83 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %82, i32 0, i32 21
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @cxt5066_modes, align 8
  %85 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %86 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %85, i32 0, i32 20
  store i8* %84, i8** %86, align 8
  %87 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %88 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %87, i32 0, i32 19
  store i64 0, i64* %88, align 8
  %89 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %90 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %89, i32 0, i32 18
  store i64 0, i64* %90, align 8
  %91 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %92 = load i32, i32* @HDA_OUTPUT, align 4
  %93 = call i32 @set_beep_amp(%struct.conexant_spec* %91, i32 19, i32 0, i32 %92)
  %94 = load i32, i32* %5, align 4
  switch i32 %94, label %95 [
    i32 130, label %96
    i32 134, label %117
    i32 135, label %156
    i32 132, label %156
    i32 129, label %221
    i32 133, label %280
    i32 131, label %335
    i32 128, label %380
  ]

95:                                               ; preds = %30
  br label %96

96:                                               ; preds = %30, %95
  %97 = load i8*, i8** @cxt5066_mixer_master, align 8
  %98 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %99 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %98, i32 0, i32 15
  %100 = load i8**, i8*** %99, align 8
  %101 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %102 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8*, i8** %100, i64 %105
  store i8* %97, i8** %106, align 8
  %107 = load i8*, i8** @cxt5066_mixers, align 8
  %108 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %109 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %108, i32 0, i32 15
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %112 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8*, i8** %110, i64 %115
  store i8* %107, i8** %116, align 8
  br label %426

117:                                              ; preds = %30
  %118 = load i8*, i8** @cxt5066_mixer_master, align 8
  %119 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %120 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %119, i32 0, i32 15
  %121 = load i8**, i8*** %120, align 8
  %122 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %123 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %122, i32 0, i32 14
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %121, i64 %126
  store i8* %118, i8** %127, align 8
  %128 = load i8*, i8** @cxt5066_mixers, align 8
  %129 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %130 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %129, i32 0, i32 15
  %131 = load i8**, i8*** %130, align 8
  %132 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %133 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8*, i8** %131, i64 %136
  store i8* %128, i8** %137, align 8
  %138 = load i8*, i8** @PIN_OUT, align 8
  %139 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %140 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %139, i32 0, i32 12
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @cxt5066_init_verbs_portd_lo, align 4
  %142 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %143 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %142, i32 0, i32 13
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %146 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  store i32 %141, i32* %149, align 4
  %150 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %151 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %155 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %426

156:                                              ; preds = %30, %30
  %157 = load i8*, i8** @cxt5066_init, align 8
  %158 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %159 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  %161 = load i8*, i8** @cxt5066_unsol_event, align 8
  %162 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %163 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load i32, i32* @cxt5066_init_verbs_hp_laptop, align 4
  %166 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %167 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %166, i32 0, i32 13
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %170 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32 %165, i32* %173, align 4
  %174 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %175 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %5, align 4
  %179 = icmp eq i32 %178, 132
  %180 = zext i1 %179 to i32
  %181 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %182 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp eq i32 %183, 135
  %185 = zext i1 %184 to i32
  %186 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %187 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load i8*, i8** @cxt5066_mixer_master, align 8
  %189 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %190 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %189, i32 0, i32 15
  %191 = load i8**, i8*** %190, align 8
  %192 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %193 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %192, i32 0, i32 14
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8*, i8** %191, i64 %196
  store i8* %188, i8** %197, align 8
  %198 = load i8*, i8** @cxt5066_mixers, align 8
  %199 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %200 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %199, i32 0, i32 15
  %201 = load i8**, i8*** %200, align 8
  %202 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %203 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %202, i32 0, i32 14
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8*, i8** %201, i64 %206
  store i8* %198, i8** %207, align 8
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 132
  br i1 %209, label %210, label %214

210:                                              ; preds = %156
  %211 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %212 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %211, i32 0, i32 11
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  br label %214

214:                                              ; preds = %210, %156
  %215 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %216 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %215, i32 0, i32 10
  store i32* null, i32** %216, align 8
  %217 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %218 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %217, i32 0, i32 12
  store i8* null, i8** %218, align 8
  %219 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %220 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %219, i32 0, i32 5
  store i32 3, i32* %220, align 4
  br label %426

221:                                              ; preds = %30
  %222 = load i8*, i8** @cxt5066_olpc_init, align 8
  %223 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %224 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  store i8* %222, i8** %225, align 8
  %226 = load i8*, i8** @cxt5066_olpc_unsol_event, align 8
  %227 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %228 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  store i8* %226, i8** %229, align 8
  %230 = load i32, i32* @cxt5066_init_verbs_olpc, align 4
  %231 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %232 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %231, i32 0, i32 13
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  store i32 %230, i32* %234, align 4
  %235 = load i8*, i8** @cxt5066_mixer_master_olpc, align 8
  %236 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %237 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %236, i32 0, i32 15
  %238 = load i8**, i8*** %237, align 8
  %239 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %240 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %239, i32 0, i32 14
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i8*, i8** %238, i64 %243
  store i8* %235, i8** %244, align 8
  %245 = load i8*, i8** @cxt5066_mixer_olpc_dc, align 8
  %246 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %247 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %246, i32 0, i32 15
  %248 = load i8**, i8*** %247, align 8
  %249 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %250 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %249, i32 0, i32 14
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8*, i8** %248, i64 %253
  store i8* %245, i8** %254, align 8
  %255 = load i8*, i8** @cxt5066_mixers, align 8
  %256 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %257 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %256, i32 0, i32 15
  %258 = load i8**, i8*** %257, align 8
  %259 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %260 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %259, i32 0, i32 14
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i8*, i8** %258, i64 %263
  store i8* %255, i8** %264, align 8
  %265 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %266 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %265, i32 0, i32 12
  store i8* null, i8** %266, align 8
  %267 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %268 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %267, i32 0, i32 5
  store i32 3, i32* %268, align 4
  %269 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %270 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %269, i32 0, i32 11
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  %272 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %273 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %272, i32 0, i32 10
  store i32* null, i32** %273, align 8
  %274 = load i32, i32* @cxt5066_olpc_capture_prepare, align 4
  %275 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %276 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %275, i32 0, i32 17
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* @cxt5066_olpc_capture_cleanup, align 4
  %278 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %279 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %278, i32 0, i32 16
  store i32 %277, i32* %279, align 8
  br label %426

280:                                              ; preds = %30
  %281 = load i8*, i8** @cxt5066_init, align 8
  %282 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %283 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  store i8* %281, i8** %284, align 8
  %285 = load i8*, i8** @cxt5066_unsol_event, align 8
  %286 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %287 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  store i8* %285, i8** %288, align 8
  %289 = load i32, i32* @cxt5066_init_verbs_vostro, align 4
  %290 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %291 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %290, i32 0, i32 13
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %289, i32* %293, align 4
  %294 = load i8*, i8** @cxt5066_mixer_master_olpc, align 8
  %295 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %296 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %295, i32 0, i32 15
  %297 = load i8**, i8*** %296, align 8
  %298 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %299 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %298, i32 0, i32 14
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i8*, i8** %297, i64 %302
  store i8* %294, i8** %303, align 8
  %304 = load i8*, i8** @cxt5066_mixers, align 8
  %305 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %306 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %305, i32 0, i32 15
  %307 = load i8**, i8*** %306, align 8
  %308 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %309 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %308, i32 0, i32 14
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i8*, i8** %307, i64 %312
  store i8* %304, i8** %313, align 8
  %314 = load i8*, i8** @cxt5066_vostro_mixers, align 8
  %315 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %316 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %315, i32 0, i32 15
  %317 = load i8**, i8*** %316, align 8
  %318 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %319 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %318, i32 0, i32 14
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i8*, i8** %317, i64 %322
  store i8* %314, i8** %323, align 8
  %324 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %325 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %324, i32 0, i32 12
  store i8* null, i8** %325, align 8
  %326 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %327 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %326, i32 0, i32 6
  store i32 1, i32* %327, align 8
  %328 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %329 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %328, i32 0, i32 5
  store i32 3, i32* %329, align 4
  %330 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %331 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %330, i32 0, i32 11
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 1
  store i32 0, i32* %332, align 4
  %333 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %334 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %333, i32 0, i32 10
  store i32* null, i32** %334, align 8
  br label %426

335:                                              ; preds = %30
  %336 = load i8*, i8** @cxt5066_init, align 8
  %337 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %338 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  store i8* %336, i8** %339, align 8
  %340 = load i8*, i8** @cxt5066_unsol_event, align 8
  %341 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %342 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  store i8* %340, i8** %343, align 8
  %344 = load i8*, i8** @cxt5066_mixer_master, align 8
  %345 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %346 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %345, i32 0, i32 15
  %347 = load i8**, i8*** %346, align 8
  %348 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %349 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %348, i32 0, i32 14
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8*, i8** %347, i64 %352
  store i8* %344, i8** %353, align 8
  %354 = load i8*, i8** @cxt5066_mixers, align 8
  %355 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %356 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %355, i32 0, i32 15
  %357 = load i8**, i8*** %356, align 8
  %358 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %359 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %358, i32 0, i32 14
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8*, i8** %357, i64 %362
  store i8* %354, i8** %363, align 8
  %364 = load i32, i32* @cxt5066_init_verbs_ideapad, align 4
  %365 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %366 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %365, i32 0, i32 13
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  store i32 %364, i32* %368, align 4
  %369 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %370 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %369, i32 0, i32 12
  store i8* null, i8** %370, align 8
  %371 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %372 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %371, i32 0, i32 7
  store i32 1, i32* %372, align 4
  %373 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %374 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %373, i32 0, i32 5
  store i32 2, i32* %374, align 4
  %375 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %376 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %375, i32 0, i32 11
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 1
  store i32 0, i32* %377, align 4
  %378 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %379 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %378, i32 0, i32 10
  store i32* null, i32** %379, align 8
  br label %426

380:                                              ; preds = %30
  %381 = load i8*, i8** @cxt5066_init, align 8
  %382 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %383 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  store i8* %381, i8** %384, align 8
  %385 = load i8*, i8** @cxt5066_unsol_event, align 8
  %386 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %387 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 0
  store i8* %385, i8** %388, align 8
  %389 = load i8*, i8** @cxt5066_mixer_master, align 8
  %390 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %391 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %390, i32 0, i32 15
  %392 = load i8**, i8*** %391, align 8
  %393 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %394 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %393, i32 0, i32 14
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i8*, i8** %392, i64 %397
  store i8* %389, i8** %398, align 8
  %399 = load i8*, i8** @cxt5066_mixers, align 8
  %400 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %401 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %400, i32 0, i32 15
  %402 = load i8**, i8*** %401, align 8
  %403 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %404 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %403, i32 0, i32 14
  %405 = load i32, i32* %404, align 8
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %404, align 8
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i8*, i8** %402, i64 %407
  store i8* %399, i8** %408, align 8
  %409 = load i32, i32* @cxt5066_init_verbs_thinkpad, align 4
  %410 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %411 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %410, i32 0, i32 13
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  store i32 %409, i32* %413, align 4
  %414 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %415 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %414, i32 0, i32 8
  store i32 1, i32* %415, align 8
  %416 = load i8*, i8** @PIN_OUT, align 8
  %417 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %418 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %417, i32 0, i32 12
  store i8* %416, i8** %418, align 8
  %419 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %420 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %419, i32 0, i32 5
  store i32 2, i32* %420, align 4
  %421 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %422 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %421, i32 0, i32 11
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 1
  store i32 0, i32* %423, align 4
  %424 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %425 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %424, i32 0, i32 10
  store i32* null, i32** %425, align 8
  br label %426

426:                                              ; preds = %380, %335, %280, %221, %214, %117, %96
  %427 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %428 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %427, i32 0, i32 9
  %429 = load i64, i64* %428, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %438

431:                                              ; preds = %426
  %432 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %433 = load %struct.conexant_spec*, %struct.conexant_spec** %4, align 8
  %434 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %433, i32 0, i32 9
  %435 = load i64, i64* %434, align 8
  %436 = call i32 @get_amp_nid_(i64 %435)
  %437 = call i32 @snd_hda_attach_beep_device(%struct.hda_codec* %432, i32 %436)
  br label %438

438:                                              ; preds = %431, %426
  store i32 0, i32* %2, align 4
  br label %439

439:                                              ; preds = %438, %27, %19
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

declare dso_local i32 @snd_hda_check_board_config(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @patch_conexant_auto(%struct.hda_codec*) #1

declare dso_local %struct.conexant_spec* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @conexant_check_dig_outs(%struct.hda_codec*, i8*, i8*) #1

declare dso_local i32 @set_beep_amp(%struct.conexant_spec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_attach_beep_device(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_amp_nid_(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
