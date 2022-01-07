; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8728.c_wm8728_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8728.c_wm8728_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8728_DACCTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8728_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8728_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %8, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %16, align 8
  store %struct.snd_soc_device* %17, %struct.snd_soc_device** %9, align 8
  %18 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %19 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %21, align 8
  store %struct.snd_soc_codec* %22, %struct.snd_soc_codec** %10, align 8
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %24 = load i32, i32* @WM8728_DACCTL, align 4
  %25 = call i32 @snd_soc_read(%struct.snd_soc_codec* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, -25
  store i32 %27, i32* %11, align 4
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_format(%struct.snd_pcm_hw_params* %28)
  switch i32 %29, label %37 [
    i32 130, label %30
    i32 129, label %31
    i32 128, label %34
  ]

30:                                               ; preds = %3
  br label %40

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, 16
  store i32 %33, i32* %11, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, 8
  store i32 %36, i32* %11, align 4
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %34, %31, %30
  %41 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %42 = load i32, i32* @WM8728_DACCTL, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @snd_soc_write(%struct.snd_soc_codec* %41, i32 %42, i32 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
