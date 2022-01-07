; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.cs4270_private* }
%struct.cs4270_private = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid dai format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs4270_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.cs4270_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  store %struct.snd_soc_codec* %10, %struct.snd_soc_codec** %5, align 8
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 1
  %13 = load %struct.cs4270_private*, %struct.cs4270_private** %12, align 8
  store %struct.cs4270_private* %13, %struct.cs4270_private** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.cs4270_private*, %struct.cs4270_private** %6, align 8
  %22 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %40 [
    i32 130, label %34
    i32 131, label %37
  ]

34:                                               ; preds = %30
  %35 = load %struct.cs4270_private*, %struct.cs4270_private** %6, align 8
  %36 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %43

37:                                               ; preds = %30
  %38 = load %struct.cs4270_private*, %struct.cs4270_private** %6, align 8
  %39 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %37, %34
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
