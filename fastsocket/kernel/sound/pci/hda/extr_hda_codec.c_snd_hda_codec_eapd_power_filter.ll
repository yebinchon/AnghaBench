; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_eapd_power_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_codec.c_snd_hda_codec_eapd_power_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }

@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@AC_VERB_GET_EAPD_BTLENABLE = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_codec_eapd_power_filter(%struct.hda_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @AC_PWRST_D3, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @get_wcaps(%struct.hda_codec* %13, i32 %14)
  %16 = call i64 @get_wcaps_type(i32 %15)
  %17 = load i64, i64* @AC_WID_PIN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %20, i32 %21)
  %23 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AC_VERB_GET_EAPD_BTLENABLE, align 4
  %30 = call i32 @snd_hda_codec_read(%struct.hda_codec* %27, i32 %28, i32 0, i32 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %35, i32* %4, align 4
  br label %39

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %19, %12, %3
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_codec_read(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
