; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_dai = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.snd_soc_codec* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_soc_codec = type { i32, %struct.cs4270_private* }
%struct.cs4270_private = type { i32 }

@NUM_MCLK_RATIOS = common dso_local global i32 0, align 4
@cs4270_mode_ratios = common dso_local global %struct.TYPE_6__* null, align 8
@SNDRV_PCM_RATE_KNOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not find a valid sample rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @cs4270_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.cs4270_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 2
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %18, align 8
  store %struct.snd_soc_codec* %19, %struct.snd_soc_codec** %10, align 8
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %21 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %20, i32 0, i32 1
  %22 = load %struct.cs4270_private*, %struct.cs4270_private** %21, align 8
  store %struct.cs4270_private* %22, %struct.cs4270_private** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.cs4270_private*, %struct.cs4270_private** %11, align 8
  %25 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %55, %4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @NUM_MCLK_RATIOS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs4270_mode_ratios, align 8
  %33 = load i32, i32* %15, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %31, %37
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @snd_pcm_rate_to_rate_bit(i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %30
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %15, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* @SNDRV_PCM_RATE_KNOT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %67 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %97

72:                                               ; preds = %58
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 8
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %72, %65
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
