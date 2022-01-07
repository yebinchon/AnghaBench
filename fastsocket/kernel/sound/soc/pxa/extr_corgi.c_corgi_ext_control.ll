; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_corgi.c_corgi_ext_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_corgi.c_corgi_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@corgi_jack_func = common dso_local global i32 0, align 4
@CORGI_GPIO_MUTE_L = common dso_local global i32 0, align 4
@CORGI_GPIO_MUTE_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Mic Jack\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Line Jack\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Headphone Jack\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Headset Jack\00", align 1
@corgi_spk_func = common dso_local global i64 0, align 8
@CORGI_SPK_ON = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"Ext Spk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_codec*)* @corgi_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_ext_control(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %2, align 8
  %3 = load i32, i32* @corgi_jack_func, align 4
  switch i32 %3, label %56 [
    i32 130, label %4
    i32 128, label %17
    i32 129, label %30
    i32 131, label %43
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %6 = call i32 @gpio_set_value(i32 %5, i32 1)
  %7 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 1)
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %10 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %12 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %14 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %16 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %56

17:                                               ; preds = %1
  %18 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  %20 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 0)
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %23 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %25 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %27 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %29 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %56

30:                                               ; preds = %1
  %31 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %32 = call i32 @gpio_set_value(i32 %31, i32 0)
  %33 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %34 = call i32 @gpio_set_value(i32 %33, i32 0)
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %36 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %38 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %40 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %42 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %56

43:                                               ; preds = %1
  %44 = load i32, i32* @CORGI_GPIO_MUTE_L, align 4
  %45 = call i32 @gpio_set_value(i32 %44, i32 0)
  %46 = load i32, i32* @CORGI_GPIO_MUTE_R, align 4
  %47 = call i32 @gpio_set_value(i32 %46, i32 1)
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %49 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %51 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %53 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %55 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %1, %43, %30, %17, %4
  %57 = load i64, i64* @corgi_spk_func, align 8
  %58 = load i64, i64* @CORGI_SPK_ON, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %62 = call i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %66

63:                                               ; preds = %56
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %65 = call i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %2, align 8
  %68 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %67)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @snd_soc_dapm_disable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_enable_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
