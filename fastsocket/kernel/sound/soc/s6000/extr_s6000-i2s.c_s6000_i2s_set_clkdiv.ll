; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-i2s.c_s6000_i2s_set_clkdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-i2s.c_s6000_i2s_set_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.s6000_i2s_dev* }
%struct.s6000_i2s_dev = type { i32 }

@S6_I2S_DIV_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @s6000_i2s_set_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_i2s_set_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s6000_i2s_dev*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.s6000_i2s_dev*, %struct.s6000_i2s_dev** %10, align 8
  store %struct.s6000_i2s_dev* %11, %struct.s6000_i2s_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @S6_I2S_DIV_MASK, align 4
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 2
  %23 = icmp sgt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %14, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load %struct.s6000_i2s_dev*, %struct.s6000_i2s_dev** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @S6_I2S_INTERFACE_CFG(i32 %29)
  %31 = load i32, i32* @S6_I2S_DIV_MASK, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %32, 2
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @s6_i2s_mod_reg(%struct.s6000_i2s_dev* %28, i32 %30, i32 %31, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %24
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @s6_i2s_mod_reg(%struct.s6000_i2s_dev*, i32, i32, i32) #1

declare dso_local i32 @S6_I2S_INTERFACE_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
