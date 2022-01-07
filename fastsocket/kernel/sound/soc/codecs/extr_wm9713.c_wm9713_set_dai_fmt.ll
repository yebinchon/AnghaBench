; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AC97_CENTER_LFE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm9713_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %5, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = load i32, i32* @AC97_GPIO_CFG, align 4
  %13 = call i32 @ac97_read(%struct.snd_soc_codec* %11, i32 %12)
  %14 = and i32 %13, 65477
  store i32 %14, i32* %6, align 4
  store i32 32768, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %36 [
    i32 139, label %18
    i32 138, label %23
    i32 136, label %28
    i32 137, label %33
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, 16384
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 16
  store i32 %22, i32* %6, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 24576
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, 24
  store i32 %27, i32* %6, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, 8192
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 26
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 18
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %2, %33, %28, %23, %18
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %49 [
    i32 132, label %40
    i32 131, label %43
    i32 129, label %46
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 192
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 128
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 64
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %36, %46, %43, %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %66 [
    i32 133, label %53
    i32 128, label %56
    i32 130, label %57
    i32 135, label %60
    i32 134, label %63
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, 2
  store i32 %55, i32* %7, align 4
  br label %66

56:                                               ; preds = %49
  br label %66

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %66

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 3
  store i32 %62, i32* %7, align 4
  br label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, 67
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %49, %63, %60, %57, %56, %53
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %68 = load i32, i32* @AC97_GPIO_CFG, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ac97_write(%struct.snd_soc_codec* %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %72 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ac97_write(%struct.snd_soc_codec* %71, i32 %72, i32 %73)
  ret i32 0
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
