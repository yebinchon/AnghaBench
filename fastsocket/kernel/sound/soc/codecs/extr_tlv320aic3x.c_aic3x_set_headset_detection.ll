; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_headset_detection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_headset_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@AIC3X_HEADSET_DETECT_MASK = common dso_local global i32 0, align 4
@AIC3X_HEADSET_DETECT_SHIFT = common dso_local global i32 0, align 4
@AIC3X_HEADSET_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@AIC3X_HEADSET_DEBOUNCE_SHIFT = common dso_local global i32 0, align 4
@AIC3X_BUTTON_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@AIC3X_BUTTON_DEBOUNCE_SHIFT = common dso_local global i32 0, align 4
@AIC3X_HEADSET_DETECT_ENABLED = common dso_local global i32 0, align 4
@AIC3X_HEADSET_DETECT_CTRL_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aic3x_set_headset_detection(%struct.snd_soc_codec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AIC3X_HEADSET_DETECT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @AIC3X_HEADSET_DETECT_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @AIC3X_HEADSET_DEBOUNCE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @AIC3X_HEADSET_DEBOUNCE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AIC3X_BUTTON_DEBOUNCE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @AIC3X_BUTTON_DEBOUNCE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %20, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AIC3X_HEADSET_DETECT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @AIC3X_HEADSET_DETECT_ENABLED, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %31, %4
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %37 = load i32, i32* @AIC3X_HEADSET_DETECT_CTRL_A, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @aic3x_write(%struct.snd_soc_codec* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @aic3x_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
