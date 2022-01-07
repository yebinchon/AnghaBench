; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8993_priv* }
%struct.wm8993_priv = type { i32, i32 }

@WM8993_AIFADC_TDM = common dso_local global i32 0, align 4
@WM8993_AIFDAC_TDM = common dso_local global i32 0, align 4
@WM8993_AIFADC_TDM_CHAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8993_AIFDAC_TDM_CHAN = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8993_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8993_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_codec*, align 8
  %13 = alloca %struct.wm8993_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %17, align 8
  store %struct.snd_soc_codec* %18, %struct.snd_soc_codec** %12, align 8
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 0
  %21 = load %struct.wm8993_priv*, %struct.wm8993_priv** %20, align 8
  store %struct.wm8993_priv* %21, %struct.wm8993_priv** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %26 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %54

27:                                               ; preds = %5
  %28 = load i32, i32* @WM8993_AIFADC_TDM, align 4
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @WM8993_AIFDAC_TDM, align 4
  %32 = load i32, i32* %15, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %40 [
    i32 3, label %35
    i32 12, label %36
  ]

35:                                               ; preds = %27
  br label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @WM8993_AIFADC_TDM_CHAN, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %76

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %50 [
    i32 3, label %45
    i32 12, label %46
  ]

45:                                               ; preds = %43
  br label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @WM8993_AIFDAC_TDM_CHAN, align 4
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %15, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %76

53:                                               ; preds = %46, %45
  br label %54

54:                                               ; preds = %53, %24
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %57 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sdiv i32 %58, 2
  %60 = load %struct.wm8993_priv*, %struct.wm8993_priv** %13, align 8
  %61 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %63 = load i32, i32* @WM8993_AUDIO_INTERFACE_1, align 4
  %64 = load i32, i32* @WM8993_AIFADC_TDM, align 4
  %65 = load i32, i32* @WM8993_AIFADC_TDM_CHAN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %62, i32 %63, i32 %66, i32 %67)
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %70 = load i32, i32* @WM8993_AUDIO_INTERFACE_2, align 4
  %71 = load i32, i32* @WM8993_AIFDAC_TDM, align 4
  %72 = load i32, i32* @WM8993_AIFDAC_TDM_CHAN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %69, i32 %70, i32 %73, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %54, %50, %40
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
