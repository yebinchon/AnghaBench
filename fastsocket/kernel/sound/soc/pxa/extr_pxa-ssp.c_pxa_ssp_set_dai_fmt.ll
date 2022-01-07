; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.ssp_priv* }
%struct.ssp_priv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ssp_device* }
%struct.ssp_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"can't change hardware dai format: stream is in use\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SSCR0_ECS = common dso_local global i32 0, align 4
@SSCR0_NCS = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR0_ACS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SSCR1_SCLKDIR = common dso_local global i32 0, align 4
@SSCR1_SFRMDIR = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SSPSP_SFRMP = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSCR0_PSP = common dso_local global i32 0, align 4
@SSCR1_RWOT = common dso_local global i32 0, align 4
@SSCR1_TRAIL = common dso_local global i32 0, align 4
@SSPSP_FSRT = common dso_local global i32 0, align 4
@SSCR1 = common dso_local global i32 0, align 4
@SSPSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pxa_ssp_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssp_priv*, align 8
  %7 = alloca %struct.ssp_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.ssp_priv*, %struct.ssp_priv** %12, align 8
  store %struct.ssp_priv* %13, %struct.ssp_priv** %6, align 8
  %14 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ssp_device*, %struct.ssp_device** %16, align 8
  store %struct.ssp_device* %17, %struct.ssp_device** %7, align 8
  %18 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

24:                                               ; preds = %2
  %25 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %26 = load i32, i32* @SSCR0, align 4
  %27 = call i32 @ssp_read_reg(%struct.ssp_device* %25, i32 %26)
  %28 = load i32, i32* @SSCR0_SSE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %33 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %142

39:                                               ; preds = %24
  %40 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %41 = load i32, i32* @SSCR0, align 4
  %42 = call i32 @ssp_read_reg(%struct.ssp_device* %40, i32 %41)
  %43 = load i32, i32* @SSCR0_ECS, align 4
  %44 = load i32, i32* @SSCR0_NCS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SSCR0_MOD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SSCR0_ACS, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %42, %49
  store i32 %50, i32* %8, align 4
  %51 = call i32 @SSCR1_RxTresh(i32 8)
  %52 = call i32 @SSCR1_TxTresh(i32 7)
  %53 = or i32 %51, %52
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %56 = and i32 %54, %55
  switch i32 %56, label %68 [
    i32 137, label %57
    i32 136, label %63
    i32 135, label %67
  ]

57:                                               ; preds = %39
  %58 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %59 = load i32, i32* @SSCR1_SFRMDIR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %39
  %64 = load i32, i32* @SSCR1_SCLKDIR, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %39
  br label %71

68:                                               ; preds = %39
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %142

71:                                               ; preds = %67, %63, %57
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %74 = and i32 %72, %73
  switch i32 %74, label %90 [
    i32 128, label %75
    i32 129, label %79
    i32 131, label %80
    i32 130, label %84
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @SSPSP_SFRMP, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %93

79:                                               ; preds = %71
  br label %93

80:                                               ; preds = %71
  %81 = call i32 @SSPSP_SCMODE(i32 2)
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %93

84:                                               ; preds = %71
  %85 = call i32 @SSPSP_SCMODE(i32 2)
  %86 = load i32, i32* @SSPSP_SFRMP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %93

90:                                               ; preds = %71
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %142

93:                                               ; preds = %84, %80, %79, %75
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %96 = and i32 %94, %95
  switch i32 %96, label %121 [
    i32 132, label %97
    i32 134, label %106
    i32 133, label %110
  ]

97:                                               ; preds = %93
  %98 = load i32, i32* @SSCR0_PSP, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @SSCR1_RWOT, align 4
  %102 = load i32, i32* @SSCR1_TRAIL, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %124

106:                                              ; preds = %93
  %107 = load i32, i32* @SSPSP_FSRT, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %93, %106
  %111 = load i32, i32* @SSCR0_MOD, align 4
  %112 = load i32, i32* @SSCR0_PSP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @SSCR1_TRAIL, align 4
  %117 = load i32, i32* @SSCR1_RWOT, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %124

121:                                              ; preds = %93
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %142

124:                                              ; preds = %110, %97
  %125 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %126 = load i32, i32* @SSCR0, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @ssp_write_reg(%struct.ssp_device* %125, i32 %126, i32 %127)
  %129 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %130 = load i32, i32* @SSCR1, align 4
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @ssp_write_reg(%struct.ssp_device* %129, i32 %130, i32 %131)
  %133 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %134 = load i32, i32* @SSPSP, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @ssp_write_reg(%struct.ssp_device* %133, i32 %134, i32 %135)
  %137 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %138 = call i32 @dump_registers(%struct.ssp_device* %137)
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.ssp_priv*, %struct.ssp_priv** %6, align 8
  %141 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %124, %121, %90, %68, %31, %23
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @SSCR1_RxTresh(i32) #1

declare dso_local i32 @SSCR1_TxTresh(i32) #1

declare dso_local i32 @SSPSP_SCMODE(i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
