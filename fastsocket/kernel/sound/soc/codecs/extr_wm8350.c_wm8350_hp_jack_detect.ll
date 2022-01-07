; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_hp_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.wm8350*, %struct.wm8350_data* }
%struct.wm8350 = type { i32 }
%struct.wm8350_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.snd_soc_jack* }
%struct.TYPE_3__ = type { i32, %struct.snd_soc_jack* }
%struct.snd_soc_jack = type { i32 }

@WM8350_IRQ_CODEC_JCK_DET_L = common dso_local global i32 0, align 4
@WM8350_JDL_ENA = common dso_local global i32 0, align 4
@WM8350_IRQ_CODEC_JCK_DET_R = common dso_local global i32 0, align 4
@WM8350_JDR_ENA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_TOCLK_ENA = common dso_local global i32 0, align 4
@WM8350_JACK_DETECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_hp_jack_detect(%struct.snd_soc_codec* %0, i32 %1, %struct.snd_soc_jack* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_jack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8350_data*, align 8
  %11 = alloca %struct.wm8350*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.snd_soc_jack* %2, %struct.snd_soc_jack** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %14, i32 0, i32 1
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %15, align 8
  store %struct.wm8350_data* %16, %struct.wm8350_data** %10, align 8
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %17, i32 0, i32 0
  %19 = load %struct.wm8350*, %struct.wm8350** %18, align 8
  store %struct.wm8350* %19, %struct.wm8350** %11, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %43 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %4
  %22 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %23 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %24 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.snd_soc_jack* %22, %struct.snd_soc_jack** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %28 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_L, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @WM8350_JDL_ENA, align 4
  store i32 %31, i32* %13, align 4
  br label %46

32:                                               ; preds = %4
  %33 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %8, align 8
  %34 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %35 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.snd_soc_jack* %33, %struct.snd_soc_jack** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %39 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @WM8350_IRQ_CODEC_JCK_DET_R, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @WM8350_JDR_ENA, align 4
  store i32 %42, i32* %13, align 4
  br label %46

43:                                               ; preds = %4
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %62

46:                                               ; preds = %32, %21
  %47 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %48 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %49 = load i32, i32* @WM8350_TOCLK_ENA, align 4
  %50 = call i32 @wm8350_set_bits(%struct.wm8350* %47, i32 %48, i32 %49)
  %51 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %52 = load i32, i32* @WM8350_JACK_DETECT, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @wm8350_set_bits(%struct.wm8350* %51, i32 %52, i32 %53)
  %55 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.wm8350_data*, %struct.wm8350_data** %10, align 8
  %58 = call i32 @wm8350_hp_jack_handler(%struct.wm8350* %55, i32 %56, %struct.wm8350_data* %57)
  %59 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @wm8350_unmask_irq(%struct.wm8350* %59, i32 %60)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %46, %43
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_hp_jack_handler(%struct.wm8350*, i32, %struct.wm8350_data*) #1

declare dso_local i32 @wm8350_unmask_irq(%struct.wm8350*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
