; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_fll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8993_priv* }
%struct.wm8993_priv = type { i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM8993_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8993_FLL_ENA = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown FLL ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM8993_FLL_FRAC_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8993_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8993_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8993_FLL_N_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_N_SHIFT = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@WM8993_FLL_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8993_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_set_fll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8993_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._fll_div, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %18, align 8
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %10, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 1
  %22 = load %struct.wm8993_priv*, %struct.wm8993_priv** %21, align 8
  store %struct.wm8993_priv* %22, %struct.wm8993_priv** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %25 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %31 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %185

35:                                               ; preds = %28, %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_dbg(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %44 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %46 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %48 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %49 = call i32 @wm8993_read(%struct.snd_soc_codec* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @WM8993_FLL_ENA, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %12, align 4
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %55 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @wm8993_write(%struct.snd_soc_codec* %54, i32 %55, i32 %56)
  store i32 0, i32* %5, align 4
  br label %185

58:                                               ; preds = %35
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @fll_factors(%struct._fll_div* %15, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %5, align 4
  br label %185

66:                                               ; preds = %58
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %68 = load i32, i32* @WM8993_FLL_CONTROL_5, align 4
  %69 = call i32 @wm8993_read(%struct.snd_soc_codec* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @WM8993_FLL_CLK_SRC_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %7, align 4
  switch i32 %74, label %82 [
    i32 128, label %75
    i32 129, label %76
    i32 130, label %79
  ]

75:                                               ; preds = %66
  br label %90

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %90

79:                                               ; preds = %66
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, 2
  store i32 %81, i32* %14, align 4
  br label %90

82:                                               ; preds = %66
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %84 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %185

90:                                               ; preds = %79, %76, %75
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %92 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %93 = call i32 @wm8993_read(%struct.snd_soc_codec* %91, i32 %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* @WM8993_FLL_ENA, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %99 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @wm8993_write(%struct.snd_soc_codec* %98, i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load i32, i32* @WM8993_FLL_FRAC_MASK, align 4
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  br label %114

109:                                              ; preds = %90
  %110 = load i32, i32* @WM8993_FLL_FRAC_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %116 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @wm8993_write(%struct.snd_soc_codec* %115, i32 %116, i32 %117)
  %119 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %120 = load i32, i32* @WM8993_FLL_CONTROL_2, align 4
  %121 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @WM8993_FLL_OUTDIV_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @WM8993_FLL_FRATIO_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = or i32 %124, %128
  %130 = call i32 @wm8993_write(%struct.snd_soc_codec* %119, i32 %120, i32 %129)
  %131 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %132 = load i32, i32* @WM8993_FLL_CONTROL_3, align 4
  %133 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wm8993_write(%struct.snd_soc_codec* %131, i32 %132, i32 %134)
  %136 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %137 = load i32, i32* @WM8993_FLL_CONTROL_4, align 4
  %138 = call i32 @wm8993_read(%struct.snd_soc_codec* %136, i32 %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* @WM8993_FLL_N_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %13, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WM8993_FLL_N_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %13, align 4
  %149 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %150 = load i32, i32* @WM8993_FLL_CONTROL_4, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @wm8993_write(%struct.snd_soc_codec* %149, i32 %150, i32 %151)
  %153 = load i32, i32* @WM8993_FLL_CLK_REF_DIV_MASK, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %14, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %14, align 4
  %157 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %15, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @WM8993_FLL_CLK_REF_DIV_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %14, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %14, align 4
  %163 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %164 = load i32, i32* @WM8993_FLL_CONTROL_5, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @wm8993_write(%struct.snd_soc_codec* %163, i32 %164, i32 %165)
  %167 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %168 = load i32, i32* @WM8993_FLL_CONTROL_1, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @WM8993_FLL_ENA, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @wm8993_write(%struct.snd_soc_codec* %167, i32 %168, i32 %171)
  %173 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %174 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32, i8*, ...) @dev_dbg(i32 %175, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %181 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.wm8993_priv*, %struct.wm8993_priv** %11, align 8
  %184 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %114, %82, %64, %38, %34
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @wm8993_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8993_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
