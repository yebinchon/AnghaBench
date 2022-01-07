; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wm8993_put_dc_servo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm_hubs.c_wm8993_put_dc_servo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { i32 }
%struct.snd_soc_codec = type { i32 }

@WM8993_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8993_HPOUT1L_ENA = common dso_local global i32 0, align 4
@WM8993_HPOUT1R_ENA = common dso_local global i32 0, align 4
@WM8993_DC_SERVO_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SINGLE_0 = common dso_local global i32 0, align 4
@WM8993_DCS_TRIG_SINGLE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8993_put_dc_servo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_put_dc_servo(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_codec* %8, %struct.snd_soc_codec** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %11 = call i32 @snd_soc_put_volsw_2r(%struct.snd_kcontrol* %9, %struct.snd_ctl_elem_value* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %13 = load i32, i32* @WM8993_POWER_MANAGEMENT_1, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  %15 = load i32, i32* @WM8993_HPOUT1L_ENA, align 4
  %16 = load i32, i32* @WM8993_HPOUT1R_ENA, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = load i32, i32* @WM8993_DC_SERVO_0, align 4
  %23 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_0, align 4
  %24 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_1, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_0, align 4
  %27 = load i32, i32* @WM8993_DCS_TRIG_SINGLE_1, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %21, i32 %22, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %20, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.snd_soc_codec* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_put_volsw_2r(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
