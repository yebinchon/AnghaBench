; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_hp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8993_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8993_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@WM8993_CP_ENA = common dso_local global i32 0, align 4
@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_DLY = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_DLY = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_0 = common dso_local global i32 0, align 4
@WM8993_DCS_ENA_CHAN_0 = common dso_local global i32 0, align 4
@WM8993_DCS_ENA_CHAN_1 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_STARTUP_1 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_STARTUP_0 = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_OUTP = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_RMV_SHORT = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_OUTP = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_RMV_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %7, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %13 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %98 [
    i32 129, label %16
    i32 128, label %66
  ]

16:                                               ; preds = %3
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %18 = load i32, i32* @WM8993_CHARGE_PUMP_1, align 4
  %19 = load i32, i32* @WM8993_CP_ENA, align 4
  %20 = load i32, i32* @WM8993_CP_ENA, align 4
  %21 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %17, i32 %18, i32 %19, i32 %20)
  %22 = call i32 @msleep(i32 5)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %24 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %25 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %26 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %29 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %23, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @WM8993_HPOUT1L_DLY, align 4
  %33 = load i32, i32* @WM8993_HPOUT1R_DLY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %38 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @snd_soc_write(%struct.snd_soc_codec* %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %42 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %43 = load i32, i32* @WM8993_DCS_ENA_CHAN_0, align 4
  %44 = load i32, i32* @WM8993_DCS_ENA_CHAN_1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @WM8993_DCS_TRIG_STARTUP_1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WM8993_DCS_TRIG_STARTUP_0, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %41, i32 %42, i32 65535, i32 %49)
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %52 = call i32 @wait_for_dc_servo(%struct.snd_soc_codec* %51)
  %53 = load i32, i32* @WM8993_HPOUT1R_OUTP, align 4
  %54 = load i32, i32* @WM8993_HPOUT1R_RMV_SHORT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @WM8993_HPOUT1L_OUTP, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WM8993_HPOUT1L_RMV_SHORT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %63 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @snd_soc_write(%struct.snd_soc_codec* %62, i32 %63, i32 %64)
  br label %98

66:                                               ; preds = %3
  %67 = load i32, i32* @WM8993_HPOUT1L_RMV_SHORT, align 4
  %68 = load i32, i32* @WM8993_HPOUT1L_DLY, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @WM8993_HPOUT1L_OUTP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @WM8993_HPOUT1R_RMV_SHORT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @WM8993_HPOUT1R_DLY, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @WM8993_HPOUT1R_OUTP, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %82 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %83 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %81, i32 %82, i32 65535, i32 0)
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %85 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @snd_soc_write(%struct.snd_soc_codec* %84, i32 %85, i32 %86)
  %88 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %89 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %90 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %91 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %88, i32 %89, i32 %92, i32 0)
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %95 = load i32, i32* @WM8993_CHARGE_PUMP_1, align 4
  %96 = load i32, i32* @WM8993_CP_ENA, align 4
  %97 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %94, i32 %95, i32 %96, i32 0)
  br label %98

98:                                               ; preds = %3, %66, %16
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wait_for_dc_servo(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
