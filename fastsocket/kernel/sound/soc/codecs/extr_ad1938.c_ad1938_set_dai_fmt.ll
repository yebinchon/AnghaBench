; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ad1938.c_ad1938_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)* }

@AD1938_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD1938_DAC_CTRL1 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_SERFMT_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_SERFMT_TDM = common dso_local global i32 0, align 4
@AD1938_ADC_SERFMT_AUX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_LEFT_HIGH = common dso_local global i32 0, align 4
@AD1938_ADC_BCLK_INV = common dso_local global i32 0, align 4
@AD1938_DAC_LEFT_HIGH = common dso_local global i32 0, align 4
@AD1938_DAC_BCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@AD1938_ADC_LCR_MASTER = common dso_local global i32 0, align 4
@AD1938_ADC_BCLK_MASTER = common dso_local global i32 0, align 4
@AD1938_DAC_LCR_MASTER = common dso_local global i32 0, align 4
@AD1938_DAC_BCLK_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ad1938_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1938_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 0
  %14 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %13, align 8
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %16 = load i32, i32* @AD1938_ADC_CTRL2, align 4
  %17 = call i32 %14(%struct.snd_soc_codec* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 0
  %20 = load i32 (%struct.snd_soc_codec*, i32)*, i32 (%struct.snd_soc_codec*, i32)** %19, align 8
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %22 = load i32, i32* @AD1938_DAC_CTRL1, align 4
  %23 = call i32 %20(%struct.snd_soc_codec* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %43 [
    i32 132, label %27
    i32 133, label %35
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @AD1938_ADC_SERFMT_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @AD1938_ADC_SERFMT_TDM, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %46

35:                                               ; preds = %2
  %36 = load i32, i32* @AD1938_ADC_SERFMT_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @AD1938_ADC_SERFMT_AUX, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %195

46:                                               ; preds = %35, %27
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %110 [
    i32 128, label %50
    i32 129, label %67
    i32 130, label %82
    i32 131, label %97
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @AD1938_ADC_LEFT_HIGH, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @AD1938_ADC_BCLK_INV, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @AD1938_DAC_LEFT_HIGH, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @AD1938_DAC_BCLK_INV, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %113

67:                                               ; preds = %46
  %68 = load i32, i32* @AD1938_ADC_LEFT_HIGH, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @AD1938_ADC_BCLK_INV, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @AD1938_DAC_LEFT_HIGH, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @AD1938_DAC_BCLK_INV, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %113

82:                                               ; preds = %46
  %83 = load i32, i32* @AD1938_ADC_LEFT_HIGH, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @AD1938_ADC_BCLK_INV, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* @AD1938_DAC_LEFT_HIGH, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @AD1938_DAC_BCLK_INV, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %113

97:                                               ; preds = %46
  %98 = load i32, i32* @AD1938_ADC_LEFT_HIGH, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @AD1938_ADC_BCLK_INV, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @AD1938_DAC_LEFT_HIGH, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @AD1938_DAC_BCLK_INV, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  br label %113

110:                                              ; preds = %46
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %195

113:                                              ; preds = %97, %82, %67, %50
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %116 = and i32 %114, %115
  switch i32 %116, label %177 [
    i32 137, label %117
    i32 135, label %130
    i32 136, label %145
    i32 134, label %160
  ]

117:                                              ; preds = %113
  %118 = load i32, i32* @AD1938_ADC_LCR_MASTER, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @AD1938_ADC_BCLK_MASTER, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @AD1938_DAC_LCR_MASTER, align 4
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @AD1938_DAC_BCLK_MASTER, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %180

130:                                              ; preds = %113
  %131 = load i32, i32* @AD1938_ADC_LCR_MASTER, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @AD1938_ADC_BCLK_MASTER, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* @AD1938_DAC_LCR_MASTER, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @AD1938_DAC_BCLK_MASTER, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %180

145:                                              ; preds = %113
  %146 = load i32, i32* @AD1938_ADC_LCR_MASTER, align 4
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @AD1938_ADC_BCLK_MASTER, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @AD1938_DAC_LCR_MASTER, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @AD1938_DAC_BCLK_MASTER, align 4
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %8, align 4
  br label %180

160:                                              ; preds = %113
  %161 = load i32, i32* @AD1938_ADC_LCR_MASTER, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @AD1938_ADC_BCLK_MASTER, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %7, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* @AD1938_DAC_LCR_MASTER, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %8, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @AD1938_DAC_BCLK_MASTER, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %8, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %180

177:                                              ; preds = %113
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %195

180:                                              ; preds = %160, %145, %130, %117
  %181 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %182 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %181, i32 0, i32 1
  %183 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %182, align 8
  %184 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %185 = load i32, i32* @AD1938_ADC_CTRL2, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 %183(%struct.snd_soc_codec* %184, i32 %185, i32 %186)
  %188 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %189 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %188, i32 0, i32 1
  %190 = load i32 (%struct.snd_soc_codec*, i32, i32)*, i32 (%struct.snd_soc_codec*, i32, i32)** %189, align 8
  %191 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %6, align 8
  %192 = load i32, i32* @AD1938_DAC_CTRL1, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 %190(%struct.snd_soc_codec* %191, i32 %192, i32 %193)
  store i32 0, i32* %3, align 4
  br label %195

195:                                              ; preds = %180, %177, %110, %43
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
