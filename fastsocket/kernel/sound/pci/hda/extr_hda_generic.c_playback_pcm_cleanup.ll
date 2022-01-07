; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_playback_pcm_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_playback_pcm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@HDA_GEN_PCM_ACT_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @playback_pcm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_cleanup(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %7, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 0
  %15 = call i32 @snd_hda_multi_out_analog_cleanup(%struct.hda_codec* %12, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %22 = load i32, i32* @HDA_GEN_PCM_ACT_CLEANUP, align 4
  %23 = call i32 @call_pcm_playback_hook(%struct.hda_pcm_stream* %19, %struct.hda_codec* %20, %struct.snd_pcm_substream* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @snd_hda_multi_out_analog_cleanup(%struct.hda_codec*, i32*) #1

declare dso_local i32 @call_pcm_playback_hook(%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
