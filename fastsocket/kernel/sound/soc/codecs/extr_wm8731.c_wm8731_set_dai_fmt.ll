; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8731.c_wm8731_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8731.c_wm8731_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8731_IFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8731_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %18 [
    i32 138, label %14
    i32 137, label %17
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, 64
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %2
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %38 [
    i32 134, label %25
    i32 128, label %28
    i32 131, label %29
    i32 136, label %32
    i32 135, label %35
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %41

28:                                               ; preds = %21
  br label %41

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, 3
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 19
  store i32 %37, i32* %7, align 4
  br label %41

38:                                               ; preds = %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %35, %32, %29, %28, %25
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %55 [
    i32 129, label %45
    i32 133, label %46
    i32 132, label %49
    i32 130, label %52
  ]

45:                                               ; preds = %41
  br label %58

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, 144
  store i32 %48, i32* %7, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 128
  store i32 %51, i32* %7, align 4
  br label %58

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, 16
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %52, %49, %46, %45
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %60 = load i32, i32* @WM8731_IFACE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @snd_soc_write(%struct.snd_soc_codec* %59, i32 %60, i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %55, %38, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
