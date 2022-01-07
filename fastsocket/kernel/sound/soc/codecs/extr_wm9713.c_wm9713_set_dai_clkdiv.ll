; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AC97_HANDSET_RATE = common dso_local global i32 0, align 4
@AC97_CENTER_LFE_MASTER = common dso_local global i32 0, align 4
@AC97_LINE1_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm9713_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %93 [
    i32 129, label %14
    i32 134, label %25
    i32 133, label %36
    i32 132, label %47
    i32 130, label %58
    i32 128, label %69
    i32 131, label %81
  ]

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %16 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %17 = call i32 @ac97_read(%struct.snd_soc_codec* %15, i32 %16)
  %18 = and i32 %17, 61695
  store i32 %18, i32* %9, align 4
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %20 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ac97_write(%struct.snd_soc_codec* %19, i32 %20, i32 %23)
  br label %96

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %27 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %28 = call i32 @ac97_read(%struct.snd_soc_codec* %26, i32 %27)
  %29 = and i32 %28, 65533
  store i32 %29, i32* %9, align 4
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %31 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ac97_write(%struct.snd_soc_codec* %30, i32 %31, i32 %34)
  br label %96

36:                                               ; preds = %3
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %38 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %39 = call i32 @ac97_read(%struct.snd_soc_codec* %37, i32 %38)
  %40 = and i32 %39, 65531
  store i32 %40, i32* %9, align 4
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %42 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ac97_write(%struct.snd_soc_codec* %41, i32 %42, i32 %45)
  br label %96

47:                                               ; preds = %3
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %49 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %50 = call i32 @ac97_read(%struct.snd_soc_codec* %48, i32 %49)
  %51 = and i32 %50, 36863
  store i32 %51, i32* %9, align 4
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %53 = load i32, i32* @AC97_HANDSET_RATE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @ac97_write(%struct.snd_soc_codec* %52, i32 %53, i32 %56)
  br label %96

58:                                               ; preds = %3
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %60 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %61 = call i32 @ac97_read(%struct.snd_soc_codec* %59, i32 %60)
  %62 = and i32 %61, 61951
  store i32 %62, i32* %9, align 4
  %63 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %64 = load i32, i32* @AC97_CENTER_LFE_MASTER, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ac97_write(%struct.snd_soc_codec* %63, i32 %64, i32 %67)
  br label %96

69:                                               ; preds = %3
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %71 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %72 = call i32 @ac97_read(%struct.snd_soc_codec* %70, i32 %71)
  %73 = and i32 %72, 65408
  store i32 %73, i32* %9, align 4
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %75 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, 96
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @ac97_write(%struct.snd_soc_codec* %74, i32 %75, i32 %79)
  br label %96

81:                                               ; preds = %3
  %82 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %83 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %84 = call i32 @ac97_read(%struct.snd_soc_codec* %82, i32 %83)
  %85 = and i32 %84, 65408
  store i32 %85, i32* %9, align 4
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %87 = load i32, i32* @AC97_LINE1_LEVEL, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, 112
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @ac97_write(%struct.snd_soc_codec* %86, i32 %87, i32 %91)
  br label %96

93:                                               ; preds = %3
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %81, %69, %58, %47, %36, %25, %14
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ac97_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ac97_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
