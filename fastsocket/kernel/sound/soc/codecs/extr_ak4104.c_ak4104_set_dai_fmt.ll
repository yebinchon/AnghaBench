; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ak4104.c_ak4104_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AK4104_REG_CONTROL1 = common dso_local global i32 0, align 4
@AK4104_CONTROL1_DIF0 = common dso_local global i32 0, align 4
@AK4104_CONTROL1_DIF1 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid dai format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ak4104_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4104_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %12 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %13 = call i32 @ak4104_read_reg_cache(%struct.snd_soc_codec* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load i32, i32* @AK4104_CONTROL1_DIF0, align 4
  %20 = load i32, i32* @AK4104_CONTROL1_DIF1, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %39 [
    i32 128, label %28
    i32 129, label %29
    i32 130, label %33
  ]

28:                                               ; preds = %18
  br label %46

29:                                               ; preds = %18
  %30 = load i32, i32* @AK4104_CONTROL1_DIF0, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %46

33:                                               ; preds = %18
  %34 = load i32, i32* @AK4104_CONTROL1_DIF0, align 4
  %35 = load i32, i32* @AK4104_CONTROL1_DIF1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %46

39:                                               ; preds = %18
  %40 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %60

46:                                               ; preds = %33, %29, %28
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %57 = load i32, i32* @AK4104_REG_CONTROL1, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ak4104_spi_write(%struct.snd_soc_codec* %56, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %52, %39, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ak4104_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ak4104_spi_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
