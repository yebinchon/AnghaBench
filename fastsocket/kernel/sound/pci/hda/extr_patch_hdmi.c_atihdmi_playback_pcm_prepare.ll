; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_atihdmi_playback_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_atihdmi_playback_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_spec_per_cvt = type { i32 }

@AC_VERB_SET_CVT_CHAN_COUNT = common dso_local global i32 0, align 4
@AC_VERB_SET_HDMI_CHAN_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*)* @atihdmi_playback_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atihdmi_playback_pcm_prepare(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, i32 %2, i32 %3, %struct.snd_pcm_substream* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca %struct.hdmi_spec*, align 8
  %13 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %7, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.snd_pcm_substream* %4, %struct.snd_pcm_substream** %11, align 8
  %17 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %18 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %17, i32 0, i32 0
  %19 = load %struct.hdmi_spec*, %struct.hdmi_spec** %18, align 8
  store %struct.hdmi_spec* %19, %struct.hdmi_spec** %12, align 8
  %20 = load %struct.hdmi_spec*, %struct.hdmi_spec** %12, align 8
  %21 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %20, i32 0)
  store %struct.hdmi_spec_per_cvt* %21, %struct.hdmi_spec_per_cvt** %13, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %32 = call i32 @simple_playback_pcm_prepare(%struct.hda_pcm_stream* %27, %struct.hda_codec* %28, i32 %29, i32 %30, %struct.snd_pcm_substream* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %6, align 4
  br label %65

37:                                               ; preds = %5
  %38 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %39 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %13, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AC_VERB_SET_CVT_CHAN_COUNT, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @snd_hda_codec_write(%struct.hda_codec* %38, i32 %41, i32 0, i32 %42, i32 %44)
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %61, %37
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %52 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %13, align 8
  %53 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AC_VERB_SET_HDMI_CHAN_SLOT, align 4
  %56 = load i32, i32* %15, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @snd_hda_codec_write(%struct.hda_codec* %51, i32 %54, i32 0, i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %46

64:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @simple_playback_pcm_prepare(%struct.hda_pcm_stream*, %struct.hda_codec*, i32, i32, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
