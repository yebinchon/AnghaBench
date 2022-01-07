; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_poodle.c_poodle_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_poodle.c_poodle_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_codec = type { i32 }

@poodle_jack_func = common dso_local global i64 0, align 8
@POODLE_HP = common dso_local global i64 0, align 8
@poodle_locomo_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@POODLE_LOCOMO_GPIO_MUTE_L = common dso_local global i32 0, align 4
@POODLE_LOCOMO_GPIO_MUTE_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@poodle_spk_func = common dso_local global i64 0, align 8
@POODLE_SPK_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @poodle_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poodle_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i64, i64* @poodle_jack_func, align 8
  %4 = load i64, i64* @POODLE_HP, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_L, align 4
  %8 = call i32 @locomo_gpio_write(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %7, i32 1)
  %9 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_R, align 4
  %10 = call i32 @locomo_gpio_write(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %9, i32 1)
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %12 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_L, align 4
  %15 = call i32 @locomo_gpio_write(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %14, i32 0)
  %16 = load i32, i32* @POODLE_LOCOMO_GPIO_MUTE_R, align 4
  %17 = call i32 @locomo_gpio_write(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @poodle_locomo_device, i32 0, i32 0), i32 %16, i32 0)
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %19 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %13, %6
  %21 = load i64, i64* @poodle_spk_func, align 8
  %22 = load i64, i64* @POODLE_SPK_ON, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %26 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %32 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %31)
  ret void
}

declare dso_local i32 @locomo_gpio_write(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
