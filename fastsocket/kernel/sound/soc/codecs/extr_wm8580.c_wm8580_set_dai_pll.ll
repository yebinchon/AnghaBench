; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8580_priv* }
%struct.wm8580_priv = type { %struct.pll_state, %struct.pll_state }
%struct.pll_state = type { i32, i32 }
%struct._pll_div = type { i32, i32, i32, i32, i32 }

@WM8580_PWRDN2_PLLAPD = common dso_local global i32 0, align 4
@WM8580_PWRDN2_PLLBPD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM8580_PWRDN2 = common dso_local global i64 0, align 8
@WM8580_PLLA1 = common dso_local global i64 0, align 8
@WM8580_PLLA2 = common dso_local global i64 0, align 8
@WM8580_PLLA3 = common dso_local global i64 0, align 8
@WM8580_PLLA4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8580_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_codec*, align 8
  %12 = alloca %struct.wm8580_priv*, align 8
  %13 = alloca %struct.pll_state*, align 8
  %14 = alloca %struct._pll_div, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %19, align 8
  store %struct.snd_soc_codec* %20, %struct.snd_soc_codec** %11, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 0
  %23 = load %struct.wm8580_priv*, %struct.wm8580_priv** %22, align 8
  store %struct.wm8580_priv* %23, %struct.wm8580_priv** %12, align 8
  %24 = call i32 @memset(%struct._pll_div* %14, i32 0, i32 20)
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %34 [
    i32 129, label %26
    i32 128, label %30
  ]

26:                                               ; preds = %4
  %27 = load %struct.wm8580_priv*, %struct.wm8580_priv** %12, align 8
  %28 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %27, i32 0, i32 1
  store %struct.pll_state* %28, %struct.pll_state** %13, align 8
  store i32 0, i32* %10, align 4
  %29 = load i32, i32* @WM8580_PWRDN2_PLLAPD, align 4
  store i32 %29, i32* %16, align 4
  br label %37

30:                                               ; preds = %4
  %31 = load %struct.wm8580_priv*, %struct.wm8580_priv** %12, align 8
  %32 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %31, i32 0, i32 0
  store %struct.pll_state* %32, %struct.pll_state** %13, align 8
  store i32 4, i32* %10, align 4
  %33 = load i32, i32* @WM8580_PWRDN2_PLLBPD, align 4
  store i32 %33, i32* %16, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %145

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pll_factors(%struct._pll_div* %14, i32 %44, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %5, align 4
  br label %145

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %40, %37
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.pll_state*, %struct.pll_state** %13, align 8
  %55 = getelementptr inbounds %struct.pll_state, %struct.pll_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.pll_state*, %struct.pll_state** %13, align 8
  %58 = getelementptr inbounds %struct.pll_state, %struct.pll_state* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %60 = load i64, i64* @WM8580_PWRDN2, align 8
  %61 = call i32 @snd_soc_read(%struct.snd_soc_codec* %59, i64 %60)
  store i32 %61, i32* %15, align 4
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %63 = load i64, i64* @WM8580_PWRDN2, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @snd_soc_write(%struct.snd_soc_codec* %62, i64 %63, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70, %52
  store i32 0, i32* %5, align 4
  br label %145

74:                                               ; preds = %70
  %75 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %76 = load i64, i64* @WM8580_PLLA1, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 511
  %83 = call i32 @snd_soc_write(%struct.snd_soc_codec* %75, i64 %79, i32 %82)
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %85 = load i64, i64* @WM8580_PLLA2, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 9
  %92 = and i32 %91, 511
  %93 = call i32 @snd_soc_write(%struct.snd_soc_codec* %84, i64 %88, i32 %92)
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %95 = load i64, i64* @WM8580_PLLA3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 18
  %102 = and i32 %101, 15
  %103 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 4
  %106 = or i32 %102, %105
  %107 = call i32 @snd_soc_write(%struct.snd_soc_codec* %94, i64 %98, i32 %106)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %109 = load i64, i64* @WM8580_PLLA4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = call i32 @snd_soc_read(%struct.snd_soc_codec* %108, i64 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = and i32 %114, -28
  store i32 %115, i32* %15, align 4
  %116 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 1
  %121 = or i32 %117, %120
  %122 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %14, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 3
  %125 = or i32 %121, %124
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %15, align 4
  %128 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %129 = load i64, i64* @WM8580_PLLA4, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @snd_soc_write(%struct.snd_soc_codec* %128, i64 %132, i32 %133)
  %135 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %136 = load i64, i64* @WM8580_PWRDN2, align 8
  %137 = call i32 @snd_soc_read(%struct.snd_soc_codec* %135, i64 %136)
  store i32 %137, i32* %15, align 4
  %138 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %139 = load i64, i64* @WM8580_PWRDN2, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  %144 = call i32 @snd_soc_write(%struct.snd_soc_codec* %138, i64 %139, i32 %143)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %74, %73, %49, %34
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @memset(%struct._pll_div*, i32, i32) #1

declare dso_local i32 @pll_factors(%struct._pll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i64) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
