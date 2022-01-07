; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8510_CLOCK = common dso_local global i32 0, align 4
@WM8510_POWER1 = common dso_local global i32 0, align 4
@WM8510_PLLN = common dso_local global i32 0, align 4
@pll_div = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WM8510_PLLK1 = common dso_local global i32 0, align 4
@WM8510_PLLK2 = common dso_local global i32 0, align 4
@WM8510_PLLK3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8510_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8510_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17, %4
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %22 = load i32, i32* @WM8510_CLOCK, align 4
  %23 = call i32 @snd_soc_read(%struct.snd_soc_codec* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %25 = load i32, i32* @WM8510_CLOCK, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @snd_soc_write(%struct.snd_soc_codec* %24, i32 %25, i32 %27)
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %30 = load i32, i32* @WM8510_POWER1, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %33 = load i32, i32* @WM8510_POWER1, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 479
  %36 = call i32 @snd_soc_write(%struct.snd_soc_codec* %32, i32 %33, i32 %35)
  store i32 0, i32* %5, align 4
  br label %81

37:                                               ; preds = %17
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 %38, 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pll_factors(i32 %39, i32 %40)
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %43 = load i32, i32* @WM8510_PLLN, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %45 = shl i32 %44, 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %47 = or i32 %45, %46
  %48 = call i32 @snd_soc_write(%struct.snd_soc_codec* %42, i32 %43, i32 %47)
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %50 = load i32, i32* @WM8510_PLLK1, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %52 = ashr i32 %51, 18
  %53 = call i32 @snd_soc_write(%struct.snd_soc_codec* %49, i32 %50, i32 %52)
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %55 = load i32, i32* @WM8510_PLLK2, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %57 = ashr i32 %56, 9
  %58 = and i32 %57, 511
  %59 = call i32 @snd_soc_write(%struct.snd_soc_codec* %54, i32 %55, i32 %58)
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %61 = load i32, i32* @WM8510_PLLK3, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %63 = and i32 %62, 511
  %64 = call i32 @snd_soc_write(%struct.snd_soc_codec* %60, i32 %61, i32 %63)
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %66 = load i32, i32* @WM8510_POWER1, align 4
  %67 = call i32 @snd_soc_read(%struct.snd_soc_codec* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %69 = load i32, i32* @WM8510_POWER1, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, 32
  %72 = call i32 @snd_soc_write(%struct.snd_soc_codec* %68, i32 %69, i32 %71)
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %74 = load i32, i32* @WM8510_CLOCK, align 4
  %75 = call i32 @snd_soc_read(%struct.snd_soc_codec* %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %77 = load i32, i32* @WM8510_CLOCK, align 4
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, 256
  %80 = call i32 @snd_soc_write(%struct.snd_soc_codec* %76, i32 %77, i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %37, %20
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @pll_factors(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
