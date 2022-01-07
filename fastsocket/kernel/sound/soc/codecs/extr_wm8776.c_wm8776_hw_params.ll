; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8776.c_wm8776_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8776.c_wm8776_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8776_priv* }
%struct.wm8776_priv = type { i32* }

@WM8776_DACIFCTRL = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8776_MSTRCTRL = common dso_local global i32 0, align 4
@mclk_ratios = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Unable to configure MCLK ratio %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"MCLK is %dfs\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"DAI in slave mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8776_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca %struct.wm8776_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %16, align 8
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %8, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 1
  %20 = load %struct.wm8776_priv*, %struct.wm8776_priv** %19, align 8
  store %struct.wm8776_priv* %20, %struct.wm8776_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 128, label %24
    i32 129, label %26
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @WM8776_DACIFCTRL, align 4
  store i32 %25, i32* %10, align 4
  store i32 128, i32* %13, align 4
  store i32 4, i32* %12, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load i32, i32* @WM8776_ADCIFCTRL, align 4
  store i32 %27, i32* %10, align 4
  store i32 256, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %132

31:                                               ; preds = %26, %24
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_format(%struct.snd_pcm_hw_params* %32)
  switch i32 %33, label %44 [
    i32 133, label %34
    i32 132, label %35
    i32 131, label %38
    i32 130, label %41
  ]

34:                                               ; preds = %31
  br label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, 16
  store i32 %37, i32* %11, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, 32
  store i32 %40, i32* %11, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, 48
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %31, %41, %38, %35, %34
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %46 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %47 = call i32 @snd_soc_read(%struct.snd_soc_codec* %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %122

51:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %78, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** @mclk_ratios, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load %struct.wm8776_priv*, %struct.wm8776_priv** %9, align 8
  %59 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %62 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %68 = call i32 @params_rate(%struct.snd_pcm_hw_params* %67)
  %69 = sdiv i32 %66, %68
  %70 = load i32*, i32** @mclk_ratios, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %81

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %52

81:                                               ; preds = %76, %52
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** @mclk_ratios, align 8
  %84 = call i32 @ARRAY_SIZE(i32* %83)
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %88 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wm8776_priv*, %struct.wm8776_priv** %9, align 8
  %91 = getelementptr inbounds %struct.wm8776_priv, %struct.wm8776_priv* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %100 = call i32 @params_rate(%struct.snd_pcm_hw_params* %99)
  %101 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %132

104:                                              ; preds = %81
  %105 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %106 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** @mclk_ratios, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %115 = load i32, i32* @WM8776_MSTRCTRL, align 4
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 7, %116
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %12, align 4
  %120 = shl i32 %118, %119
  %121 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %114, i32 %115, i32 %117, i32 %120)
  br label %127

122:                                              ; preds = %44
  %123 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %124 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @dev_dbg(i32 %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %104
  %128 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %128, i32 %129, i32 48, i32 %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %86, %28
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
