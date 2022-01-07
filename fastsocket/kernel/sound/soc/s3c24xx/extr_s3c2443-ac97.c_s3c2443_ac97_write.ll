; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c2443-ac97.c_s3c2443_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.snd_ac97 = type { i32 }

@ac97_mutex = common dso_local global i32 0, align 4
@S3C_AC97_GLBSTAT_CODECREADY = common dso_local global i32 0, align 4
@codec_ready = common dso_local global i32 0, align 4
@s3c24xx_ac97 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@S3C_AC97_CODEC_CMD = common dso_local global i64 0, align 8
@S3C_AC97_GLBCTRL = common dso_local global i64 0, align 8
@S3C_AC97_GLBCTRL_CODECREADYIE = common dso_local global i32 0, align 4
@ac97_completion = common dso_local global i32 0, align 4
@S3C_AC97_CODEC_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @s3c2443_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2443_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = call i32 @mutex_lock(i32* @ac97_mutex)
  %10 = load i32, i32* @S3C_AC97_GLBSTAT_CODECREADY, align 4
  store i32 %10, i32* @codec_ready, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %12 = load i64, i64* @S3C_AC97_CODEC_CMD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i16, i16* %5, align 2
  %16 = call i32 @AC_CMD_ADDR(i16 zeroext %15)
  %17 = load i16, i16* %6, align 2
  %18 = call i32 @AC_CMD_DATA(i16 zeroext %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %22 = load i64, i64* @S3C_AC97_CODEC_CMD, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  %25 = call i32 @udelay(i32 50)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %27 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @S3C_AC97_GLBCTRL_CODECREADYIE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %35 = load i64, i64* @S3C_AC97_GLBCTRL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %33, i64 %36)
  %38 = call i32 @wait_for_completion(i32* @ac97_completion)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %40 = load i64, i64* @S3C_AC97_CODEC_CMD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @S3C_AC97_CODEC_CMD_READ, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s3c24xx_ac97, i32 0, i32 0), align 8
  %48 = load i64, i64* @S3C_AC97_CODEC_CMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %46, i64 %49)
  %51 = call i32 @mutex_unlock(i32* @ac97_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @AC_CMD_ADDR(i16 zeroext) #1

declare dso_local i32 @AC_CMD_DATA(i16 zeroext) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
