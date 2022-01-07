; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc269.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_patch_alc269.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.hda_codec = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.alc_spec* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.alc_spec = type { i32, i32, %struct.TYPE_9__, {}*, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@alc269_fixup_models = common dso_local global i32 0, align 4
@alc269_fixup_tbl = common dso_local global i32 0, align 4
@alc269_fixups = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PRE_PROBE = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC269VA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ALC271X\00", align 1
@ALC269_TYPE_ALC269VB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ALC3202\00", align 1
@ALC269_TYPE_ALC269VC = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC269VD = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC280 = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC282 = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC284 = common dso_local global i32 0, align 4
@ALC269_TYPE_ALC286 = common dso_local global i32 0, align 4
@AC_VERB_PARAMETERS = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@alc_patch_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@alc269_shutup = common dso_local global i32 0, align 4
@HDA_FIXUP_ACT_PROBE = common dso_local global i32 0, align 4
@alc269_resume = common dso_local global i32 0, align 4
@alc269_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_alc269 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_alc269(%struct.hda_codec* %0) #0 {
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
  br label %174

12:                                               ; preds = %1
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 3
  %15 = load %struct.alc_spec*, %struct.alc_spec** %14, align 8
  store %struct.alc_spec* %15, %struct.alc_spec** %4, align 8
  %16 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %17 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 24, i32* %18, align 8
  %19 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %20 = load i32, i32* @alc269_fixup_models, align 4
  %21 = load i32, i32* @alc269_fixup_tbl, align 4
  %22 = load i32, i32* @alc269_fixups, align 4
  %23 = call i32 @snd_hda_pick_fixup(%struct.hda_codec* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %25 = load i32, i32* @HDA_FIXUP_ACT_PRE_PROBE, align 4
  %26 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %24, i32 %25)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %28 = call i32 @alc_auto_parse_customize_define(%struct.hda_codec* %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = call i64 @has_cdefine_beep(%struct.hda_codec* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %34 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %12
  %37 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %38 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %127 [
    i32 283902569, label %40
    i32 283902592, label %111
    i32 283902608, label %111
    i32 283902515, label %115
    i32 283902594, label %115
    i32 283902595, label %115
    i32 283902596, label %119
    i32 283902610, label %119
    i32 283902598, label %123
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @ALC269_TYPE_ALC269VA, align 4
  %42 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %43 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @alc_get_coef0(%struct.hda_codec* %44)
  %46 = and i32 %45, 240
  switch i32 %46, label %98 [
    i32 16, label %47
    i32 32, label %69
    i32 48, label %94
  ]

47:                                               ; preds = %40
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 4133
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %58 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %64 = call i32 @alc_codec_rename(%struct.hda_codec* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %62, %56, %47
  %66 = load i32, i32* @ALC269_TYPE_ALC269VB, align 4
  %67 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %68 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  br label %101

69:                                               ; preds = %40
  %70 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %71 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 6058
  br i1 %77, label %78, label %90

78:                                               ; preds = %69
  %79 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %80 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 8691
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %89 = call i32 @alc_codec_rename(%struct.hda_codec* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %78, %69
  %91 = load i32, i32* @ALC269_TYPE_ALC269VC, align 4
  %92 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %93 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  br label %101

94:                                               ; preds = %40
  %95 = load i32, i32* @ALC269_TYPE_ALC269VD, align 4
  %96 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %97 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  br label %101

98:                                               ; preds = %40
  %99 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %100 = call i32 @alc_fix_pll_init(%struct.hda_codec* %99, i32 32, i32 4, i32 15)
  br label %101

101:                                              ; preds = %98, %94, %90, %65
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %170

105:                                              ; preds = %101
  %106 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %107 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %106, i32 0, i32 3
  %108 = bitcast {}** %107 to i32 (%struct.hda_codec*)**
  store i32 (%struct.hda_codec*)* @alc269_fill_coef, i32 (%struct.hda_codec*)** %108, align 8
  %109 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %110 = call i32 @alc269_fill_coef(%struct.hda_codec* %109)
  br label %127

111:                                              ; preds = %36, %36
  %112 = load i32, i32* @ALC269_TYPE_ALC280, align 4
  %113 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %114 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %127

115:                                              ; preds = %36, %36, %36
  %116 = load i32, i32* @ALC269_TYPE_ALC282, align 4
  %117 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %118 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  br label %127

119:                                              ; preds = %36, %36
  %120 = load i32, i32* @ALC269_TYPE_ALC284, align 4
  %121 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %122 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  br label %127

123:                                              ; preds = %36
  %124 = load i32, i32* @ALC269_TYPE_ALC286, align 4
  %125 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %126 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %36, %123, %119, %115, %111, %105
  %128 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %129 = load i32, i32* @AC_VERB_PARAMETERS, align 4
  %130 = call i32 @snd_hda_codec_read(%struct.hda_codec* %128, i32 81, i32 0, i32 %129, i32 0)
  %131 = icmp eq i32 %130, 283923717
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %134 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %136 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %135, i32 0, i32 3
  %137 = bitcast {}** %136 to i32 (%struct.hda_codec*)**
  store i32 (%struct.hda_codec*)* @alc5505_dsp_init, i32 (%struct.hda_codec*)** %137, align 8
  br label %138

138:                                              ; preds = %132, %127
  %139 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %140 = call i32 @alc269_parse_auto_config(%struct.hda_codec* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %170

144:                                              ; preds = %138
  %145 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %146 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %144
  %151 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %152 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %150
  %157 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %158 = load i32, i32* @HDA_INPUT, align 4
  %159 = call i32 @set_beep_amp(%struct.alc_spec* %157, i32 11, i32 4, i32 %158)
  br label %160

160:                                              ; preds = %156, %150, %144
  %161 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %162 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %161, i32 0, i32 1
  %163 = bitcast %struct.TYPE_10__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 bitcast (%struct.TYPE_10__* @alc_patch_ops to i8*), i64 8, i1 false)
  %164 = load i32, i32* @alc269_shutup, align 4
  %165 = load %struct.alc_spec*, %struct.alc_spec** %4, align 8
  %166 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %168 = load i32, i32* @HDA_FIXUP_ACT_PROBE, align 4
  %169 = call i32 @snd_hda_apply_fixup(%struct.hda_codec* %167, i32 %168)
  store i32 0, i32* %2, align 4
  br label %174

170:                                              ; preds = %143, %104
  %171 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %172 = call i32 @alc_free(%struct.hda_codec* %171)
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %160, %10
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @alc_alloc_spec(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_pick_fixup(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_apply_fixup(%struct.hda_codec*, i32) #1

declare dso_local i32 @alc_auto_parse_customize_define(%struct.hda_codec*) #1

declare dso_local i64 @has_cdefine_beep(%struct.hda_codec*) #1

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_codec_rename(%struct.hda_codec*, i8*) #1

declare dso_local i32 @alc_fix_pll_init(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc269_fill_coef(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc5505_dsp_init(%struct.hda_codec*) #1

declare dso_local i32 @alc269_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @set_beep_amp(%struct.alc_spec*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @alc_free(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
