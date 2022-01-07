; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8400.c_wm8400_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8400_priv* }
%struct.wm8400_priv = type { i32, i32 }
%struct.fll_factors = type { i32, i32, i32, i32, i32 }

@WM8400_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8400_FLL_ENA = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8400_FLL_OSC_ENA = common dso_local global i32 0, align 4
@WM8400_FLL_REF_FREQ = common dso_local global i32 0, align 4
@WM8400_FLL_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8400_FLL_FRAC = common dso_local global i32 0, align 4
@WM8400_FLL_REF_FREQ_SHIFT = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8400_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8400_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8400_priv*, align 8
  %12 = alloca %struct.fll_factors, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %16, align 8
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %10, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 0
  %20 = load %struct.wm8400_priv*, %struct.wm8400_priv** %19, align 8
  store %struct.wm8400_priv* %20, %struct.wm8400_priv** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.wm8400_priv*, %struct.wm8400_priv** %11, align 8
  %23 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.wm8400_priv*, %struct.wm8400_priv** %11, align 8
  %29 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %127

33:                                               ; preds = %26, %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.wm8400_priv*, %struct.wm8400_priv** %11, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @fll_factors(%struct.wm8400_priv* %37, %struct.fll_factors* %12, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %127

45:                                               ; preds = %36
  br label %48

46:                                               ; preds = %33
  %47 = call i32 @memset(%struct.fll_factors* %12, i32 0, i32 20)
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.wm8400_priv*, %struct.wm8400_priv** %11, align 8
  %51 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.wm8400_priv*, %struct.wm8400_priv** %11, align 8
  %54 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %56 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %57 = call i32 @wm8400_read(%struct.snd_soc_codec* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @WM8400_FLL_ENA, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %63 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @wm8400_write(%struct.snd_soc_codec* %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %67 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %68 = call i32 @wm8400_read(%struct.snd_soc_codec* %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* @WM8400_FLL_OSC_ENA, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %74 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @wm8400_write(%struct.snd_soc_codec* %73, i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %127

80:                                               ; preds = %48
  %81 = load i32, i32* @WM8400_FLL_REF_FREQ, align 4
  %82 = load i32, i32* @WM8400_FLL_FRATIO_MASK, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* @WM8400_FLL_FRAC, align 4
  %88 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %12, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %87, %89
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  %93 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %12, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WM8400_FLL_REF_FREQ_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %100 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @wm8400_write(%struct.snd_soc_codec* %99, i32 %100, i32 %101)
  %103 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %104 = load i32, i32* @WM8400_FLL_CONTROL_2, align 4
  %105 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %12, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @wm8400_write(%struct.snd_soc_codec* %103, i32 %104, i32 %106)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %109 = load i32, i32* @WM8400_FLL_CONTROL_3, align 4
  %110 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %12, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @wm8400_write(%struct.snd_soc_codec* %108, i32 %109, i32 %111)
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %114 = load i32, i32* @WM8400_FLL_CONTROL_4, align 4
  %115 = call i32 @wm8400_read(%struct.snd_soc_codec* %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @WM8400_FLL_OUTDIV_MASK, align 4
  %117 = load i32, i32* %14, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %12, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  %123 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %124 = load i32, i32* @WM8400_FLL_CONTROL_4, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @wm8400_write(%struct.snd_soc_codec* %123, i32 %124, i32 %125)
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %80, %79, %43, %32
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @fll_factors(%struct.wm8400_priv*, %struct.fll_factors*, i32, i32) #1

declare dso_local i32 @memset(%struct.fll_factors*, i32, i32) #1

declare dso_local i32 @wm8400_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8400_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
