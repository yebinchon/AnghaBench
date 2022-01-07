; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_auto_init_amp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_auto_init_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@alc_gpio1_init_verbs = common dso_local global i32 0, align 4
@alc_gpio2_init_verbs = common dso_local global i32 0, align 4
@alc_gpio3_init_verbs = common dso_local global i32 0, align 4
@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_GET_PROC_COEF = common dso_local global i32 0, align 4
@AC_VERB_SET_PROC_COEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @alc_auto_init_amp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_auto_init_amp(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call i32 @alc_auto_setup_eapd(%struct.hda_codec* %6, i32 1)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %47 [
    i32 130, label %9
    i32 129, label %13
    i32 128, label %17
    i32 131, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = load i32, i32* @alc_gpio1_init_verbs, align 4
  %12 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %10, i32 %11)
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = load i32, i32* @alc_gpio2_init_verbs, align 4
  %16 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %14, i32 %15)
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = load i32, i32* @alc_gpio3_init_verbs, align 4
  %20 = call i32 @snd_hda_sequence_write(%struct.hda_codec* %18, i32 %19)
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %46 [
    i32 283902560, label %25
    i32 283902562, label %40
    i32 283904128, label %40
    i32 283904130, label %40
    i32 283904131, label %40
    i32 283904133, label %40
    i32 283904135, label %40
    i32 283904136, label %43
  ]

25:                                               ; preds = %21
  %26 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %27 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %28 = call i32 @snd_hda_codec_write(%struct.hda_codec* %26, i32 26, i32 0, i32 %27, i32 7)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %30 = load i32, i32* @AC_VERB_GET_PROC_COEF, align 4
  %31 = call i32 @snd_hda_codec_read(%struct.hda_codec* %29, i32 26, i32 0, i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %34 = call i32 @snd_hda_codec_write(%struct.hda_codec* %32, i32 26, i32 0, i32 %33, i32 7)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* @AC_VERB_SET_PROC_COEF, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, 8208
  %39 = call i32 @snd_hda_codec_write(%struct.hda_codec* %35, i32 26, i32 0, i32 %36, i32 %38)
  br label %46

40:                                               ; preds = %21, %21, %21, %21, %21, %21
  %41 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %42 = call i32 @alc889_coef_init(%struct.hda_codec* %41)
  br label %46

43:                                               ; preds = %21
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = call i32 @alc888_coef_init(%struct.hda_codec* %44)
  br label %46

46:                                               ; preds = %21, %43, %40, %25
  br label %47

47:                                               ; preds = %2, %46, %17, %13, %9
  ret void
}

declare dso_local i32 @alc_auto_setup_eapd(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_sequence_write(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @alc889_coef_init(%struct.hda_codec*) #1

declare dso_local i32 @alc888_coef_init(%struct.hda_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
