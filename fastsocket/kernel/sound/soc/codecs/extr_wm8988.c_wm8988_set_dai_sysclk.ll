; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8988.c_wm8988_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm8988_priv* }
%struct.wm8988_priv = type { i32, i32* }

@constraints_112896 = common dso_local global i32 0, align 4
@constraints_12288 = common dso_local global i32 0, align 4
@constraints_12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @wm8988_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8988_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8988_priv*, align 8
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
  %17 = load %struct.wm8988_priv*, %struct.wm8988_priv** %16, align 8
  store %struct.wm8988_priv* %17, %struct.wm8988_priv** %11, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %37 [
    i32 11289600, label %19
    i32 18432000, label %19
    i32 22579200, label %19
    i32 36864000, label %19
    i32 12288000, label %25
    i32 16934400, label %25
    i32 24576000, label %25
    i32 33868800, label %25
    i32 12000000, label %31
    i32 24000000, label %31
  ]

19:                                               ; preds = %4, %4, %4, %4
  %20 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %21 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %20, i32 0, i32 1
  store i32* @constraints_112896, i32** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %24 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %5, align 4
  br label %40

25:                                               ; preds = %4, %4, %4, %4
  %26 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %27 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %26, i32 0, i32 1
  store i32* @constraints_12288, i32** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %30 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %5, align 4
  br label %40

31:                                               ; preds = %4, %4
  %32 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %33 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %32, i32 0, i32 1
  store i32* @constraints_12, i32** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.wm8988_priv*, %struct.wm8988_priv** %11, align 8
  %36 = getelementptr inbounds %struct.wm8988_priv, %struct.wm8988_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %5, align 4
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %31, %25, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
