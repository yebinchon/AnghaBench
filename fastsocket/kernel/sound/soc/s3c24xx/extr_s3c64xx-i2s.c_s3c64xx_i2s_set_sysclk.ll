; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s3c24xx/extr_s3c64xx-i2s.c_s3c64xx_i2s_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.s3c_i2sv2_info = type { i64 }

@S3C2412_IISMOD = common dso_local global i64 0, align 8
@S3C64XX_IISMOD_IMS_SYSMUX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @s3c64xx_i2s_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_i2s_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s3c_i2sv2_info*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = call %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai* %12)
  store %struct.s3c_i2sv2_info* %13, %struct.s3c_i2sv2_info** %10, align 8
  %14 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %10, align 8
  %15 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S3C2412_IISMOD, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
    i32 129, label %26
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @S3C64XX_IISMOD_IMS_SYSMUX, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %11, align 4
  br label %33

26:                                               ; preds = %4
  %27 = load i32, i32* @S3C64XX_IISMOD_IMS_SYSMUX, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.s3c_i2sv2_info*, %struct.s3c_i2sv2_info** %10, align 8
  %36 = getelementptr inbounds %struct.s3c_i2sv2_info, %struct.s3c_i2sv2_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @S3C2412_IISMOD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.s3c_i2sv2_info* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
