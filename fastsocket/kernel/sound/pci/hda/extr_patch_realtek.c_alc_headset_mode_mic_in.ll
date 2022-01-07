; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_headset_mode_mic_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_realtek.c_alc_headset_mode_mic_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@PIN_VREF50 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Headset jack set to mic-in mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32)* @alc_headset_mode_mic_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_headset_mode_mic_in(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %61 [
    i32 283902595, label %11
    i32 283902610, label %33
    i32 283903592, label %41
  ]

11:                                               ; preds = %3
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = call i32 @alc_write_coef_idx(%struct.hda_codec* %12, i32 69, i32 50217)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %14, i32 %15, i32 0)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %18 = call i32 @alc_read_coef_idx(%struct.hda_codec* %17, i32 53)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 16384
  %22 = call i32 @alc_write_coef_idx(%struct.hda_codec* %19, i32 53, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %24 = call i32 @alc_write_coef_idx(%struct.hda_codec* %23, i32 6, i32 8448)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %26 = call i32 @alc_write_coef_idx(%struct.hda_codec* %25, i32 26, i32 33)
  %27 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %28 = call i32 @alc_write_coef_idx(%struct.hda_codec* %27, i32 38, i32 140)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PIN_VREF50, align 4
  %32 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %29, i32 %30, i32 %31)
  br label %61

33:                                               ; preds = %3
  %34 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %34, i32 %35, i32 0)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = call i32 @alc_write_coef_idx(%struct.hda_codec* %37, i32 25, i32 41480)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %40 = call i32 @alc_write_coef_idx(%struct.hda_codec* %39, i32 46, i32 44272)
  br label %61

41:                                               ; preds = %3
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = call i32 @alc_write_coef_idx(%struct.hda_codec* %42, i32 17, i32 1)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %44, i32 %45, i32 0)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %48 = call i32 @alc_write_coef_idx(%struct.hda_codec* %47, i32 183, i32 32811)
  %49 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %50 = call i32 @alc_write_coef_idx(%struct.hda_codec* %49, i32 181, i32 4160)
  %51 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %52 = call i32 @alc_read_coef_idx(%struct.hda_codec* %51, i32 195)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 4096
  %56 = call i32 @alc_write_coef_idx(%struct.hda_codec* %53, i32 195, i32 %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PIN_VREF50, align 4
  %60 = call i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %3, %41, %33, %11
  %62 = call i32 @snd_printdd(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_set_pin_ctl_cache(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_printdd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
