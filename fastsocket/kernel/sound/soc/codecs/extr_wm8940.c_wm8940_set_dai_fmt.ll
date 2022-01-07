; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8940_IFACE = common dso_local global i32 0, align 4
@WM8940_CLOCK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8940_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %13 = load i32, i32* @WM8940_IFACE, align 4
  %14 = call i32 @snd_soc_read(%struct.snd_soc_codec* %12, i32 %13)
  %15 = and i32 %14, 65127
  store i32 %15, i32* %7, align 4
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %17 = load i32, i32* @WM8940_CLOCK, align 4
  %18 = call i32 @snd_soc_read(%struct.snd_soc_codec* %16, i32 %17)
  %19 = and i32 %18, 510
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %27 [
    i32 138, label %23
    i32 137, label %26
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %30

26:                                               ; preds = %2
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %26, %23
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %32 = load i32, i32* @WM8940_CLOCK, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @snd_soc_write(%struct.snd_soc_codec* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %51 [
    i32 134, label %38
    i32 131, label %41
    i32 128, label %44
    i32 136, label %45
    i32 135, label %48
  ]

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 16
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 8
  store i32 %43, i32* %7, align 4
  br label %51

44:                                               ; preds = %30
  br label %51

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 24
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %30
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 152
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %30, %48, %45, %44, %41, %38
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %65 [
    i32 129, label %55
    i32 130, label %56
    i32 132, label %59
    i32 133, label %62
  ]

55:                                               ; preds = %51
  br label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 128
  store i32 %58, i32* %7, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, 256
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, 384
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %51, %62, %59, %56, %55
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %67 = load i32, i32* @WM8940_IFACE, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @snd_soc_write(%struct.snd_soc_codec* %66, i32 %67, i32 %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %27
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
