; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32, i32, i32, i32, i32, i32 }
%struct.hda_codec = type { i32, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hdmi_spec_per_pin = type { i32, %struct.hdmi_eld }
%struct.hdmi_eld = type { i32, i64 }
%struct.hdmi_spec_per_cvt = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4
@static_hdmi_pcm = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @hdmi_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_pcm_open(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.hdmi_spec*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hdmi_spec_per_pin*, align 8
  %14 = alloca %struct.hdmi_eld*, align 8
  %15 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %16 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %6, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %7, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 1
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %18, align 8
  store %struct.hdmi_spec* %19, %struct.hdmi_spec** %8, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %9, align 8
  store i32 0, i32* %12, align 4
  store %struct.hdmi_spec_per_cvt* null, %struct.hdmi_spec_per_cvt** %15, align 8
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %24 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %25 = call i32 @hinfo_to_pin_index(%struct.hdmi_spec* %23, %struct.hda_pcm_stream* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @snd_BUG_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %176

34:                                               ; preds = %3
  %35 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %35, i32 %36)
  store %struct.hdmi_spec_per_pin* %37, %struct.hdmi_spec_per_pin** %13, align 8
  %38 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %38, i32 0, i32 1
  store %struct.hdmi_eld* %39, %struct.hdmi_eld** %14, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @hdmi_choose_cvt(%struct.hda_codec* %40, i32 %41, i32* %11, i32* %12)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %4, align 4
  br label %176

47:                                               ; preds = %34
  %48 = load %struct.hdmi_spec*, %struct.hdmi_spec** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %48, i32 %49)
  store %struct.hdmi_spec_per_cvt* %50, %struct.hdmi_spec_per_cvt** %15, align 8
  %51 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %54 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %57 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %59 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %13, align 8
  %60 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %58, i32 %61, i32 0, i32 %62, i32 %63)
  %65 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %66 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -2138691577
  br i1 %68, label %69, label %74

69:                                               ; preds = %47
  %70 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @haswell_config_cvts(%struct.hda_codec* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %47
  %75 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %78 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec* %75, i32 %76, i32 %79)
  %81 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %82 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %85 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %90 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %92 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %95 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %97 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %100 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %102 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %105 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @static_hdmi_pcm, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %146, label %108

108:                                              ; preds = %74
  %109 = load %struct.hdmi_eld*, %struct.hdmi_eld** %14, align 8
  %110 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %108
  %114 = load %struct.hdmi_eld*, %struct.hdmi_eld** %14, align 8
  %115 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %114, i32 0, i32 0
  %116 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %117 = call i32 @snd_hdmi_eld_update_pcm_info(i32* %115, %struct.hda_pcm_stream* %116)
  %118 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %119 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %122 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %120, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %113
  %126 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %127 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %132 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %130, %125, %113
  %136 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %15, align 8
  %137 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %136, i32 0, i32 0
  store i32 0, i32* %137, align 4
  %138 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %139 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %138, i32 0, i32 4
  store i32 0, i32* %139, align 4
  %140 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec* %140, i32 %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %176

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %108, %74
  %147 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %148 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %154 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %157 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 4
  %159 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %160 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %163 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %166 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %169 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 4
  %171 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %172 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %171, i32 0, i32 0
  %173 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %172, align 8
  %174 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %175 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %173, i32 0, i32 %174, i32 2)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %146, %135, %45, %31
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @hinfo_to_pin_index(%struct.hdmi_spec*, %struct.hda_pcm_stream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @hdmi_choose_cvt(%struct.hda_codec*, i32, i32*, i32*) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @haswell_config_cvts(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_spdif_ctls_assign(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hdmi_eld_update_pcm_info(i32*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @snd_hda_spdif_ctls_unassign(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
