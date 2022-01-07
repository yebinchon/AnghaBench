; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8753_HIFI = common dso_local global i32 0, align 4
@WM8753_IOCTL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @wm8753_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %13 = load i32, i32* @WM8753_HIFI, align 4
  %14 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %12, i32 %13)
  %15 = and i32 %14, 287
  store i32 %15, i32* %8, align 4
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %17 = load i32, i32* @WM8753_IOCTL, align 4
  %18 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %16, i32 %17)
  %19 = and i32 %18, 174
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %30 [
    i32 137, label %23
    i32 139, label %24
    i32 138, label %27
  ]

23:                                               ; preds = %2
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %2, %24
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %27, %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %69 [
    i32 136, label %37
    i32 135, label %37
    i32 134, label %49
    i32 128, label %49
    i32 131, label %49
  ]

37:                                               ; preds = %33, %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %45 [
    i32 129, label %41
    i32 132, label %42
  ]

41:                                               ; preds = %37
  br label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, 128
  store i32 %44, i32* %8, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %42, %41
  br label %72

49:                                               ; preds = %33, %33, %33
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, -17
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %65 [
    i32 129, label %55
    i32 133, label %56
    i32 132, label %59
    i32 130, label %62
  ]

55:                                               ; preds = %49
  br label %68

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, 144
  store i32 %58, i32* %8, align 4
  br label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, 128
  store i32 %61, i32* %8, align 4
  br label %68

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, 16
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %62, %59, %56, %55
  br label %72

69:                                               ; preds = %33
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %68, %48
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %74 = load i32, i32* @WM8753_HIFI, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @wm8753_write(%struct.snd_soc_codec* %73, i32 %74, i32 %75)
  %77 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %78 = load i32, i32* @WM8753_IOCTL, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @wm8753_write(%struct.snd_soc_codec* %77, i32 %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %69, %65, %45, %30
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
