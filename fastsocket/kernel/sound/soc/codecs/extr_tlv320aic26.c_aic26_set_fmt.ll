; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.aic26* }
%struct.aic26 = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"aic26_set_fmt(dai=%p, fmt==%i)\0A\00", align 1
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"bad master\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AIC26_DATFM_I2S = common dso_local global i32 0, align 4
@AIC26_DATFM_DSP = common dso_local global i32 0, align 4
@AIC26_DATFM_RIGHTJ = common dso_local global i32 0, align 4
@AIC26_DATFM_LEFTJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bad format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @aic26_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca %struct.aic26*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %6, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 0
  %13 = load %struct.aic26*, %struct.aic26** %12, align 8
  store %struct.aic26* %13, %struct.aic26** %7, align 8
  %14 = load %struct.aic26*, %struct.aic26** %7, align 8
  %15 = getelementptr inbounds %struct.aic26, %struct.aic26* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.snd_soc_dai* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %30 [
    i32 133, label %24
    i32 132, label %27
  ]

24:                                               ; preds = %2
  %25 = load %struct.aic26*, %struct.aic26** %7, align 8
  %26 = getelementptr inbounds %struct.aic26, %struct.aic26* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.aic26*, %struct.aic26** %7, align 8
  %29 = getelementptr inbounds %struct.aic26, %struct.aic26* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.aic26*, %struct.aic26** %7, align 8
  %32 = getelementptr inbounds %struct.aic26, %struct.aic26* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %67

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %58 [
    i32 130, label %42
    i32 131, label %46
    i32 128, label %50
    i32 129, label %54
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @AIC26_DATFM_I2S, align 4
  %44 = load %struct.aic26*, %struct.aic26** %7, align 8
  %45 = getelementptr inbounds %struct.aic26, %struct.aic26* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %66

46:                                               ; preds = %38
  %47 = load i32, i32* @AIC26_DATFM_DSP, align 4
  %48 = load %struct.aic26*, %struct.aic26** %7, align 8
  %49 = getelementptr inbounds %struct.aic26, %struct.aic26* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  br label %66

50:                                               ; preds = %38
  %51 = load i32, i32* @AIC26_DATFM_RIGHTJ, align 4
  %52 = load %struct.aic26*, %struct.aic26** %7, align 8
  %53 = getelementptr inbounds %struct.aic26, %struct.aic26* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %66

54:                                               ; preds = %38
  %55 = load i32, i32* @AIC26_DATFM_LEFTJ, align 4
  %56 = load %struct.aic26*, %struct.aic26** %7, align 8
  %57 = getelementptr inbounds %struct.aic26, %struct.aic26* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %66

58:                                               ; preds = %38
  %59 = load %struct.aic26*, %struct.aic26** %7, align 8
  %60 = getelementptr inbounds %struct.aic26, %struct.aic26* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %54, %50, %46, %42
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %58, %30
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
