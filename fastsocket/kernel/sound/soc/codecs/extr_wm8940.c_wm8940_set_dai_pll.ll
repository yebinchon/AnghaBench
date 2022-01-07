; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@WM8940_POWER1 = common dso_local global i32 0, align 4
@WM8940_CLOCK = common dso_local global i32 0, align 4
@WM8940_PLLN = common dso_local global i32 0, align 4
@pll_div = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WM8940_PLLK1 = common dso_local global i32 0, align 4
@WM8940_PLLK2 = common dso_local global i32 0, align 4
@WM8940_PLLK3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8940_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %16 = load i32, i32* @WM8940_POWER1, align 4
  %17 = call i32 @snd_soc_read(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %19 = load i32, i32* @WM8940_POWER1, align 4
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, 479
  %22 = call i32 @snd_soc_write(%struct.snd_soc_codec* %18, i32 %19, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25, %4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %30 = load i32, i32* @WM8940_CLOCK, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %33 = load i32, i32* @WM8940_CLOCK, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 255
  %36 = call i32 @snd_soc_write(%struct.snd_soc_codec* %32, i32 %33, i32 %35)
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %38 = load i32, i32* @WM8940_PLLN, align 4
  %39 = call i32 @snd_soc_write(%struct.snd_soc_codec* %37, i32 %38, i32 128)
  store i32 0, i32* %5, align 4
  br label %97

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = mul i32 %41, 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @pll_factors(i32 %42, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %49 = load i32, i32* @WM8940_PLLN, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %51 = shl i32 %50, 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %53 = or i32 %51, %52
  %54 = or i32 %53, 64
  %55 = call i32 @snd_soc_write(%struct.snd_soc_codec* %48, i32 %49, i32 %54)
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %58 = load i32, i32* @WM8940_PLLN, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %60 = shl i32 %59, 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_soc_write(%struct.snd_soc_codec* %57, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %56, %47
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %66 = load i32, i32* @WM8940_PLLK1, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %68 = ashr i32 %67, 18
  %69 = call i32 @snd_soc_write(%struct.snd_soc_codec* %65, i32 %66, i32 %68)
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %71 = load i32, i32* @WM8940_PLLK2, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %73 = ashr i32 %72, 9
  %74 = and i32 %73, 511
  %75 = call i32 @snd_soc_write(%struct.snd_soc_codec* %70, i32 %71, i32 %74)
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %77 = load i32, i32* @WM8940_PLLK3, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %79 = and i32 %78, 511
  %80 = call i32 @snd_soc_write(%struct.snd_soc_codec* %76, i32 %77, i32 %79)
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %82 = load i32, i32* @WM8940_POWER1, align 4
  %83 = call i32 @snd_soc_read(%struct.snd_soc_codec* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %85 = load i32, i32* @WM8940_POWER1, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, 32
  %88 = call i32 @snd_soc_write(%struct.snd_soc_codec* %84, i32 %85, i32 %87)
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %90 = load i32, i32* @WM8940_CLOCK, align 4
  %91 = call i32 @snd_soc_read(%struct.snd_soc_codec* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %93 = load i32, i32* @WM8940_CLOCK, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, 256
  %96 = call i32 @snd_soc_write(%struct.snd_soc_codec* %92, i32 %93, i32 %95)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %64, %28
  %98 = load i32, i32* %5, align 4
  ret i32 %98
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
