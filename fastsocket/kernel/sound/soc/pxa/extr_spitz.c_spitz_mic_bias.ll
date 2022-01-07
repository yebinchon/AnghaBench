; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_spitz.c_spitz_mic_bias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_spitz.c_spitz_mic_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }

@SPITZ_GPIO_MIC_BIAS = common dso_local global i32 0, align 4
@AKITA_GPIO_MIC_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @spitz_mic_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spitz_mic_bias(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i64 (...) @machine_is_borzoi()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = call i64 (...) @machine_is_spitz()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %3
  %13 = load i32, i32* @SPITZ_GPIO_MIC_BIAS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @SND_SOC_DAPM_EVENT_ON(i32 %14)
  %16 = call i32 @gpio_set_value(i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  %18 = call i64 (...) @machine_is_akita()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @AKITA_GPIO_MIC_BIAS, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SND_SOC_DAPM_EVENT_ON(i32 %22)
  %24 = call i32 @gpio_set_value(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  ret i32 0
}

declare dso_local i64 @machine_is_borzoi(...) #1

declare dso_local i64 @machine_is_spitz(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i64 @machine_is_akita(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
