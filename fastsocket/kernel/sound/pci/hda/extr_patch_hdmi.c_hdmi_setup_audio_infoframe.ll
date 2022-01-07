; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_audio_infoframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_setup_audio_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, %struct.hdmi_eld, i32 }
%struct.hdmi_eld = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%union.audio_infoframe = type { %struct.dp_audio_infoframe }
%struct.dp_audio_infoframe = type { i32, i32, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"HDMI: unknown connection type at pin %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"hdmi_setup_audio_infoframe: pin=%d channels=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @hdmi_setup_audio_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_setup_audio_infoframe(%struct.hda_codec* %0, i32 %1, i32 %2, %struct.snd_pcm_substream* %3) #0 {
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.hdmi_spec*, align 8
  %10 = alloca %struct.hdmi_spec_per_pin*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hdmi_eld*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.audio_infoframe, align 4
  %16 = alloca %struct.hdmi_audio_infoframe*, align 8
  %17 = alloca %struct.dp_audio_infoframe*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.snd_pcm_substream* %3, %struct.snd_pcm_substream** %8, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %19, align 8
  store %struct.hdmi_spec* %20, %struct.hdmi_spec** %9, align 8
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %21, i32 %22)
  store %struct.hdmi_spec_per_pin* %23, %struct.hdmi_spec_per_pin** %10, align 8
  %24 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %33 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %32, i32 0, i32 1
  store %struct.hdmi_eld* %33, %struct.hdmi_eld** %13, align 8
  %34 = load %struct.hdmi_eld*, %struct.hdmi_eld** %13, align 8
  %35 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  br label %135

39:                                               ; preds = %4
  %40 = load %struct.hdmi_eld*, %struct.hdmi_eld** %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @hdmi_channel_allocation(%struct.hdmi_eld* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = call i32 @memset(%union.audio_infoframe* %15, i32 0, i32 20)
  %44 = load %struct.hdmi_eld*, %struct.hdmi_eld** %13, align 8
  %45 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %39
  %50 = bitcast %union.audio_infoframe* %15 to %struct.hdmi_audio_infoframe*
  store %struct.hdmi_audio_infoframe* %50, %struct.hdmi_audio_infoframe** %16, align 8
  %51 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %52 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %51, i32 0, i32 0
  store i32 132, i32* %52, align 4
  %53 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %54 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %56 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %55, i32 0, i32 2
  store i32 10, i32* %56, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %60 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %63 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %16, align 8
  %65 = call i32 @hdmi_checksum_audio_infoframe(%struct.hdmi_audio_infoframe* %64)
  br label %91

66:                                               ; preds = %39
  %67 = load %struct.hdmi_eld*, %struct.hdmi_eld** %13, align 8
  %68 = getelementptr inbounds %struct.hdmi_eld, %struct.hdmi_eld* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = bitcast %union.audio_infoframe* %15 to %struct.dp_audio_infoframe*
  store %struct.dp_audio_infoframe* %73, %struct.dp_audio_infoframe** %17, align 8
  %74 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %17, align 8
  %75 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %74, i32 0, i32 0
  store i32 132, i32* %75, align 4
  %76 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %17, align 8
  %77 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %76, i32 0, i32 1
  store i32 27, i32* %77, align 4
  %78 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %17, align 8
  %79 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %78, i32 0, i32 2
  store i32 68, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %17, align 8
  %83 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.dp_audio_infoframe*, %struct.dp_audio_infoframe** %17, align 8
  %86 = getelementptr inbounds %struct.dp_audio_infoframe, %struct.dp_audio_infoframe* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %66
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snd_printd(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %135

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %49
  %92 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = bitcast %union.audio_infoframe* %15 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hdmi_infoframe_uptodate(%struct.hda_codec* %92, i32 %93, i32 %95, i32 20)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @snd_printdd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @hdmi_setup_channel_mapping(%struct.hda_codec* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @hdmi_stop_infoframe_trans(%struct.hda_codec* %107, i32 %108)
  %110 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = bitcast %union.audio_infoframe* %15 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hdmi_fill_audio_infoframe(%struct.hda_codec* %110, i32 %111, i32 %113, i32 20)
  %115 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @hdmi_start_infoframe_trans(%struct.hda_codec* %115, i32 %116)
  br label %131

118:                                              ; preds = %91
  %119 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %120 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @hdmi_setup_channel_mapping(%struct.hda_codec* %125, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  br label %131

131:                                              ; preds = %130, %98
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %10, align 8
  %134 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %87, %38
  ret void
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @hdmi_channel_allocation(%struct.hdmi_eld*, i32) #1

declare dso_local i32 @memset(%union.audio_infoframe*, i32, i32) #1

declare dso_local i32 @hdmi_checksum_audio_infoframe(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @snd_printd(i8*, i32) #1

declare dso_local i32 @hdmi_infoframe_uptodate(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32) #1

declare dso_local i32 @hdmi_setup_channel_mapping(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @hdmi_stop_infoframe_trans(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_fill_audio_infoframe(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @hdmi_start_infoframe_trans(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
