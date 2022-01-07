; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@TWL4030_REG_AUDIO_IF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TWL4030_AIF_SLAVE_EN = common dso_local global i32 0, align 4
@TWL4030_CLK256FS_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT_CODEC = common dso_local global i32 0, align 4
@TWL4030_AIF_FORMAT_TDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @twl4030_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %6, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %13 = load i32, i32* @TWL4030_REG_AUDIO_IF, align 4
  %14 = call i32 @twl4030_read_reg_cache(%struct.snd_soc_codec* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %35 [
    i32 131, label %19
    i32 130, label %28
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @TWL4030_AIF_SLAVE_EN, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @TWL4030_CLK256FS_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load i32, i32* @TWL4030_AIF_SLAVE_EN, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @TWL4030_CLK256FS_EN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %28, %19
  %39 = load i32, i32* @TWL4030_AIF_FORMAT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %54 [
    i32 128, label %46
    i32 129, label %50
  ]

46:                                               ; preds = %38
  %47 = load i32, i32* @TWL4030_AIF_FORMAT_CODEC, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %57

50:                                               ; preds = %38
  %51 = load i32, i32* @TWL4030_AIF_FORMAT_TDM, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %57

54:                                               ; preds = %38
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %71

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %63 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %62, i32 0)
  %64 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %65 = load i32, i32* @TWL4030_REG_AUDIO_IF, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @twl4030_write(%struct.snd_soc_codec* %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %69 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %68, i32 1)
  br label %70

70:                                               ; preds = %61, %57
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %54, %35
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_codec_enable(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
