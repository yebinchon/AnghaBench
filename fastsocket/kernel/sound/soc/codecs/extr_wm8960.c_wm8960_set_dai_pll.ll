; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8960.c_wm8960_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pll_div = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@wm8960_set_dai_pll.pll_div = internal global %struct._pll_div zeroinitializer, align 4
@WM8960_CLOCK1 = common dso_local global i32 0, align 4
@WM8960_POWER2 = common dso_local global i32 0, align 4
@WM8960_PLL1 = common dso_local global i32 0, align 4
@WM8960_PLL2 = common dso_local global i32 0, align 4
@WM8960_PLL3 = common dso_local global i32 0, align 4
@WM8960_PLL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8960_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @pll_factors(i32 %22, i32 %23, %struct._pll_div* @wm8960_set_dai_pll.pll_div)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %105

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %18, %4
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %32 = load i32, i32* @WM8960_CLOCK1, align 4
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %34 = load i32, i32* @WM8960_CLOCK1, align 4
  %35 = call i32 @snd_soc_read(%struct.snd_soc_codec* %33, i32 %34)
  %36 = and i32 %35, -2
  %37 = call i32 @snd_soc_write(%struct.snd_soc_codec* %31, i32 %32, i32 %36)
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %39 = load i32, i32* @WM8960_POWER2, align 4
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %41 = load i32, i32* @WM8960_POWER2, align 4
  %42 = call i32 @snd_soc_read(%struct.snd_soc_codec* %40, i32 %41)
  %43 = and i32 %42, -2
  %44 = call i32 @snd_soc_write(%struct.snd_soc_codec* %38, i32 %39, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %30
  store i32 0, i32* %5, align 4
  br label %105

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %53 = load i32, i32* @WM8960_PLL1, align 4
  %54 = call i32 @snd_soc_read(%struct.snd_soc_codec* %52, i32 %53)
  %55 = and i32 %54, -64
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 0), align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 1), align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 2), align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %51
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, 32
  store i32 %67, i32* %11, align 4
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %69 = load i32, i32* @WM8960_PLL2, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 2), align 4
  %71 = ashr i32 %70, 18
  %72 = and i32 %71, 63
  %73 = call i32 @snd_soc_write(%struct.snd_soc_codec* %68, i32 %69, i32 %72)
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %75 = load i32, i32* @WM8960_PLL3, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 2), align 4
  %77 = ashr i32 %76, 9
  %78 = and i32 %77, 511
  %79 = call i32 @snd_soc_write(%struct.snd_soc_codec* %74, i32 %75, i32 %78)
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %81 = load i32, i32* @WM8960_PLL4, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_dai_pll.pll_div, i32 0, i32 2), align 4
  %83 = and i32 %82, 511
  %84 = call i32 @snd_soc_write(%struct.snd_soc_codec* %80, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %65, %51
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %87 = load i32, i32* @WM8960_PLL1, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @snd_soc_write(%struct.snd_soc_codec* %86, i32 %87, i32 %88)
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %91 = load i32, i32* @WM8960_POWER2, align 4
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %93 = load i32, i32* @WM8960_POWER2, align 4
  %94 = call i32 @snd_soc_read(%struct.snd_soc_codec* %92, i32 %93)
  %95 = or i32 %94, 1
  %96 = call i32 @snd_soc_write(%struct.snd_soc_codec* %90, i32 %91, i32 %95)
  %97 = call i32 @msleep(i32 250)
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %99 = load i32, i32* @WM8960_CLOCK1, align 4
  %100 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %101 = load i32, i32* @WM8960_CLOCK1, align 4
  %102 = call i32 @snd_soc_read(%struct.snd_soc_codec* %100, i32 %101)
  %103 = or i32 %102, 1
  %104 = call i32 @snd_soc_write(%struct.snd_soc_codec* %98, i32 %99, i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %85, %50, %27
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @pll_factors(i32, i32, %struct._pll_div*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
