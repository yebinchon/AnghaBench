; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@s3c24xx_ac97 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C_AC97_GLBSTAT = common dso_local global i64 0, align 8
@codec_ready = common dso_local global i32 0, align 4
@S3C_AC97_GLBCTRL = common dso_local global i64 0, align 8
@S3C_AC97_GLBCTRL_CODECREADYIE = common dso_local global i32 0, align 4
@ac97_completion = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c2443_ac97_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2443_ac97_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %8 = load i64, i64* @S3C_AC97_GLBSTAT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = load i32, i32* @codec_ready, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %17 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @S3C_AC97_GLBCTRL_CODECREADYIE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %26 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %24, i64 %27)
  %29 = call i32 @complete(i32* @ac97_completion)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
