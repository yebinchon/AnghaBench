; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_cold_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_cold_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_ac97 = type { i32 }

@s3c24xx_ac97 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C_AC97_GLBCTRL = common dso_local global i64 0, align 8
@S3C_AC97_GLBCTRL_COLDRESET = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_ACLINKON = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_TRANSFERDATAENABLE = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMOUTTM_DMA = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_PCMINTM_DMA = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL_MICINTM_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @s3c2443_ac97_cold_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2443_ac97_cold_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %5 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readl(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @S3C_AC97_GLBCTRL_COLDRESET, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %11 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %9, i64 %12)
  %14 = call i32 @msleep(i32 1)
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %17 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %15, i64 %18)
  %20 = call i32 @msleep(i32 1)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %22 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @S3C_AC97_GLBCTRL_ACLINKON, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %28 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %26, i64 %29)
  %31 = call i32 @msleep(i32 1)
  %32 = load i32, i32* @S3C_AC97_GLBCTRL_TRANSFERDATAENABLE, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %37 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %35, i64 %38)
  %40 = call i32 @msleep(i32 1)
  %41 = load i32, i32* @S3C_AC97_GLBCTRL_PCMOUTTM_DMA, align 4
  %42 = load i32, i32* @S3C_AC97_GLBCTRL_PCMINTM_DMA, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S3C_AC97_GLBCTRL_MICINTM_DMA, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %50 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %48, i64 %51)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
