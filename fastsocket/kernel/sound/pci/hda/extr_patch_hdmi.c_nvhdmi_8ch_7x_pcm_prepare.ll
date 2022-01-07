; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { i32, i64, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hda_spdif_out = type { i32 }
%struct.hdmi_spec_per_cvt = type { i32 }

@AC_DIG1_ENABLE = common dso_local global i32 0, align 4
@nvhdmi_master_con_nid_7x = common dso_local global i32 0, align 4
@AC_VERB_SET_DIGI_CONVERT_1 = common dso_local global i32 0, align 4
@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@AC_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@AC_VERB_SET_DIGI_CONVERT_2 = common dso_local global i32 0, align 4
@nvhdmi_con_nids_7x = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @nvhdmi_8ch_7x_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvhdmi_8ch_7x_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hdmi_spec*, align 8
  %16 = alloca %struct.hda_spdif_out*, align 8
  %17 = alloca %struct.hdmi_spec_per_cvt*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 2
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %19, align 8
  store %struct.hdmi_spec* %20, %struct.hdmi_spec** %15, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %15, align 8
  %25 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %24, i32 0)
  store %struct.hdmi_spec_per_cvt* %25, %struct.hdmi_spec_per_cvt** %17, align 8
  %26 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %27 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %17, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec* %26, i32 %29)
  store %struct.hda_spdif_out* %30, %struct.hda_spdif_out** %16, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  store i32 2, i32* %12, align 4
  %36 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %37 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %5
  %41 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %42 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %49 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %50 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_1, align 4
  %51 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %52 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = and i32 %56, 255
  %58 = call i32 @snd_hda_codec_write(%struct.hda_codec* %48, i32 %49, i32 0, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %47, %40, %5
  %60 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %61 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %62 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 4
  %65 = call i32 @snd_hda_codec_write(%struct.hda_codec* %60, i32 %61, i32 0, i32 %62, i32 %64)
  %66 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %67 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %68 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snd_hda_codec_write(%struct.hda_codec* %66, i32 %67, i32 0, i32 %68, i32 %69)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %59
  %76 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %77 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %84 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %85 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_1, align 4
  %86 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %87 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = call i32 @snd_hda_codec_write(%struct.hda_codec* %83, i32 %84, i32 0, i32 %85, i32 %89)
  %91 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %92 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %93 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_2, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @snd_hda_codec_write(%struct.hda_codec* %91, i32 %92, i32 0, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %82, %75, %59
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %191, %96
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %194

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 %105, 2
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %109 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %114 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %121 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_1, align 4
  %127 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %128 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = and i32 %132, 255
  %134 = call i32 @snd_hda_codec_write(%struct.hda_codec* %120, i32 %125, i32 0, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %119, %112, %107
  %136 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %137 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %143 = load i32, i32* %8, align 4
  %144 = shl i32 %143, 4
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @snd_hda_codec_write(%struct.hda_codec* %136, i32 %141, i32 0, i32 %142, i32 %146)
  %148 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %149 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @snd_hda_codec_write(%struct.hda_codec* %148, i32 %153, i32 0, i32 %154, i32 %155)
  %157 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %158 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %190

161:                                              ; preds = %135
  %162 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %163 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AC_DIG1_ENABLE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %161
  %169 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %170 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_1, align 4
  %176 = load %struct.hda_spdif_out*, %struct.hda_spdif_out** %16, align 8
  %177 = getelementptr inbounds %struct.hda_spdif_out, %struct.hda_spdif_out* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 255
  %180 = call i32 @snd_hda_codec_write(%struct.hda_codec* %169, i32 %174, i32 0, i32 %175, i32 %179)
  %181 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %182 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AC_VERB_SET_DIGI_CONVERT_2, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @snd_hda_codec_write(%struct.hda_codec* %181, i32 %186, i32 0, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %168, %161, %135
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %97

194:                                              ; preds = %97
  %195 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @nvhdmi_8ch_7x_set_info_frame_parameters(%struct.hda_codec* %195, i32 %196)
  %198 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %199 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local %struct.hda_spdif_out* @snd_hda_spdif_out_of_nid(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @nvhdmi_8ch_7x_set_info_frame_parameters(%struct.hda_codec*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
