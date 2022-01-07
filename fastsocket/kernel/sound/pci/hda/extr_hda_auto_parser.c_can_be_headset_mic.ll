; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_can_be_headset_mic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_auto_parser.c_can_be_headset_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.auto_pin_cfg_item = type { i64, i32, i64, i64 }

@AUTO_PIN_MIC = common dso_local global i64 0, align 8
@INPUT_PIN_ATTR_DOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.auto_pin_cfg_item*, i32)* @can_be_headset_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_be_headset_mic(%struct.hda_codec* %0, %struct.auto_pin_cfg_item* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.auto_pin_cfg_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store %struct.auto_pin_cfg_item* %1, %struct.auto_pin_cfg_item** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %6, align 8
  %12 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AUTO_PIN_MIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %6, align 8
  %19 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %6, align 8
  %24 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17
  store i32 0, i32* %4, align 4
  br label %52

28:                                               ; preds = %22
  %29 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %30 = load %struct.auto_pin_cfg_item*, %struct.auto_pin_cfg_item** %6, align 8
  %31 = getelementptr inbounds %struct.auto_pin_cfg_item, %struct.auto_pin_cfg_item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @snd_hda_get_input_pin_attr(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @INPUT_PIN_ATTR_DOCK, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %28
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @get_defcfg_sequence(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %52

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %40
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %39, %27, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_input_pin_attr(i32) #1

declare dso_local i32 @get_defcfg_sequence(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
