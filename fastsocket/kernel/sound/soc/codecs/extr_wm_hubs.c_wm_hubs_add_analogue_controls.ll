; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wm_hubs_add_analogue_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8993_LEFT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8993_IN1_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_LINE_INPUT_1_2_VOLUME = common dso_local global i32 0, align 4
@WM8993_LEFT_LINE_INPUT_3_4_VOLUME = common dso_local global i32 0, align 4
@WM8993_IN2_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_LINE_INPUT_3_4_VOLUME = common dso_local global i32 0, align 4
@WM8993_SPEAKER_VOLUME_RIGHT = common dso_local global i32 0, align 4
@WM8993_SPKOUT_VU = common dso_local global i32 0, align 4
@WM8993_LEFT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ZC = common dso_local global i32 0, align 4
@WM8993_RIGHT_OUTPUT_VOLUME = common dso_local global i32 0, align 4
@WM8993_HPOUT1_VU = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ZC = common dso_local global i32 0, align 4
@WM8993_LEFT_OPGA_VOLUME = common dso_local global i32 0, align 4
@WM8993_MIXOUTL_ZC = common dso_local global i32 0, align 4
@WM8993_RIGHT_OPGA_VOLUME = common dso_local global i32 0, align 4
@WM8993_MIXOUTR_ZC = common dso_local global i32 0, align 4
@WM8993_MIXOUT_VU = common dso_local global i32 0, align 4
@analogue_snd_controls = common dso_local global i32 0, align 4
@analogue_dapm_widgets = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm_hubs_add_analogue_controls(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %4 = load i32, i32* @WM8993_LEFT_LINE_INPUT_1_2_VOLUME, align 4
  %5 = load i32, i32* @WM8993_IN1_VU, align 4
  %6 = load i32, i32* @WM8993_IN1_VU, align 4
  %7 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %9 = load i32, i32* @WM8993_RIGHT_LINE_INPUT_1_2_VOLUME, align 4
  %10 = load i32, i32* @WM8993_IN1_VU, align 4
  %11 = load i32, i32* @WM8993_IN1_VU, align 4
  %12 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = load i32, i32* @WM8993_LEFT_LINE_INPUT_3_4_VOLUME, align 4
  %15 = load i32, i32* @WM8993_IN2_VU, align 4
  %16 = load i32, i32* @WM8993_IN2_VU, align 4
  %17 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %19 = load i32, i32* @WM8993_RIGHT_LINE_INPUT_3_4_VOLUME, align 4
  %20 = load i32, i32* @WM8993_IN2_VU, align 4
  %21 = load i32, i32* @WM8993_IN2_VU, align 4
  %22 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %24 = load i32, i32* @WM8993_SPEAKER_VOLUME_RIGHT, align 4
  %25 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %26 = load i32, i32* @WM8993_SPKOUT_VU, align 4
  %27 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = load i32, i32* @WM8993_LEFT_OUTPUT_VOLUME, align 4
  %30 = load i32, i32* @WM8993_HPOUT1L_ZC, align 4
  %31 = load i32, i32* @WM8993_HPOUT1L_ZC, align 4
  %32 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %34 = load i32, i32* @WM8993_RIGHT_OUTPUT_VOLUME, align 4
  %35 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %36 = load i32, i32* @WM8993_HPOUT1R_ZC, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @WM8993_HPOUT1_VU, align 4
  %39 = load i32, i32* @WM8993_HPOUT1R_ZC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %33, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %43 = load i32, i32* @WM8993_LEFT_OPGA_VOLUME, align 4
  %44 = load i32, i32* @WM8993_MIXOUTL_ZC, align 4
  %45 = load i32, i32* @WM8993_MIXOUTL_ZC, align 4
  %46 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %48 = load i32, i32* @WM8993_RIGHT_OPGA_VOLUME, align 4
  %49 = load i32, i32* @WM8993_MIXOUTR_ZC, align 4
  %50 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WM8993_MIXOUTR_ZC, align 4
  %53 = load i32, i32* @WM8993_MIXOUT_VU, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %47, i32 %48, i32 %51, i32 %54)
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %57 = load i32, i32* @analogue_snd_controls, align 4
  %58 = load i32, i32* @analogue_snd_controls, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @snd_soc_add_controls(%struct.snd_soc_codec* %56, i32 %57, i32 %59)
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %62 = load i32, i32* @analogue_dapm_widgets, align 4
  %63 = load i32, i32* @analogue_dapm_widgets, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %61, i32 %62, i32 %64)
  ret i32 0
}

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
