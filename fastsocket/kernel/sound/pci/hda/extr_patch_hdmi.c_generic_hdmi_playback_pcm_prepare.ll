; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_generic_hdmi_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @generic_hdmi_playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_hdmi_playback_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hdmi_spec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %16 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %17 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %20 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %19, i32 0, i32 0
  %21 = load %struct.hdmi_spec*, %struct.hdmi_spec** %20, align 8
  store %struct.hdmi_spec* %21, %struct.hdmi_spec** %12, align 8
  %22 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %24 = call i32 @hinfo_to_pin_index(%struct.hdmi_spec* %22, %struct.hda_pcm_stream* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call %struct.TYPE_4__* @get_pin(%struct.hdmi_spec* %25, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @check_non_pcm_per_cvt(%struct.hda_codec* %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hdmi_set_channel_count(%struct.hda_codec* %33, i32 %34, i32 %39)
  %41 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %45 = call i32 @hdmi_setup_audio_infoframe(%struct.hda_codec* %41, i32 %42, i32 %43, %struct.snd_pcm_substream* %44)
  %46 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @hdmi_setup_stream(%struct.hda_codec* %46, i32 %47, i32 %48, i32 %49, i32 %50)
  ret i32 %51
}

declare dso_local i32 @hinfo_to_pin_index(%struct.hdmi_spec*, %struct.hda_pcm_stream*) #1

declare dso_local %struct.TYPE_4__* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @check_non_pcm_per_cvt(%struct.hda_codec*, i32) #1

declare dso_local i32 @hdmi_set_channel_count(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @hdmi_setup_audio_infoframe(%struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @hdmi_setup_stream(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
