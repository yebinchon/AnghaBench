; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8750.c_wm8750_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8750_priv* }
%struct.wm8750_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8750_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8750_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8750_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %13, align 8
  store %struct.snd_soc_codec* %14, %struct.snd_soc_codec** %10, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %16 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %15, i32 0, i32 0
  %17 = load %struct.wm8750_priv*, %struct.wm8750_priv** %16, align 8
  store %struct.wm8750_priv* %17, %struct.wm8750_priv** %11, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %23 [
    i32 11289600, label %19
    i32 12000000, label %19
    i32 12288000, label %19
    i32 16934400, label %19
    i32 18432000, label %19
  ]

19:                                               ; preds = %4, %4, %4, %4, %4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.wm8750_priv*, %struct.wm8750_priv** %11, align 8
  %22 = getelementptr inbounds %struct.wm8750_priv, %struct.wm8750_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
