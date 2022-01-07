; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_voice_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_twl4030_voice_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@TWL4030_REG_VOICE_IF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@TWL4030_VIF_SLAVE_EN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@TWL4030_VIF_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @twl4030_voice_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_voice_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_codec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  store %struct.snd_soc_codec* %11, %struct.snd_soc_codec** %6, align 8
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %13 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %14 = call i64 @twl4030_read_reg_cache(%struct.snd_soc_codec* %12, i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %28 [
    i32 131, label %19
    i32 130, label %24
  ]

19:                                               ; preds = %2
  %20 = load i64, i64* @TWL4030_VIF_SLAVE_EN, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %8, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %8, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load i64, i64* @TWL4030_VIF_SLAVE_EN, align 8
  %26 = load i64, i64* %8, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %8, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %61

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %44 [
    i32 129, label %35
    i32 128, label %40
  ]

35:                                               ; preds = %31
  %36 = load i64, i64* @TWL4030_VIF_FORMAT, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %8, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %47

40:                                               ; preds = %31
  %41 = load i64, i64* @TWL4030_VIF_FORMAT, align 8
  %42 = load i64, i64* %8, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %40, %35
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %53 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %52, i32 0)
  %54 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %55 = load i32, i32* @TWL4030_REG_VOICE_IF, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @twl4030_write(%struct.snd_soc_codec* %54, i32 %55, i64 %56)
  %58 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %59 = call i32 @twl4030_codec_enable(%struct.snd_soc_codec* %58, i32 1)
  br label %60

60:                                               ; preds = %51, %47
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %44, %28
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @twl4030_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_codec_enable(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @twl4030_write(%struct.snd_soc_codec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
