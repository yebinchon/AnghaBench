; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8776.c_wm8776_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8776.c_wm8776_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8776_DACIFCTRL = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@WM8776_MSTRCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8776_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %20 [
    i32 128, label %16
    i32 129, label %18
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @WM8776_DACIFCTRL, align 4
  store i32 %17, i32* %7, align 4
  store i32 128, i32* %9, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @WM8776_ADCIFCTRL, align 4
  store i32 %19, i32* %7, align 4
  store i32 256, i32* %9, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %18, %16
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %29 [
    i32 140, label %27
    i32 139, label %28
  ]

27:                                               ; preds = %23
  br label %32

28:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %49 [
    i32 136, label %36
    i32 130, label %39
    i32 133, label %40
    i32 138, label %43
    i32 137, label %46
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 2
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %32
  br label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 3
  store i32 %45, i32* %8, align 4
  br label %52

46:                                               ; preds = %32
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, 7
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %46, %43, %40, %39, %36
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %55 = and i32 %53, %54
  switch i32 %55, label %66 [
    i32 131, label %56
    i32 135, label %57
    i32 134, label %60
    i32 132, label %63
  ]

56:                                               ; preds = %52
  br label %69

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 12
  store i32 %59, i32* %8, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, 8
  store i32 %62, i32* %8, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, 4
  store i32 %65, i32* %8, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %63, %60, %57, %56
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %70, i32 %71, i32 15, i32 %72)
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %75 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %74, i32 %75, i32 384, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %66, %49, %29, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
