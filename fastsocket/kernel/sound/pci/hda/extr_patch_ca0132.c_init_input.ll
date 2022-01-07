; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_init_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@PIN_VREF80 = common dso_local global i32 0, align 4
@AC_WCAP_IN_AMP = common dso_local global i32 0, align 4
@AC_VERB_SET_AMP_GAIN_MUTE = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@HDA_AMP_VOLMASK = common dso_local global i32 0, align 4
@HDA_AMP_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i64, i64)* @init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_input(%struct.hda_codec* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @PIN_VREF80, align 4
  %13 = call i32 @snd_hda_set_pin_ctl(%struct.hda_codec* %10, i64 %11, i32 %12)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @get_wcaps(%struct.hda_codec* %14, i64 %15)
  %17 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %24 = call i32 @AMP_IN_UNMUTE(i32 0)
  %25 = call i32 @snd_hda_codec_write(%struct.hda_codec* %21, i64 %22, i32 0, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %9
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @get_wcaps(%struct.hda_codec* %31, i64 %32)
  %34 = load i32, i32* @AC_WCAP_IN_AMP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @AC_VERB_SET_AMP_GAIN_MUTE, align 4
  %41 = call i32 @AMP_IN_UNMUTE(i32 0)
  %42 = call i32 @snd_hda_codec_write(%struct.hda_codec* %38, i64 %39, i32 0, i32 %40, i32 %41)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @HDA_INPUT, align 4
  %46 = load i32, i32* @HDA_AMP_VOLMASK, align 4
  %47 = call i32 @snd_hda_codec_amp_stereo(%struct.hda_codec* %43, i64 %44, i32 %45, i32 0, i32 %46, i32 90)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @HDA_INPUT, align 4
  %51 = load i32, i32* @HDA_AMP_MUTE, align 4
  %52 = call i32 @snd_hda_codec_amp_stereo(%struct.hda_codec* %48, i64 %49, i32 %50, i32 0, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %37, %30, %27
  ret void
}

declare dso_local i32 @snd_hda_set_pin_ctl(%struct.hda_codec*, i64, i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i64, i32, i32, i32) #1

declare dso_local i32 @AMP_IN_UNMUTE(i32) #1

declare dso_local i32 @snd_hda_codec_amp_stereo(%struct.hda_codec*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
