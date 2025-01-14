; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8750_priv* }
%struct.wm8750_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8750_IFACE = common dso_local global i32 0, align 4
@WM8750_SRATE = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8750_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8750_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.wm8750_priv*, align 8
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
  %27 = load %struct.wm8750_priv*, %struct.wm8750_priv** %26, align 8
  store %struct.wm8750_priv* %27, %struct.wm8750_priv** %10, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %29 = load i32, i32* @WM8750_IFACE, align 4
  %30 = call i32 @snd_soc_read(%struct.snd_soc_codec* %28, i32 %29)
  %31 = and i32 %30, 499
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %33 = load i32, i32* @WM8750_SRATE, align 4
  %34 = call i32 @snd_soc_read(%struct.snd_soc_codec* %32, i32 %33)
  %35 = and i32 %34, 448
  store i32 %35, i32* %12, align 4
  %36 = load %struct.wm8750_priv*, %struct.wm8750_priv** %10, align 8
  %37 = getelementptr inbounds %struct.wm8750_priv, %struct.wm8750_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = call i32 @params_rate(%struct.snd_pcm_hw_params* %39)
  %41 = call i32 @get_coeff(i32 %38, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = call i32 @params_format(%struct.snd_pcm_hw_params* %42)
  switch i32 %43, label %54 [
    i32 131, label %44
    i32 130, label %45
    i32 129, label %48
    i32 128, label %51
  ]

44:                                               ; preds = %3
  br label %54

45:                                               ; preds = %3
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, 4
  store i32 %47, i32* %11, align 4
  br label %54

48:                                               ; preds = %3
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, 8
  store i32 %50, i32* %11, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, 12
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %3, %51, %48, %45, %44
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %56 = load i32, i32* @WM8750_IFACE, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @snd_soc_write(%struct.snd_soc_codec* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %63 = load i32, i32* @WM8750_SRATE, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 1
  %72 = or i32 %64, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @coeff_div, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %72, %78
  %80 = call i32 @snd_soc_write(%struct.snd_soc_codec* %62, i32 %63, i32 %79)
  br label %81

81:                                               ; preds = %61, %54
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
