; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9081.c_wm9081_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.wm9081_priv* }
%struct.wm9081_priv = type { i32 }

@WM9081_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_SLOT_MASK = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_MODE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM9081_AIFDAC_TDM_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm9081_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9081_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_codec*, align 8
  %13 = alloca %struct.wm9081_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %16, align 8
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %12, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 0
  %20 = load %struct.wm9081_priv*, %struct.wm9081_priv** %19, align 8
  store %struct.wm9081_priv* %20, %struct.wm9081_priv** %13, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %22 = load i32, i32* @WM9081_AUDIO_INTERFACE_1, align 4
  %23 = call i32 @snd_soc_read(%struct.snd_soc_codec* %21, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @WM9081_AIFDAC_TDM_SLOT_MASK, align 4
  %25 = load i32, i32* @WM9081_AIFDAC_TDM_MODE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %14, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %71

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.wm9081_priv*, %struct.wm9081_priv** %13, align 8
  %41 = getelementptr inbounds %struct.wm9081_priv, %struct.wm9081_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @WM9081_AIFDAC_TDM_MODE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %14, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %63 [
    i32 1, label %53
    i32 2, label %54
    i32 4, label %57
    i32 8, label %60
  ]

53:                                               ; preds = %45
  br label %66

54:                                               ; preds = %45
  %55 = load i32, i32* %14, align 4
  %56 = or i32 %55, 16
  store i32 %56, i32* %14, align 4
  br label %66

57:                                               ; preds = %45
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, 32
  store i32 %59, i32* %14, align 4
  br label %66

60:                                               ; preds = %45
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, 48
  store i32 %62, i32* %14, align 4
  br label %66

63:                                               ; preds = %45
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %60, %57, %54, %53
  %67 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %12, align 8
  %68 = load i32, i32* @WM9081_AUDIO_INTERFACE_1, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @snd_soc_write(%struct.snd_soc_codec* %67, i32 %68, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %63, %35
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
