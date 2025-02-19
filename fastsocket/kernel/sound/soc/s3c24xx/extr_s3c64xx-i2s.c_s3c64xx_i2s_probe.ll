; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }

@S3C64XX_GPD0_I2S0_CLK = common dso_local global i32 0, align 4
@S3C64XX_GPD1_I2S0_CDCLK = common dso_local global i32 0, align 4
@S3C64XX_GPD2_I2S0_LRCLK = common dso_local global i32 0, align 4
@S3C64XX_GPD3_I2S0_DI = common dso_local global i32 0, align 4
@S3C64XX_GPD4_I2S0_D0 = common dso_local global i32 0, align 4
@S3C64XX_GPE0_I2S1_CLK = common dso_local global i32 0, align 4
@S3C64XX_GPE1_I2S1_CDCLK = common dso_local global i32 0, align 4
@S3C64XX_GPE2_I2S1_LRCLK = common dso_local global i32 0, align 4
@S3C64XX_GPE3_I2S1_DI = common dso_local global i32 0, align 4
@S3C64XX_GPE4_I2S1_D0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.snd_soc_dai*)* @s3c64xx_i2s_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_i2s_probe(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %40 [
    i32 0, label %8
    i32 1, label %24
  ]

8:                                                ; preds = %2
  %9 = call i32 @S3C64XX_GPD(i32 0)
  %10 = load i32, i32* @S3C64XX_GPD0_I2S0_CLK, align 4
  %11 = call i32 @s3c_gpio_cfgpin(i32 %9, i32 %10)
  %12 = call i32 @S3C64XX_GPD(i32 1)
  %13 = load i32, i32* @S3C64XX_GPD1_I2S0_CDCLK, align 4
  %14 = call i32 @s3c_gpio_cfgpin(i32 %12, i32 %13)
  %15 = call i32 @S3C64XX_GPD(i32 2)
  %16 = load i32, i32* @S3C64XX_GPD2_I2S0_LRCLK, align 4
  %17 = call i32 @s3c_gpio_cfgpin(i32 %15, i32 %16)
  %18 = call i32 @S3C64XX_GPD(i32 3)
  %19 = load i32, i32* @S3C64XX_GPD3_I2S0_DI, align 4
  %20 = call i32 @s3c_gpio_cfgpin(i32 %18, i32 %19)
  %21 = call i32 @S3C64XX_GPD(i32 4)
  %22 = load i32, i32* @S3C64XX_GPD4_I2S0_D0, align 4
  %23 = call i32 @s3c_gpio_cfgpin(i32 %21, i32 %22)
  br label %40

24:                                               ; preds = %2
  %25 = call i32 @S3C64XX_GPE(i32 0)
  %26 = load i32, i32* @S3C64XX_GPE0_I2S1_CLK, align 4
  %27 = call i32 @s3c_gpio_cfgpin(i32 %25, i32 %26)
  %28 = call i32 @S3C64XX_GPE(i32 1)
  %29 = load i32, i32* @S3C64XX_GPE1_I2S1_CDCLK, align 4
  %30 = call i32 @s3c_gpio_cfgpin(i32 %28, i32 %29)
  %31 = call i32 @S3C64XX_GPE(i32 2)
  %32 = load i32, i32* @S3C64XX_GPE2_I2S1_LRCLK, align 4
  %33 = call i32 @s3c_gpio_cfgpin(i32 %31, i32 %32)
  %34 = call i32 @S3C64XX_GPE(i32 3)
  %35 = load i32, i32* @S3C64XX_GPE3_I2S1_DI, align 4
  %36 = call i32 @s3c_gpio_cfgpin(i32 %34, i32 %35)
  %37 = call i32 @S3C64XX_GPE(i32 4)
  %38 = load i32, i32* @S3C64XX_GPE4_I2S1_D0, align 4
  %39 = call i32 @s3c_gpio_cfgpin(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %24, %2, %8
  ret i32 0
}

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C64XX_GPD(i32) #1

declare dso_local i32 @S3C64XX_GPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
