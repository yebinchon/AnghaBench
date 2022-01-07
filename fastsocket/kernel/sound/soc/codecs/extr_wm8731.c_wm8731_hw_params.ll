; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8731.c_wm8731_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8731.c_wm8731_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8731_priv* }
%struct.wm8731_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8731_IFACE = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_4__* null, align 8
@WM8731_SRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8731_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8731_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.wm8731_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %15, align 8
  store %struct.snd_soc_pcm_runtime* %16, %struct.snd_soc_pcm_runtime** %7, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_device*, %struct.snd_soc_device** %18, align 8
  store %struct.snd_soc_device* %19, %struct.snd_soc_device** %8, align 8
  %20 = load %struct.snd_soc_device*, %struct.snd_soc_device** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %23, align 8
  store %struct.snd_soc_codec* %24, %struct.snd_soc_codec** %9, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load %struct.wm8731_priv*, %struct.wm8731_priv** %26, align 8
  store %struct.wm8731_priv* %27, %struct.wm8731_priv** %10, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %29 = load i32, i32* @WM8731_IFACE, align 4
  %30 = call i32 @snd_soc_read(%struct.snd_soc_codec* %28, i32 %29)
  %31 = and i32 %30, 65523
  store i32 %31, i32* %11, align 4
  %32 = load %struct.wm8731_priv*, %struct.wm8731_priv** %10, align 8
  %33 = getelementptr inbounds %struct.wm8731_priv, %struct.wm8731_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %36 = call i32 @params_rate(%struct.snd_pcm_hw_params* %35)
  %37 = call i32 @get_coeff(i32 %34, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 1
  %52 = or i32 %44, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %52, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %61 = load i32, i32* @WM8731_SRATE, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @snd_soc_write(%struct.snd_soc_codec* %60, i32 %61, i32 %62)
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %65 = call i32 @params_format(%struct.snd_pcm_hw_params* %64)
  switch i32 %65, label %73 [
    i32 130, label %66
    i32 129, label %67
    i32 128, label %70
  ]

66:                                               ; preds = %3
  br label %73

67:                                               ; preds = %3
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, 4
  store i32 %69, i32* %11, align 4
  br label %73

70:                                               ; preds = %3
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, 8
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %3, %70, %67, %66
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %75 = load i32, i32* @WM8731_IFACE, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @snd_soc_write(%struct.snd_soc_codec* %74, i32 %75, i32 %76)
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
