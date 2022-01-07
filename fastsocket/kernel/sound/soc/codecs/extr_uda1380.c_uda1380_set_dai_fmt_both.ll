; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_set_dai_fmt_both.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_uda1380.c_uda1380_set_dai_fmt_both.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@UDA1380_IFACE = common dso_local global i32 0, align 4
@R01_SFORI_MASK = common dso_local global i32 0, align 4
@R01_SIM = common dso_local global i32 0, align 4
@R01_SFORO_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@R01_SFORI_I2S = common dso_local global i32 0, align 4
@R01_SFORO_I2S = common dso_local global i32 0, align 4
@R01_SFORI_LSB16 = common dso_local global i32 0, align 4
@R01_SFORO_LSB16 = common dso_local global i32 0, align 4
@R01_SFORI_MSB = common dso_local global i32 0, align 4
@R01_SFORO_MSB = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @uda1380_set_dai_fmt_both to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uda1380_set_dai_fmt_both(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @UDA1380_IFACE, align 4
  %13 = call i32 @uda1380_read_reg_cache(%struct.snd_soc_codec* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @R01_SFORI_MASK, align 4
  %15 = load i32, i32* @R01_SIM, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @R01_SFORO_MASK, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %43 [
    i32 130, label %25
    i32 129, label %31
    i32 128, label %37
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @R01_SFORI_I2S, align 4
  %27 = load i32, i32* @R01_SFORO_I2S, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* @R01_SFORI_LSB16, align 4
  %33 = load i32, i32* @R01_SFORO_LSB16, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @R01_SFORI_MSB, align 4
  %39 = load i32, i32* @R01_SFORO_MSB, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %2, %31, %25
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %54 = load i32, i32* @UDA1380_IFACE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @uda1380_write(%struct.snd_soc_codec* %53, i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @uda1380_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @uda1380_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
