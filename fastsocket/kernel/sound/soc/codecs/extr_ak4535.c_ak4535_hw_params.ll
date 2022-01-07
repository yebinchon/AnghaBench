; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4535.c_ak4535_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4535.c_ak4535_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.ak4535_priv* }
%struct.ak4535_priv = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@AK4535_MODE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ak4535_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4535_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca %struct.ak4535_priv*, align 8
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
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %23, align 8
  store %struct.snd_soc_codec* %24, %struct.snd_soc_codec** %9, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load %struct.ak4535_priv*, %struct.ak4535_priv** %26, align 8
  store %struct.ak4535_priv* %27, %struct.ak4535_priv** %10, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %29 = load i32, i32* @AK4535_MODE2, align 4
  %30 = call i32 @ak4535_read_reg_cache(%struct.snd_soc_codec* %28, i32 %29)
  %31 = and i32 %30, -97
  store i32 %31, i32* %11, align 4
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %12, align 4
  store i32 256, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.ak4535_priv*, %struct.ak4535_priv** %10, align 8
  %38 = getelementptr inbounds %struct.ak4535_priv, %struct.ak4535_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %51 [
    i32 1024, label %44
    i32 512, label %47
    i32 256, label %50
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, 64
  store i32 %46, i32* %11, align 4
  br label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, 32
  store i32 %49, i32* %11, align 4
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %42, %50, %47, %44
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %53 = load i32, i32* @AK4535_MODE2, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ak4535_write(%struct.snd_soc_codec* %52, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local i32 @ak4535_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ak4535_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
