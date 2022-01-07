; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_cur_hp_mic_jack_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_get_cur_hp_mic_jack_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@PIN_OUT = common dso_local global i32 0, align 4
@PIN_HP = common dso_local global i32 0, align 4
@PIN_IN = common dso_local global i32 0, align 4
@AC_PINCTL_VREFEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32)* @get_cur_hp_mic_jack_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_hp_mic_jack_mode(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @get_out_jack_num_items(%struct.hda_codec* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @get_in_jack_num_items(%struct.hda_codec* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @snd_hda_codec_get_pin_target(%struct.hda_codec* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PIN_OUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PIN_HP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %26, %23
  br label %57

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PIN_IN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @get_vref_caps(%struct.hda_codec* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @AC_PINCTL_VREFEN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @cvt_from_vref_idx(i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %41, %37
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @get_out_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_in_jack_num_items(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_get_pin_target(%struct.hda_codec*, i32) #1

declare dso_local i32 @get_vref_caps(%struct.hda_codec*, i32) #1

declare dso_local i64 @cvt_from_vref_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
