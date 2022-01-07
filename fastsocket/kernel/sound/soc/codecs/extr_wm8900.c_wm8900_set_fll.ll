; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_fll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8900.c_wm8900_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { %struct.wm8900_priv* }
%struct.wm8900_priv = type { i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i64 }

@WM8900_REG_POWER1 = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_FLL_ENA = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_MCLK_SRC = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL1 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL1_OSC_ENA = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL4 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL5 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL2 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL3 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL6 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32, i32)* @wm8900_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_fll(%struct.snd_soc_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8900_priv*, align 8
  %11 = alloca %struct._fll_div, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %13, i32 0, i32 0
  %15 = load %struct.wm8900_priv*, %struct.wm8900_priv** %14, align 8
  store %struct.wm8900_priv* %15, %struct.wm8900_priv** %10, align 8
  %16 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %17 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %23 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %161

28:                                               ; preds = %21, %4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %30 = load i32, i32* @WM8900_REG_POWER1, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %33 = load i32, i32* @WM8900_REG_POWER1, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @snd_soc_write(%struct.snd_soc_codec* %32, i32 %33, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41, %28
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %46 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %47 = call i32 @snd_soc_read(%struct.snd_soc_codec* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %49 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @WM8900_REG_CLOCKING1_MCLK_SRC, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @snd_soc_write(%struct.snd_soc_codec* %48, i32 %49, i32 %53)
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %56 = load i32, i32* @WM8900_REG_FLLCTL1, align 4
  %57 = call i32 @snd_soc_read(%struct.snd_soc_codec* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %59 = load i32, i32* @WM8900_REG_FLLCTL1, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @WM8900_REG_FLLCTL1_OSC_ENA, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = call i32 @snd_soc_write(%struct.snd_soc_codec* %58, i32 %59, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %67 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %70 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %161

71:                                               ; preds = %41
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @fll_factors(%struct._fll_div* %11, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %151

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %80 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %83 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %85 = load i32, i32* @WM8900_REG_FLLCTL1, align 4
  %86 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WM8900_REG_FLLCTL1_OSC_ENA, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @snd_soc_write(%struct.snd_soc_codec* %84, i32 %85, i32 %89)
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %92 = load i32, i32* @WM8900_REG_FLLCTL4, align 4
  %93 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 5
  %96 = call i32 @snd_soc_write(%struct.snd_soc_codec* %91, i32 %92, i32 %95)
  %97 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %98 = load i32, i32* @WM8900_REG_FLLCTL5, align 4
  %99 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 6
  %102 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 31
  %105 = or i32 %101, %104
  %106 = call i32 @snd_soc_write(%struct.snd_soc_codec* %97, i32 %98, i32 %105)
  %107 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %77
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %112 = load i32, i32* @WM8900_REG_FLLCTL2, align 4
  %113 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 8
  %116 = or i32 %115, 256
  %117 = call i32 @snd_soc_write(%struct.snd_soc_codec* %111, i32 %112, i32 %116)
  %118 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %119 = load i32, i32* @WM8900_REG_FLLCTL3, align 4
  %120 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 255
  %123 = call i32 @snd_soc_write(%struct.snd_soc_codec* %118, i32 %119, i32 %122)
  br label %128

124:                                              ; preds = %77
  %125 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %126 = load i32, i32* @WM8900_REG_FLLCTL2, align 4
  %127 = call i32 @snd_soc_write(%struct.snd_soc_codec* %125, i32 %126, i32 0)
  br label %128

128:                                              ; preds = %124, %110
  %129 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %134 = load i32, i32* @WM8900_REG_FLLCTL6, align 4
  %135 = load i32, i32* @WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF, align 4
  %136 = call i32 @snd_soc_write(%struct.snd_soc_codec* %133, i32 %134, i32 %135)
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %139 = load i32, i32* @WM8900_REG_FLLCTL6, align 4
  %140 = call i32 @snd_soc_write(%struct.snd_soc_codec* %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %143 = load i32, i32* @WM8900_REG_POWER1, align 4
  %144 = call i32 @snd_soc_read(%struct.snd_soc_codec* %142, i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %146 = load i32, i32* @WM8900_REG_POWER1, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @snd_soc_write(%struct.snd_soc_codec* %145, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %141, %76
  %152 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %153 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %154 = call i32 @snd_soc_read(%struct.snd_soc_codec* %152, i32 %153)
  store i32 %154, i32* %12, align 4
  %155 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %156 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @WM8900_REG_CLOCKING1_MCLK_SRC, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @snd_soc_write(%struct.snd_soc_codec* %155, i32 %156, i32 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %151, %44, %27
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i64 @fll_factors(%struct._fll_div*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
