; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_fll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.wm9081_priv* }
%struct.wm9081_priv = type { i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"FLL disabled\0A\00", align 1
@WM9081_FLL_CONTROL_5 = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_SRC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown FLL ID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WM9081_CLOCK_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_CLK_SYS_ENA = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM9081_FLL_ENA = common dso_local global i32 0, align 4
@WM9081_FLL_FRAC_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM9081_FLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_FRATIO_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM9081_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM9081_FLL_N_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_N_SHIFT = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_REF_DIV_MASK = common dso_local global i32 0, align 4
@WM9081_FLL_CLK_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"FLL enabled at %dHz->%dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32, i32, i32)* @wm9081_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_fll(%struct.snd_soc_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm9081_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._fll_div, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %17, i32 0, i32 1
  %19 = load %struct.wm9081_priv*, %struct.wm9081_priv** %18, align 8
  store %struct.wm9081_priv* %19, %struct.wm9081_priv** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %22 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %28 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %193

32:                                               ; preds = %25, %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %41 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %43 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %193

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fll_factors(%struct._fll_div* %14, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %5, align 4
  br label %193

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %54 = load i32, i32* @WM9081_FLL_CONTROL_5, align 4
  %55 = call i32 @snd_soc_read(%struct.snd_soc_codec* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* @WM9081_FLL_CLK_SRC_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %7, align 4
  switch i32 %60, label %64 [
    i32 128, label %61
  ]

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %72

64:                                               ; preds = %52
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %193

72:                                               ; preds = %61
  %73 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %74 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %75 = call i32 @snd_soc_read(%struct.snd_soc_codec* %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %82 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @snd_soc_write(%struct.snd_soc_codec* %81, i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %90 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %91 = call i32 @snd_soc_read(%struct.snd_soc_codec* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @WM9081_FLL_ENA, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %97 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @snd_soc_write(%struct.snd_soc_codec* %96, i32 %97, i32 %98)
  %100 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load i32, i32* @WM9081_FLL_FRAC_MASK, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %112

107:                                              ; preds = %88
  %108 = load i32, i32* @WM9081_FLL_FRAC_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %114 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @snd_soc_write(%struct.snd_soc_codec* %113, i32 %114, i32 %115)
  %117 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %118 = load i32, i32* @WM9081_FLL_CONTROL_2, align 4
  %119 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @WM9081_FLL_OUTDIV_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @WM9081_FLL_FRATIO_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = or i32 %122, %126
  %128 = call i32 @snd_soc_write(%struct.snd_soc_codec* %117, i32 %118, i32 %127)
  %129 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %130 = load i32, i32* @WM9081_FLL_CONTROL_3, align 4
  %131 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @snd_soc_write(%struct.snd_soc_codec* %129, i32 %130, i32 %132)
  %134 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %135 = load i32, i32* @WM9081_FLL_CONTROL_4, align 4
  %136 = call i32 @snd_soc_read(%struct.snd_soc_codec* %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @WM9081_FLL_N_MASK, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WM9081_FLL_N_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  %147 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %148 = load i32, i32* @WM9081_FLL_CONTROL_4, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @snd_soc_write(%struct.snd_soc_codec* %147, i32 %148, i32 %149)
  %151 = load i32, i32* @WM9081_FLL_CLK_REF_DIV_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %14, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @WM9081_FLL_CLK_REF_DIV_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %162 = load i32, i32* @WM9081_FLL_CONTROL_5, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @snd_soc_write(%struct.snd_soc_codec* %161, i32 %162, i32 %163)
  %165 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %166 = load i32, i32* @WM9081_FLL_CONTROL_1, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @WM9081_FLL_ENA, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @snd_soc_write(%struct.snd_soc_codec* %165, i32 %166, i32 %169)
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @WM9081_CLK_SYS_ENA, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %112
  %176 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %177 = load i32, i32* @WM9081_CLOCK_CONTROL_3, align 4
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @snd_soc_write(%struct.snd_soc_codec* %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %112
  %181 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %182 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 (i32, i8*, ...) @dev_dbg(i32 %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %189 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.wm9081_priv*, %struct.wm9081_priv** %10, align 8
  %192 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %180, %64, %50, %35, %31
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
