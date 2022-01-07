; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_i2s_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8940.c_wm8940_i2s_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8940_IFACE = common dso_local global i32 0, align 4
@WM8940_ADDCNTRL = common dso_local global i32 0, align 4
@WM8940_COMPANDINGCTL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8940_i2s_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_i2s_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %8 = alloca %struct.snd_soc_device*, align 8
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
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
  %26 = load i32, i32* @WM8940_IFACE, align 4
  %27 = call i32 @snd_soc_read(%struct.snd_soc_codec* %25, i32 %26)
  %28 = and i32 %27, 64927
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %30 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %31 = call i32 @snd_soc_read(%struct.snd_soc_codec* %29, i32 %30)
  %32 = and i32 %31, 65521
  store i32 %32, i32* %11, align 4
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %34 = load i32, i32* @WM8940_COMPANDINGCTL, align 4
  %35 = call i32 @snd_soc_read(%struct.snd_soc_codec* %33, i32 %34)
  %36 = and i32 %35, 65503
  store i32 %36, i32* %12, align 4
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %44 = call i32 @params_channels(%struct.snd_pcm_hw_params* %43)
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 512
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %42, %3
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %51 = call i32 @params_rate(%struct.snd_pcm_hw_params* %50)
  switch i32 %51, label %68 [
    i32 8000, label %52
    i32 11025, label %55
    i32 16000, label %58
    i32 22050, label %61
    i32 32000, label %64
    i32 44100, label %67
    i32 48000, label %67
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, 10
  store i32 %54, i32* %11, align 4
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %11, align 4
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, 6
  store i32 %60, i32* %11, align 4
  br label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, 4
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %49
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, 2
  store i32 %66, i32* %11, align 4
  br label %68

67:                                               ; preds = %49, %49
  br label %68

68:                                               ; preds = %49, %67, %64, %61, %58, %55, %52
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %70 = load i32, i32* @WM8940_ADDCNTRL, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @snd_soc_write(%struct.snd_soc_codec* %69, i32 %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %105

76:                                               ; preds = %68
  %77 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %78 = call i32 @params_format(%struct.snd_pcm_hw_params* %77)
  switch i32 %78, label %92 [
    i32 128, label %79
    i32 132, label %82
    i32 131, label %83
    i32 130, label %86
    i32 129, label %89
  ]

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, 32
  store i32 %81, i32* %12, align 4
  br label %92

82:                                               ; preds = %76
  br label %92

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, 32
  store i32 %85, i32* %10, align 4
  br label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, 64
  store i32 %88, i32* %10, align 4
  br label %92

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, 96
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %76, %89, %86, %83, %82, %79
  %93 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %94 = load i32, i32* @WM8940_COMPANDINGCTL, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @snd_soc_write(%struct.snd_soc_codec* %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %105

100:                                              ; preds = %92
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %102 = load i32, i32* @WM8940_IFACE, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @snd_soc_write(%struct.snd_soc_codec* %101, i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %100, %99, %75
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
