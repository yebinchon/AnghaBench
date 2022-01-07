; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)* }

@AD1938_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD1938_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1938_DAC_CHAN_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_CHAN_MASK = common dso_local global i32 0, align 4
@AD1938_DAC_2_CHANNELS = common dso_local global i32 0, align 4
@AD1938_DAC_CHAN_SHFT = common dso_local global i32 0, align 4
@AD1938_ADC_2_CHANNELS = common dso_local global i32 0, align 4
@AD1938_ADC_CHAN_SHFT = common dso_local global i32 0, align 4
@AD1938_DAC_4_CHANNELS = common dso_local global i32 0, align 4
@AD1938_ADC_4_CHANNELS = common dso_local global i32 0, align 4
@AD1938_DAC_8_CHANNELS = common dso_local global i32 0, align 4
@AD1938_ADC_8_CHANNELS = common dso_local global i32 0, align 4
@AD1938_DAC_16_CHANNELS = common dso_local global i32 0, align 4
@AD1938_ADC_16_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @ad1938_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_codec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %16, align 8
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %12, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %19, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %22 = load i32, i32* @AD1938_DAC_CTRL1, align 4
  %23 = call i32 %20(%struct.snd_soc_codec* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %25, align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %28 = load i32, i32* @AD1938_ADC_CTRL2, align 4
  %29 = call i32 %26(%struct.snd_soc_codec* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @AD1938_DAC_CHAN_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @AD1938_ADC_CHAN_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %83 [
    i32 2, label %39
    i32 4, label %50
    i32 8, label %61
    i32 16, label %72
  ]

39:                                               ; preds = %5
  %40 = load i32, i32* @AD1938_DAC_2_CHANNELS, align 4
  %41 = load i32, i32* @AD1938_DAC_CHAN_SHFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @AD1938_ADC_2_CHANNELS, align 4
  %46 = load i32, i32* @AD1938_ADC_CHAN_SHFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  br label %86

50:                                               ; preds = %5
  %51 = load i32, i32* @AD1938_DAC_4_CHANNELS, align 4
  %52 = load i32, i32* @AD1938_DAC_CHAN_SHFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @AD1938_ADC_4_CHANNELS, align 4
  %57 = load i32, i32* @AD1938_ADC_CHAN_SHFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  br label %86

61:                                               ; preds = %5
  %62 = load i32, i32* @AD1938_DAC_8_CHANNELS, align 4
  %63 = load i32, i32* @AD1938_DAC_CHAN_SHFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* @AD1938_ADC_8_CHANNELS, align 4
  %68 = load i32, i32* @AD1938_ADC_CHAN_SHFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %86

72:                                               ; preds = %5
  %73 = load i32, i32* @AD1938_DAC_16_CHANNELS, align 4
  %74 = load i32, i32* @AD1938_DAC_CHAN_SHFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* @AD1938_ADC_16_CHANNELS, align 4
  %79 = load i32, i32* @AD1938_ADC_CHAN_SHFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %86

83:                                               ; preds = %5
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %101

86:                                               ; preds = %72, %61, %50, %39
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %88 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %87, i32 0, i32 1
  %89 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %88, align 8
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %91 = load i32, i32* @AD1938_DAC_CTRL1, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 %89(%struct.snd_soc_codec* %90, i32 %91, i32 %92)
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %95 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %94, i32 0, i32 1
  %96 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %95, align 8
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %98 = load i32, i32* @AD1938_ADC_CTRL2, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 %96(%struct.snd_soc_codec* %97, i32 %98, i32 %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %86, %83
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
