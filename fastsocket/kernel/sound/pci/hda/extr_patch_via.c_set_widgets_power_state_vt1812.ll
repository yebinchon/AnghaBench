; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1812.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_set_widgets_power_state_vt1812.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AC_PWRST_D3 = common dso_local global i32 0, align 4
@AC_PWRST_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @set_widgets_power_state_vt1812 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_widgets_power_state_vt1812(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.via_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.via_spec*, %struct.via_spec** %7, align 8
  store %struct.via_spec* %8, %struct.via_spec** %3, align 8
  %9 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = call i32 @set_pin_power_state(%struct.hda_codec* %10, i32 41, i32* %4)
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = call i32 @set_pin_power_state(%struct.hda_codec* %12, i32 42, i32* %4)
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @set_pin_power_state(%struct.hda_codec* %14, i32 43, i32* %4)
  %16 = load i32, i32* @AC_PWRST_D0, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @update_power_state(%struct.hda_codec* %17, i32 30, i32 %18)
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @update_power_state(%struct.hda_codec* %20, i32 31, i32 %21)
  %23 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @update_power_state(%struct.hda_codec* %23, i32 16, i32 %24)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @update_power_state(%struct.hda_codec* %26, i32 17, i32 %27)
  %29 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %30 = load i32, i32* @AC_PWRST_D0, align 4
  %31 = call i32 @update_power_state(%struct.hda_codec* %29, i32 8, i32 %30)
  %32 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %34 = call i32 @set_pin_power_state(%struct.hda_codec* %33, i32 40, i32* %4)
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @update_power_state(%struct.hda_codec* %35, i32 24, i32 %36)
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @update_power_state(%struct.hda_codec* %38, i32 56, i32 %39)
  %41 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %41, i32* %4, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @set_pin_power_state(%struct.hda_codec* %42, i32 37, i32* %4)
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @update_power_state(%struct.hda_codec* %44, i32 21, i32 %45)
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @update_power_state(%struct.hda_codec* %47, i32 53, i32 %48)
  %50 = load %struct.via_spec*, %struct.via_spec** %3, align 8
  %51 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %1
  %56 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %57 = load i32, i32* @AC_PWRST_D0, align 4
  %58 = call i32 @update_power_state(%struct.hda_codec* %56, i32 9, i32 %57)
  br label %59

59:                                               ; preds = %55, %1
  %60 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %61 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %60, i32 37)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %62, i32* %4, align 4
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = call i32 @set_pin_power_state(%struct.hda_codec* %63, i32 36, i32* %4)
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = load i32, i32* @AC_PWRST_D3, align 4
  %70 = call i32 @update_power_state(%struct.hda_codec* %68, i32 20, i32 %69)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = load i32, i32* @AC_PWRST_D3, align 4
  %73 = call i32 @update_power_state(%struct.hda_codec* %71, i32 52, i32 %72)
  br label %81

74:                                               ; preds = %59
  %75 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %76 = load i32, i32* @AC_PWRST_D0, align 4
  %77 = call i32 @update_power_state(%struct.hda_codec* %75, i32 20, i32 %76)
  %78 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %79 = load i32, i32* @AC_PWRST_D0, align 4
  %80 = call i32 @update_power_state(%struct.hda_codec* %78, i32 52, i32 %79)
  br label %81

81:                                               ; preds = %74, %67
  %82 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %83 = call i32 @snd_hda_jack_detect(%struct.hda_codec* %82, i32 40)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %84, i32* %4, align 4
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = call i32 @set_pin_power_state(%struct.hda_codec* %85, i32 49, i32* %4)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %91 = load i32, i32* @AC_PWRST_D3, align 4
  %92 = call i32 @update_power_state(%struct.hda_codec* %90, i32 28, i32 %91)
  %93 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %94 = load i32, i32* @AC_PWRST_D3, align 4
  %95 = call i32 @update_power_state(%struct.hda_codec* %93, i32 60, i32 %94)
  %96 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %97 = load i32, i32* @AC_PWRST_D3, align 4
  %98 = call i32 @update_power_state(%struct.hda_codec* %96, i32 62, i32 %97)
  br label %109

99:                                               ; preds = %81
  %100 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %101 = load i32, i32* @AC_PWRST_D0, align 4
  %102 = call i32 @update_power_state(%struct.hda_codec* %100, i32 28, i32 %101)
  %103 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %104 = load i32, i32* @AC_PWRST_D0, align 4
  %105 = call i32 @update_power_state(%struct.hda_codec* %103, i32 60, i32 %104)
  %106 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %107 = load i32, i32* @AC_PWRST_D0, align 4
  %108 = call i32 @update_power_state(%struct.hda_codec* %106, i32 62, i32 %107)
  br label %109

109:                                              ; preds = %99, %89
  %110 = load i32, i32* @AC_PWRST_D3, align 4
  store i32 %110, i32* %4, align 4
  %111 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %112 = call i32 @set_pin_power_state(%struct.hda_codec* %111, i32 51, i32* %4)
  %113 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @update_power_state(%struct.hda_codec* %113, i32 29, i32 %114)
  %116 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @update_power_state(%struct.hda_codec* %116, i32 61, i32 %117)
  ret void
}

declare dso_local i32 @set_pin_power_state(%struct.hda_codec*, i32, i32*) #1

declare dso_local i32 @update_power_state(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
