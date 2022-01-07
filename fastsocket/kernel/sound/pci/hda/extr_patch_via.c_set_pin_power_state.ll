; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_pin_power_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_pin_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { i32 }

@AC_DEFCFG_MISC = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_SHIFT = common dso_local global i32 0, align 4
@AC_DEFCFG_MISC_NO_PRESENCE = common dso_local global i32 0, align 4
@AC_JACK_PORT_NONE = common dso_local global i64 0, align 8
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32, i32*)* @set_pin_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pin_power_state(%struct.hda_codec* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.via_spec*, align 8
  %11 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_hda_codec_get_pincfg(%struct.hda_codec* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AC_DEFCFG_MISC, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @AC_DEFCFG_MISC_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = load i32, i32* @AC_DEFCFG_MISC_NO_PRESENCE, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %23 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %22, i32 0, i32 0
  %24 = load %struct.via_spec*, %struct.via_spec** %23, align 8
  store %struct.via_spec* %24, %struct.via_spec** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.via_spec*, %struct.via_spec** %10, align 8
  %26 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %38 = call i64 @smart51_enabled(%struct.hda_codec* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @is_smart51_pins(%struct.hda_codec* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @get_defcfg_connect(i32 %52)
  %54 = load i64, i64* @AC_JACK_PORT_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %40
  %57 = load i32, i32* @AC_PWRST_D0, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %59, i32* %7, align 4
  br label %62

60:                                               ; preds = %51, %48
  %61 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @update_power_state(%struct.hda_codec* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @snd_hda_codec_get_pincfg(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

declare dso_local i64 @smart51_enabled(%struct.hda_codec*) #1

declare dso_local i64 @is_smart51_pins(%struct.hda_codec*, i32) #1

declare dso_local i64 @get_defcfg_connect(i32) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
