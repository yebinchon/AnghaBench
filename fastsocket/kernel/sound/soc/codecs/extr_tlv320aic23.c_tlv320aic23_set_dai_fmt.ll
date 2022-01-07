; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@TLV320AIC23_DIGT_FMT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TLV320AIC23_MS_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@TLV320AIC23_FOR_I2S = common dso_local global i32 0, align 4
@TLV320AIC23_LRP_ON = common dso_local global i32 0, align 4
@TLV320AIC23_FOR_DSP = common dso_local global i32 0, align 4
@TLV320AIC23_FOR_LJUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @tlv320aic23_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %6, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %12 = load i32, i32* @TLV320AIC23_DIGT_FMT, align 4
  %13 = call i32 @tlv320aic23_read_reg_cache(%struct.snd_soc_codec* %11, i32 %12)
  %14 = and i32 %13, -4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %23 [
    i32 134, label %18
    i32 133, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @TLV320AIC23_MS_MASTER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %2
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %47 [
    i32 130, label %30
    i32 132, label %34
    i32 131, label %38
    i32 128, label %42
    i32 129, label %43
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @TLV320AIC23_FOR_I2S, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %50

34:                                               ; preds = %26
  %35 = load i32, i32* @TLV320AIC23_LRP_ON, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %26, %34
  %39 = load i32, i32* @TLV320AIC23_FOR_DSP, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %50

42:                                               ; preds = %26
  br label %50

43:                                               ; preds = %26
  %44 = load i32, i32* @TLV320AIC23_FOR_LJUST, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %43, %42, %38, %30
  %51 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %52 = load i32, i32* @TLV320AIC23_DIGT_FMT, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @tlv320aic23_write(%struct.snd_soc_codec* %51, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %47, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @tlv320aic23_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @tlv320aic23_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
