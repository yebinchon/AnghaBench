; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8523.c_wm8523_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8523_AIF_CTRL1 = common dso_local global i32 0, align 4
@WM8523_BCLK_INV_MASK = common dso_local global i32 0, align 4
@WM8523_LRCLK_INV_MASK = common dso_local global i32 0, align 4
@WM8523_FMT_MASK = common dso_local global i32 0, align 4
@WM8523_AIF_MSTR_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@WM8523_AIF_MSTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8523_BCLK_INV = common dso_local global i32 0, align 4
@WM8523_LRCLK_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8523_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8523_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %13 = call i32 @snd_soc_read(%struct.snd_soc_codec* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @WM8523_BCLK_INV_MASK, align 4
  %15 = load i32, i32* @WM8523_LRCLK_INV_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WM8523_FMT_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WM8523_AIF_MSTR_MASK, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %32 [
    i32 138, label %27
    i32 137, label %31
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @WM8523_AIF_MSTR, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %2
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %82

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %52 [
    i32 134, label %39
    i32 128, label %42
    i32 131, label %43
    i32 136, label %46
    i32 135, label %49
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 2
  store i32 %41, i32* %7, align 4
  br label %55

42:                                               ; preds = %35
  br label %55

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %55

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 3
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 35
  store i32 %51, i32* %7, align 4
  br label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %82

55:                                               ; preds = %49, %46, %43, %42, %39
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %58 = and i32 %56, %57
  switch i32 %58, label %74 [
    i32 129, label %59
    i32 133, label %60
    i32 132, label %66
    i32 130, label %70
  ]

59:                                               ; preds = %55
  br label %77

60:                                               ; preds = %55
  %61 = load i32, i32* @WM8523_BCLK_INV, align 4
  %62 = load i32, i32* @WM8523_LRCLK_INV, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %77

66:                                               ; preds = %55
  %67 = load i32, i32* @WM8523_BCLK_INV, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %77

70:                                               ; preds = %55
  %71 = load i32, i32* @WM8523_LRCLK_INV, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %70, %66, %60, %59
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %79 = load i32, i32* @WM8523_AIF_CTRL1, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @snd_soc_write(%struct.snd_soc_codec* %78, i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %74, %52, %32
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
