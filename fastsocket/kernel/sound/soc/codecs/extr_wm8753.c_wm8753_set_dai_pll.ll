; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct._pll_div = type { i32, i32, i32 }

@WM8753_PLL1 = common dso_local global i32 0, align 4
@WM8753_PLL2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM8753_CLOCK = common dso_local global i64 0, align 8
@WM8753_PLL1CTL1 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL2 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL3 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8753_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_soc_codec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._pll_div, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %17, align 8
  store %struct.snd_soc_codec* %18, %struct.snd_soc_codec** %13, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @WM8753_PLL1, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @WM8753_PLL2, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %118

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WM8753_PLL1, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  store i32 16, i32* %11, align 4
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %35 = load i64, i64* @WM8753_CLOCK, align 8
  %36 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %34, i64 %35)
  %37 = and i32 %36, 65519
  store i32 %37, i32* %10, align 4
  br label %43

38:                                               ; preds = %29
  store i32 4, i32* %12, align 4
  store i32 8, i32* %11, align 4
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %40 = load i64, i64* @WM8753_CLOCK, align 8
  %41 = call i32 @wm8753_read_reg_cache(%struct.snd_soc_codec* %39, i64 %40)
  %42 = and i32 %41, 65527
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %51 = load i64, i64* @WM8753_PLL1CTL1, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @wm8753_write(%struct.snd_soc_codec* %50, i64 %54, i32 38)
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %57 = load i64, i64* @WM8753_CLOCK, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @wm8753_write(%struct.snd_soc_codec* %56, i64 %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %118

60:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = mul i32 %61, 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pll_factors(%struct._pll_div* %15, i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %15, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 5
  %68 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %15, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3932160
  %71 = ashr i32 %70, 18
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %14, align 4
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %74 = load i64, i64* @WM8753_PLL1CTL2, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @wm8753_write(%struct.snd_soc_codec* %73, i64 %77, i32 %78)
  %80 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %15, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 261632
  %83 = ashr i32 %82, 9
  store i32 %83, i32* %14, align 4
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %85 = load i64, i64* @WM8753_PLL1CTL3, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @wm8753_write(%struct.snd_soc_codec* %84, i64 %88, i32 %89)
  %91 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %15, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 511
  store i32 %93, i32* %14, align 4
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %95 = load i64, i64* @WM8753_PLL1CTL4, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @wm8753_write(%struct.snd_soc_codec* %94, i64 %98, i32 %99)
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %102 = load i64, i64* @WM8753_PLL1CTL1, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %15, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 3
  %109 = or i32 39, %108
  %110 = call i32 @wm8753_write(%struct.snd_soc_codec* %101, i64 %105, i32 %109)
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  %112 = load i64, i64* @WM8753_CLOCK, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @wm8753_write(%struct.snd_soc_codec* %111, i64 %112, i32 %115)
  br label %117

117:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %49, %26
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @wm8753_read_reg_cache(%struct.snd_soc_codec*, i64) #1

declare dso_local i32 @wm8753_write(%struct.snd_soc_codec*, i64, i32) #1

declare dso_local i32 @pll_factors(%struct._pll_div*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
