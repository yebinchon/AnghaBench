; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_inmixer_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_inmixer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8400_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8400_INTDRIVBITS = common dso_local global i32 0, align 4
@WM8400_INMIXL_PWR = common dso_local global i32 0, align 4
@WM8400_AINLMUX_PWR = common dso_local global i32 0, align 4
@WM8400_AINL_ENA = common dso_local global i32 0, align 4
@WM8400_INMIXR_PWR = common dso_local global i32 0, align 4
@WM8400_AINRMUX_PWR = common dso_local global i32 0, align 4
@WM8400_AINR_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @inmixer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inmixer_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %13 = call i32 @wm8400_read(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WM8400_INTDRIVBITS, align 4
  %18 = call i32 @wm8400_read(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @WM8400_INMIXL_PWR, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @WM8400_AINLMUX_PWR, align 4
  %23 = shl i32 1, %22
  %24 = or i32 %21, %23
  %25 = and i32 %19, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @WM8400_AINL_ENA, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @WM8400_AINL_ENA, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @WM8400_INMIXR_PWR, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @WM8400_AINRMUX_PWR, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @WM8400_AINR_ENA, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %54

49:                                               ; preds = %36
  %50 = load i32, i32* @WM8400_AINL_ENA, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @wm8400_write(i32 %57, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local i32 @wm8400_read(i32, i32) #1

declare dso_local i32 @wm8400_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
