; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8988_priv* }
%struct.wm8988_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8988_IFACE = common dso_local global i32 0, align 4
@WM8988_SRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to configure sample rate %dHz with %dHz MCLK\0A\00", align 1
@coeff_div = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8988_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8988_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %16, align 8
  store %struct.snd_soc_pcm_runtime* %17, %struct.snd_soc_pcm_runtime** %8, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %19, align 8
  store %struct.snd_soc_device* %20, %struct.snd_soc_device** %9, align 8
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %22 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %24, align 8
  store %struct.snd_soc_codec* %25, %struct.snd_soc_codec** %10, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %27 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %26, i32 0, i32 1
  %28 = load %struct.wm8988_priv*, %struct.wm8988_priv** %27, align 8
  store %struct.wm8988_priv* %28, %struct.wm8988_priv** %11, align 8
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %30 = load i32, i32* @WM8988_IFACE, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  %32 = and i32 %31, 499
  store i32 %32, i32* %12, align 4
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %34 = load i32, i32* @WM8988_SRATE, align 4
  %35 = call i32 @snd_soc_read(%struct.snd_soc_codec* %33, i32 %34)
  %36 = and i32 %35, 384
  store i32 %36, i32* %13, align 4
  %37 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %38 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @params_rate(%struct.snd_pcm_hw_params* %40)
  %42 = call i32 @get_coeff(i32 %39, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %3
  %46 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %47 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 @params_rate(%struct.snd_pcm_hw_params* %50)
  %52 = call i32 @get_coeff(i32 %49, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = or i32 %53, 64
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %45, %3
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i32 @params_rate(%struct.snd_pcm_hw_params* %62)
  %64 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %65 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %55
  %70 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %71 = call i32 @params_format(%struct.snd_pcm_hw_params* %70)
  switch i32 %71, label %82 [
    i32 131, label %72
    i32 130, label %73
    i32 129, label %76
    i32 128, label %79
  ]

72:                                               ; preds = %69
  br label %82

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, 4
  store i32 %75, i32* %12, align 4
  br label %82

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, 8
  store i32 %78, i32* %12, align 4
  br label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, 12
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %69, %79, %76, %73, %72
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %84 = load i32, i32* @WM8988_IFACE, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @snd_soc_write(%struct.snd_soc_codec* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %91 = load i32, i32* @WM8988_SRATE, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 1
  %100 = or i32 %92, %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %100, %106
  %108 = call i32 @snd_soc_write(%struct.snd_soc_codec* %90, i32 %91, i32 %107)
  br label %109

109:                                              ; preds = %89, %82
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %58
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
