; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_hp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@WM8900_REG_HPCTL1 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_CLAMP_IP = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_CLAMP_OP = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_SHORT = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_SHORT2 = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_IPSTAGE_ENA = common dso_local global i32 0, align 4
@WM8900_REG_HPCTL1_HP_OPSTAGE_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @wm8900_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  %13 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %101 [
    i32 128, label %16
    i32 130, label %24
    i32 129, label %68
    i32 131, label %97
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %18 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %21 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @snd_soc_write(%struct.snd_soc_codec* %20, i32 %21, i32 %22)
  br label %103

24:                                               ; preds = %3
  %25 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %30 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT2, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WM8900_REG_HPCTL1_HP_IPSTAGE_ENA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %37 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_soc_write(%struct.snd_soc_codec* %36, i32 %37, i32 %38)
  %40 = call i32 @msleep(i32 400)
  %41 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @WM8900_REG_HPCTL1_HP_OPSTAGE_ENA, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %49 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snd_soc_write(%struct.snd_soc_codec* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT2, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %57 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @snd_soc_write(%struct.snd_soc_codec* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %65 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @snd_soc_write(%struct.snd_soc_codec* %64, i32 %65, i32 %66)
  br label %103

68:                                               ; preds = %3
  %69 = load i32, i32* @WM8900_REG_HPCTL1_HP_SHORT, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %73 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @snd_soc_write(%struct.snd_soc_codec* %72, i32 %73, i32 %74)
  %76 = load i32, i32* @WM8900_REG_HPCTL1_HP_OPSTAGE_ENA, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %81 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @snd_soc_write(%struct.snd_soc_codec* %80, i32 %81, i32 %82)
  %84 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_IP, align 4
  %85 = load i32, i32* @WM8900_REG_HPCTL1_HP_CLAMP_OP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @WM8900_REG_HPCTL1_HP_IPSTAGE_ENA, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %94 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @snd_soc_write(%struct.snd_soc_codec* %93, i32 %94, i32 %95)
  br label %103

97:                                               ; preds = %3
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %99 = load i32, i32* @WM8900_REG_HPCTL1, align 4
  %100 = call i32 @snd_soc_write(%struct.snd_soc_codec* %98, i32 %99, i32 0)
  br label %103

101:                                              ; preds = %3
  %102 = call i32 (...) @BUG()
  br label %103

103:                                              ; preds = %101, %97, %68, %24, %16
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
