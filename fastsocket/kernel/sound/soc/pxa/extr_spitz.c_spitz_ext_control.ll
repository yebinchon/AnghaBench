; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_spitz.c_spitz_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_spitz.c_spitz_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@spitz_spk_func = common dso_local global i64 0, align 8
@SPITZ_SPK_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@spitz_jack_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Line Jack\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@SPITZ_GPIO_MUTE_L = common dso_local global i32 0, align 4
@SPITZ_GPIO_MUTE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @spitz_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitz_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i64, i64* @spitz_spk_func, align 8
  %4 = load i64, i64* @SPITZ_SPK_ON, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %8 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %11 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @spitz_jack_func, align 4
  switch i32 %13, label %79 [
    i32 131, label %14
    i32 128, label %27
    i32 129, label %40
    i32 132, label %53
    i32 130, label %66
  ]

14:                                               ; preds = %12
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %18 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %20 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %22 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i32, i32* @SPITZ_GPIO_MUTE_L, align 4
  %24 = call i32 @gpio_set_value(i32 %23, i32 1)
  %25 = load i32, i32* @SPITZ_GPIO_MUTE_R, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 1)
  br label %79

27:                                               ; preds = %12
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %31 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %33 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %35 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @SPITZ_GPIO_MUTE_L, align 4
  %37 = call i32 @gpio_set_value(i32 %36, i32 0)
  %38 = load i32, i32* @SPITZ_GPIO_MUTE_R, align 4
  %39 = call i32 @gpio_set_value(i32 %38, i32 0)
  br label %79

40:                                               ; preds = %12
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %42 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %44 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %46 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %48 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @SPITZ_GPIO_MUTE_L, align 4
  %50 = call i32 @gpio_set_value(i32 %49, i32 0)
  %51 = load i32, i32* @SPITZ_GPIO_MUTE_R, align 4
  %52 = call i32 @gpio_set_value(i32 %51, i32 0)
  br label %79

53:                                               ; preds = %12
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %55 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %57 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %59 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %61 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @SPITZ_GPIO_MUTE_L, align 4
  %63 = call i32 @gpio_set_value(i32 %62, i32 0)
  %64 = load i32, i32* @SPITZ_GPIO_MUTE_R, align 4
  %65 = call i32 @gpio_set_value(i32 %64, i32 1)
  br label %79

66:                                               ; preds = %12
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %68 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %70 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %72 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %74 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @SPITZ_GPIO_MUTE_L, align 4
  %76 = call i32 @gpio_set_value(i32 %75, i32 0)
  %77 = load i32, i32* @SPITZ_GPIO_MUTE_R, align 4
  %78 = call i32 @gpio_set_value(i32 %77, i32 0)
  br label %79

79:                                               ; preds = %12, %66, %53, %40, %27, %14
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %81 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %80)
  ret void
}

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
