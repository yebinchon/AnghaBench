; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-i2s.c_s6000_i2s_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-i2s.c_s6000_i2s_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.s6000_i2s_dev* }
%struct.s6000_i2s_dev = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@S6_I2S_SCK_IN = common dso_local global i32 0, align 4
@S6_I2S_WS_IN = common dso_local global i32 0, align 4
@S6_I2S_SCK_OUT = common dso_local global i32 0, align 4
@S6_I2S_WS_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@S6_I2S_LEFT_FIRST = common dso_local global i32 0, align 4
@S6_I2S_RIGHT_FIRST = common dso_local global i32 0, align 4
@S6_I2S_FIRST = common dso_local global i32 0, align 4
@S6_I2S_WS_DIR = common dso_local global i32 0, align 4
@S6_I2S_SCK_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @s6000_i2s_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_i2s_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s6000_i2s_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.s6000_i2s_dev*, %struct.s6000_i2s_dev** %9, align 8
  store %struct.s6000_i2s_dev* %10, %struct.s6000_i2s_dev** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %30 [
    i32 133, label %14
    i32 131, label %18
    i32 132, label %22
    i32 130, label %26
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @S6_I2S_SCK_IN, align 4
  %16 = load i32, i32* @S6_I2S_WS_IN, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @S6_I2S_SCK_OUT, align 4
  %20 = load i32, i32* @S6_I2S_WS_IN, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @S6_I2S_SCK_IN, align 4
  %24 = load i32, i32* @S6_I2S_WS_OUT, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @S6_I2S_SCK_OUT, align 4
  %28 = load i32, i32* @S6_I2S_WS_OUT, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %67

33:                                               ; preds = %26, %22, %18, %14
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %45 [
    i32 128, label %37
    i32 129, label %41
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @S6_I2S_LEFT_FIRST, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %48

41:                                               ; preds = %33
  %42 = load i32, i32* @S6_I2S_RIGHT_FIRST, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %67

48:                                               ; preds = %41, %37
  %49 = load %struct.s6000_i2s_dev*, %struct.s6000_i2s_dev** %6, align 8
  %50 = call i32 @S6_I2S_INTERFACE_CFG(i32 0)
  %51 = load i32, i32* @S6_I2S_FIRST, align 4
  %52 = load i32, i32* @S6_I2S_WS_DIR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @S6_I2S_SCK_DIR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @s6_i2s_mod_reg(%struct.s6000_i2s_dev* %49, i32 %50, i32 %55, i32 %56)
  %58 = load %struct.s6000_i2s_dev*, %struct.s6000_i2s_dev** %6, align 8
  %59 = call i32 @S6_I2S_INTERFACE_CFG(i32 1)
  %60 = load i32, i32* @S6_I2S_FIRST, align 4
  %61 = load i32, i32* @S6_I2S_WS_DIR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @S6_I2S_SCK_DIR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @s6_i2s_mod_reg(%struct.s6000_i2s_dev* %58, i32 %59, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %48, %45, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @s6_i2s_mod_reg(%struct.s6000_i2s_dev*, i32, i32, i32) #1

declare dso_local i32 @S6_I2S_INTERFACE_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
