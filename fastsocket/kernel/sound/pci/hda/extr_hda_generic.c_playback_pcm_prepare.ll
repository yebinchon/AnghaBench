; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@HDA_GEN_PCM_ACT_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca %struct.hda_gen_spec*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %10, align 8
  %13 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %14 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %13, i32 0, i32 0
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  store %struct.hda_gen_spec* %15, %struct.hda_gen_spec** %11, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %22 = call i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec* %16, i32* %18, i32 %19, i32 %20, %struct.snd_pcm_substream* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %27 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %29 = load i32, i32* @HDA_GEN_PCM_ACT_PREPARE, align 4
  %30 = call i32 @call_pcm_playback_hook(%struct.hda_pcm_stream* %26, %struct.hda_codec* %27, %struct.snd_pcm_substream* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %5
  %32 = load i32, i32* %12, align 4
  ret i32 %32
}

declare dso_local i32 @snd_hda_multi_out_analog_prepare(%struct.hda_codec*, i32*, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @call_pcm_playback_hook(%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
