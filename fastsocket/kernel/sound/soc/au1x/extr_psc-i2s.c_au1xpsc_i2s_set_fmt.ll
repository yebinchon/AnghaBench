; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xpsc_audio_data = type { i64 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_i2s_workdata = common dso_local global %struct.au1xpsc_audio_data* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PSC_I2SCFG_XM = common dso_local global i64 0, align 8
@PSC_I2SCFG_MLJ = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@PSC_I2SCFG_BI = common dso_local global i64 0, align 8
@PSC_I2SCFG_WI = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PSC_I2SCFG_MS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @au1xpsc_i2s_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1xpsc_i2s_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1xpsc_audio_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** @au1xpsc_i2s_workdata, align 8
  store %struct.au1xpsc_audio_data* %8, %struct.au1xpsc_audio_data** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %12 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* @PSC_I2SCFG_XM, align 8
  %15 = load i64, i64* @PSC_I2SCFG_MLJ, align 8
  %16 = or i64 %14, %15
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %32 [
    i32 134, label %23
    i32 130, label %27
    i32 131, label %28
  ]

23:                                               ; preds = %2
  %24 = load i64, i64* @PSC_I2SCFG_XM, align 8
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %33

27:                                               ; preds = %2
  br label %33

28:                                               ; preds = %2
  %29 = load i64, i64* @PSC_I2SCFG_MLJ, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %33

32:                                               ; preds = %2
  br label %77

33:                                               ; preds = %28, %27, %23
  %34 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %35 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %36 = or i64 %34, %35
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %6, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %58 [
    i32 128, label %43
    i32 129, label %49
    i32 132, label %53
    i32 133, label %57
  ]

43:                                               ; preds = %33
  %44 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %45 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %59

49:                                               ; preds = %33
  %50 = load i64, i64* @PSC_I2SCFG_BI, align 8
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %59

53:                                               ; preds = %33
  %54 = load i64, i64* @PSC_I2SCFG_WI, align 8
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %59

57:                                               ; preds = %33
  br label %59

58:                                               ; preds = %33
  br label %77

59:                                               ; preds = %57, %53, %49, %43
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %72 [
    i32 136, label %63
    i32 135, label %67
  ]

63:                                               ; preds = %59
  %64 = load i64, i64* @PSC_I2SCFG_MS, align 8
  %65 = load i64, i64* %6, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %73

67:                                               ; preds = %59
  %68 = load i64, i64* @PSC_I2SCFG_MS, align 8
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %73

72:                                               ; preds = %59
  br label %77

73:                                               ; preds = %67, %63
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.au1xpsc_audio_data*, %struct.au1xpsc_audio_data** %5, align 8
  %76 = getelementptr inbounds %struct.au1xpsc_audio_data, %struct.au1xpsc_audio_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %72, %58, %32
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
