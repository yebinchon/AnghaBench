; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_simple_playback_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_simple_playback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32 }

@AC_VERB_SET_PIN_WIDGET_CONTROL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@AC_WCAP_OUT_AMP = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@AMP_OUT_UNMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @simple_playback_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_playback_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hdmi_spec*, align 8
  %4 = alloca %struct.hdmi_spec_per_pin*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  store %struct.hdmi_spec* %8, %struct.hdmi_spec** %3, align 8
  %9 = load %struct.hdmi_spec*, %struct.hdmi_spec** %3, align 8
  %10 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %9, i32 0)
  store %struct.hdmi_spec_per_pin* %10, %struct.hdmi_spec_per_pin** %4, align 8
  %11 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %4, align 8
  %12 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AC_VERB_SET_PIN_WIDGET_CONTROL, align 4
  %17 = load i32, i32* @PIN_OUT, align 4
  %18 = call i32 @snd_hda_codec_write(%struct.hda_codec* %14, i32 %15, i32 0, i32 %16, i32 %17)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_wcaps(%struct.hda_codec* %19, i32 %20)
  %22 = load i32, i32* @AC_WCAP_OUT_AMP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %29 = load i32, i32* @AMP_OUT_UNMUTE, align 4
  %30 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 %27, i32 0, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snd_hda_jack_detect_enable(%struct.hda_codec* %32, i32 %33, i32 %34)
  ret i32 0
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
