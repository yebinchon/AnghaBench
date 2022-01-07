; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@AIC3X_GPIO2_REG = common dso_local global i32 0, align 4
@AIC3X_GPIO1_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aic3x_set_gpio(%struct.snd_soc_codec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @AIC3X_GPIO2_REG, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @AIC3X_GPIO1_REG, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 3, i32 0
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %31, %38
  %40 = call i32 @aic3x_write(%struct.snd_soc_codec* %29, i32 %30, i32 %39)
  ret void
}

declare dso_local i32 @aic3x_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @aic3x_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
