; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8510_CLOCK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8510_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8510_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8510_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %13 = load i32, i32* @WM8510_CLOCK, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  %15 = and i32 %14, 510
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %23 [
    i32 137, label %19
    i32 136, label %22
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %2
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %69

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  switch i32 %29, label %40 [
    i32 134, label %30
    i32 128, label %33
    i32 131, label %34
    i32 135, label %37
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 16
  store i32 %32, i32* %7, align 4
  br label %43

33:                                               ; preds = %26
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, 8
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 24
  store i32 %39, i32* %7, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %37, %34, %33, %30
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %57 [
    i32 129, label %47
    i32 133, label %48
    i32 132, label %51
    i32 130, label %54
  ]

47:                                               ; preds = %43
  br label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 384
  store i32 %50, i32* %7, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 256
  store i32 %53, i32* %7, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 128
  store i32 %56, i32* %7, align 4
  br label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %54, %51, %48, %47
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %62 = load i32, i32* @WM8510_IFACE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @snd_soc_write(%struct.snd_soc_codec* %61, i32 %62, i32 %63)
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %66 = load i32, i32* @WM8510_CLOCK, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snd_soc_write(%struct.snd_soc_codec* %65, i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %57, %40, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
