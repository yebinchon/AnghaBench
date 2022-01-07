; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@WM8350_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_MCLK_SEL = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8350_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@WM8350_MCLK_DIR_OUT = common dso_local global i32 0, align 4
@WM8350_CLOCK_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_MCLK_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8350_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.wm8350*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %9, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load %struct.wm8350*, %struct.wm8350** %16, align 8
  store %struct.wm8350* %17, %struct.wm8350** %10, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %41 [
    i32 132, label %19
    i32 128, label %24
    i32 129, label %24
    i32 130, label %24
    i32 131, label %24
  ]

19:                                               ; preds = %4
  %20 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %21 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %22 = load i32, i32* @WM8350_MCLK_SEL, align 4
  %23 = call i32 @wm8350_clear_bits(%struct.wm8350* %20, i32 %21, i32 %22)
  br label %41

24:                                               ; preds = %4, %4, %4, %4
  %25 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %26 = load i32, i32* @WM8350_CLOCK_CONTROL_1, align 4
  %27 = load i32, i32* @WM8350_MCLK_SEL, align 4
  %28 = call i32 @wm8350_set_bits(%struct.wm8350* %25, i32 %26, i32 %27)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %30 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %31 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %29, i32 %30)
  %32 = load i32, i32* @WM8350_FLL_CLK_SRC_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %36 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %35, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %4, %24, %19
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @WM8350_MCLK_DIR_OUT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %47 = load i32, i32* @WM8350_CLOCK_CONTROL_2, align 4
  %48 = load i32, i32* @WM8350_MCLK_DIR, align 4
  %49 = call i32 @wm8350_set_bits(%struct.wm8350* %46, i32 %47, i32 %48)
  br label %55

50:                                               ; preds = %41
  %51 = load %struct.wm8350*, %struct.wm8350** %10, align 8
  %52 = load i32, i32* @WM8350_CLOCK_CONTROL_2, align 4
  %53 = load i32, i32* @WM8350_MCLK_DIR, align 4
  %54 = call i32 @wm8350_clear_bits(%struct.wm8350* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  ret i32 0
}

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_codec_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8350_codec_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
