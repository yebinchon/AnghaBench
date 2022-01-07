; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_fll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8350.c_wm8350_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8350_data*, %struct.wm8350* }
%struct.wm8350_data = type { i32, i32 }
%struct.wm8350 = type { i32 }
%struct._fll_div = type { i32, i32, i32, i32 }

@WM8350_POWER_MGMT_4 = common dso_local global i32 0, align 4
@WM8350_FLL_ENA = common dso_local global i32 0, align 4
@WM8350_FLL_OSC_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FLL in %u FLL out %u N 0x%x K 0x%x div %d ratio %d\00", align 1
@WM8350_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_RSP_RATE_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8350_FLL_N_MASK = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8350_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8350_FLL_FRAC = common dso_local global i32 0, align 4
@WM8350_FLL_SLOW_LOCK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8350_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_set_fll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8350*, align 8
  %12 = alloca %struct.wm8350_data*, align 8
  %13 = alloca %struct._fll_div, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %22 = load %struct.wm8350*, %struct.wm8350** %21, align 8
  store %struct.wm8350* %22, %struct.wm8350** %11, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 0
  %25 = load %struct.wm8350_data*, %struct.wm8350_data** %24, align 8
  store %struct.wm8350_data* %25, %struct.wm8350_data** %12, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.wm8350_data*, %struct.wm8350_data** %12, align 8
  %28 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.wm8350_data*, %struct.wm8350_data** %12, align 8
  %34 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %153

38:                                               ; preds = %31, %4
  %39 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %40 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %41 = load i32, i32* @WM8350_FLL_ENA, align 4
  %42 = load i32, i32* @WM8350_FLL_OSC_ENA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @wm8350_clear_bits(%struct.wm8350* %39, i32 %40, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %153

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @fll_factors(%struct._fll_div* %13, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %153

60:                                               ; preds = %52
  %61 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %62 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %67, i32 %69, i32 %71, i32 %73)
  %75 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %76 = load i32, i32* @WM8350_FLL_CONTROL_1, align 4
  %77 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %75, i32 %76)
  %78 = load i32, i32* @WM8350_FLL_OUTDIV_MASK, align 4
  %79 = load i32, i32* @WM8350_FLL_RSP_RATE_MASK, align 4
  %80 = or i32 %78, %79
  %81 = or i32 %80, 49152
  %82 = xor i32 %81, -1
  %83 = and i32 %77, %82
  store i32 %83, i32* %15, align 4
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %85 = load i32, i32* @WM8350_FLL_CONTROL_1, align 4
  %86 = load i32, i32* %15, align 4
  %87 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %86, %89
  %91 = or i32 %90, 80
  %92 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %84, i32 %85, i32 %91)
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %94 = load i32, i32* @WM8350_FLL_CONTROL_2, align 4
  %95 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 11
  %98 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @WM8350_FLL_N_MASK, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %97, %101
  %103 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %93, i32 %94, i32 %102)
  %104 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %105 = load i32, i32* @WM8350_FLL_CONTROL_3, align 4
  %106 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %104, i32 %105, i32 %107)
  %109 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %110 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %111 = call i32 @wm8350_codec_read(%struct.snd_soc_codec* %109, i32 %110)
  %112 = load i32, i32* @WM8350_FLL_FRAC, align 4
  %113 = load i32, i32* @WM8350_FLL_SLOW_LOCK_REF, align 4
  %114 = or i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = and i32 %111, %115
  store i32 %116, i32* %16, align 4
  %117 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %118 = load i32, i32* @WM8350_FLL_CONTROL_4, align 4
  %119 = load i32, i32* %16, align 4
  %120 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %60
  %124 = load i32, i32* @WM8350_FLL_FRAC, align 4
  br label %126

125:                                              ; preds = %60
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = or i32 %119, %127
  %129 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %13, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* @WM8350_FLL_SLOW_LOCK_REF, align 4
  br label %135

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = or i32 %128, %136
  %138 = call i32 @wm8350_codec_write(%struct.snd_soc_codec* %117, i32 %118, i32 %137)
  %139 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %140 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %141 = load i32, i32* @WM8350_FLL_OSC_ENA, align 4
  %142 = call i32 @wm8350_set_bits(%struct.wm8350* %139, i32 %140, i32 %141)
  %143 = load %struct.wm8350*, %struct.wm8350** %11, align 8
  %144 = load i32, i32* @WM8350_POWER_MGMT_4, align 4
  %145 = load i32, i32* @WM8350_FLL_ENA, align 4
  %146 = call i32 @wm8350_set_bits(%struct.wm8350* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.wm8350_data*, %struct.wm8350_data** %12, align 8
  %149 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.wm8350_data*, %struct.wm8350_data** %12, align 8
  %152 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %135, %58, %50, %37
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wm8350_codec_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @wm8350_codec_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
