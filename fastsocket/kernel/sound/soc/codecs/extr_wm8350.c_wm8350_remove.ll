; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8350_data*, %struct.wm8350* }
%struct.wm8350_data = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.wm8350 = type { i32 }

@WM8350_JACK_DETECT = common dso_local global i32 0, align 4
@WM8350_JDL_ENA = common dso_local global i32 0, align 4
@WM8350_JDR_ENA = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_TOCLK_ENA = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_JCK_DET_L = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_JCK_DET_R = common dso_local global i32 0, align 4
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_5 = common dso_local global i32 0, align 4
@WM8350_CODEC_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm8350_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_soc_device*, align 8
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca %struct.wm8350_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.snd_soc_device* %9, %struct.snd_soc_device** %3, align 8
  %10 = load %struct.snd_soc_device*, %struct.snd_soc_device** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %4, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 2
  %17 = load %struct.wm8350*, %struct.wm8350** %16, align 8
  store %struct.wm8350* %17, %struct.wm8350** %5, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 1
  %20 = load %struct.wm8350_data*, %struct.wm8350_data** %19, align 8
  store %struct.wm8350_data* %20, %struct.wm8350_data** %6, align 8
  %21 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %22 = load i32, i32* @WM8350_JACK_DETECT, align 4
  %23 = load i32, i32* @WM8350_JDL_ENA, align 4
  %24 = load i32, i32* @WM8350_JDR_ENA, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @wm8350_clear_bits(%struct.wm8350* %21, i32 %22, i32 %25)
  %27 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %28 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %29 = load i32, i32* @WM8350_TOCLK_ENA, align 4
  %30 = call i32 @wm8350_clear_bits(%struct.wm8350* %27, i32 %28, i32 %29)
  %31 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %32 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_L, align 4
  %33 = call i32 @wm8350_mask_irq(%struct.wm8350* %31, i32 %32)
  %34 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %35 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_R, align 4
  %36 = call i32 @wm8350_mask_irq(%struct.wm8350* %34, i32 %35)
  %37 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %38 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_L, align 4
  %39 = call i32 @wm8350_free_irq(%struct.wm8350* %37, i32 %38)
  %40 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %41 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_R, align 4
  %42 = call i32 @wm8350_free_irq(%struct.wm8350* %40, i32 %41)
  %43 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %44 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.wm8350_data*, %struct.wm8350_data** %6, align 8
  %47 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %49, i32 0, i32 0
  %51 = call i32 @cancel_delayed_work(i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %1
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %56 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %55, i32 0, i32 0
  %57 = call i32 @schedule_delayed_work(i32* %56, i32 0)
  %58 = call i32 (...) @flush_scheduled_work()
  br label %59

59:                                               ; preds = %54, %1
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %61 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %62 = call i32 @wm8350_set_bias_level(%struct.snd_soc_codec* %60, i32 %61)
  %63 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %64 = load i32, i32* @WM8350_POWER_MGMT_5, align 4
  %65 = load i32, i32* @WM8350_CODEC_ENA, align 4
  %66 = call i32 @wm8350_clear_bits(%struct.wm8350* %63, i32 %64, i32 %65)
  ret i32 0
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_mask_irq(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_free_irq(%struct.wm8350*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @wm8350_set_bias_level(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
