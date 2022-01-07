; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cmedia.c_cmi9880_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.cmi_spec* }
%struct.cmi_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @cmi9880_playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmi9880_playback_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca %struct.cmi_spec*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.cmi_spec*, %struct.cmi_spec** %13, align 8
  store %struct.cmi_spec* %14, %struct.cmi_spec** %11, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %16 = load %struct.cmi_spec*, %struct.cmi_spec** %11, align 8
  %17 = getelementptr inbounds %struct.cmi_spec, %struct.cmi_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %21 = call i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec* %15, i32* %17, i32 %18, i32 %19, %struct.snd_pcm_substream* %20)
  ret i32 %21
}

declare dso_local i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec*, i32*, i32, i32, %struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
