; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, %struct.aic3x_priv* }
%struct.aic3x_priv = type { i32 }

@AIC3X_PLL_PROGA_REG = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@LINE1L_2_LADC_CTRL = common dso_local global i32 0, align 4
@LADC_PWR_ON = common dso_local global i32 0, align 4
@LINE1R_2_RADC_CTRL = common dso_local global i32 0, align 4
@RADC_PWR_ON = common dso_local global i32 0, align 4
@DAC_PWR = common dso_local global i32 0, align 4
@LDAC_PWR_ON = common dso_local global i32 0, align 4
@RDAC_PWR_ON = common dso_local global i32 0, align 4
@HPLOUT_CTRL = common dso_local global i32 0, align 4
@HPLOUT_PWR_ON = common dso_local global i32 0, align 4
@HPROUT_CTRL = common dso_local global i32 0, align 4
@HPROUT_PWR_ON = common dso_local global i32 0, align 4
@HPLCOM_CTRL = common dso_local global i32 0, align 4
@HPLCOM_PWR_ON = common dso_local global i32 0, align 4
@HPRCOM_CTRL = common dso_local global i32 0, align 4
@HPRCOM_PWR_ON = common dso_local global i32 0, align 4
@MONOLOPM_CTRL = common dso_local global i32 0, align 4
@MONOLOPM_PWR_ON = common dso_local global i32 0, align 4
@LLOPM_CTRL = common dso_local global i32 0, align 4
@LLOPM_PWR_ON = common dso_local global i32 0, align 4
@RLOPM_CTRL = common dso_local global i32 0, align 4
@RLOPM_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @aic3x_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aic3x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 1
  %9 = load %struct.aic3x_priv*, %struct.aic3x_priv** %8, align 8
  store %struct.aic3x_priv* %9, %struct.aic3x_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %164 [
    i32 130, label %11
    i32 129, label %27
    i32 128, label %28
    i32 131, label %45
  ]

11:                                               ; preds = %2
  %12 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %13 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %19 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %21 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PLL_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @aic3x_write(%struct.snd_soc_codec* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %16, %11
  br label %164

27:                                               ; preds = %2
  br label %164

28:                                               ; preds = %2
  %29 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %30 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %35 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %36 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %38 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @PLL_ENABLE, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @aic3x_write(%struct.snd_soc_codec* %37, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %33, %28
  br label %164

45:                                               ; preds = %2
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %47 = load i32, i32* @LINE1L_2_LADC_CTRL, align 4
  %48 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %50 = load i32, i32* @LINE1L_2_LADC_CTRL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @LADC_PWR_ON, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @aic3x_write(%struct.snd_soc_codec* %49, i32 %50, i32 %54)
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %57 = load i32, i32* @LINE1R_2_RADC_CTRL, align 4
  %58 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %60 = load i32, i32* @LINE1R_2_RADC_CTRL, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @RADC_PWR_ON, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @aic3x_write(%struct.snd_soc_codec* %59, i32 %60, i32 %64)
  %66 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %67 = load i32, i32* @DAC_PWR, align 4
  %68 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %70 = load i32, i32* @DAC_PWR, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @LDAC_PWR_ON, align 4
  %73 = load i32, i32* @RDAC_PWR_ON, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %71, %75
  %77 = call i32 @aic3x_write(%struct.snd_soc_codec* %69, i32 %70, i32 %76)
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %79 = load i32, i32* @HPLOUT_CTRL, align 4
  %80 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %82 = load i32, i32* @HPLOUT_CTRL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @HPLOUT_PWR_ON, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @aic3x_write(%struct.snd_soc_codec* %81, i32 %82, i32 %86)
  %88 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %89 = load i32, i32* @HPROUT_CTRL, align 4
  %90 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %92 = load i32, i32* @HPROUT_CTRL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @HPROUT_PWR_ON, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = call i32 @aic3x_write(%struct.snd_soc_codec* %91, i32 %92, i32 %96)
  %98 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %99 = load i32, i32* @HPLCOM_CTRL, align 4
  %100 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %102 = load i32, i32* @HPLCOM_CTRL, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @HPLCOM_PWR_ON, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = call i32 @aic3x_write(%struct.snd_soc_codec* %101, i32 %102, i32 %106)
  %108 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %109 = load i32, i32* @HPRCOM_CTRL, align 4
  %110 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %112 = load i32, i32* @HPRCOM_CTRL, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @HPRCOM_PWR_ON, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = call i32 @aic3x_write(%struct.snd_soc_codec* %111, i32 %112, i32 %116)
  %118 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %119 = load i32, i32* @MONOLOPM_CTRL, align 4
  %120 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %122 = load i32, i32* @MONOLOPM_CTRL, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @MONOLOPM_PWR_ON, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = call i32 @aic3x_write(%struct.snd_soc_codec* %121, i32 %122, i32 %126)
  %128 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %129 = load i32, i32* @LLOPM_CTRL, align 4
  %130 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %132 = load i32, i32* @LLOPM_CTRL, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @LLOPM_PWR_ON, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = call i32 @aic3x_write(%struct.snd_soc_codec* %131, i32 %132, i32 %136)
  %138 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %139 = load i32, i32* @RLOPM_CTRL, align 4
  %140 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %142 = load i32, i32* @RLOPM_CTRL, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @RLOPM_PWR_ON, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = call i32 @aic3x_write(%struct.snd_soc_codec* %141, i32 %142, i32 %146)
  %148 = load %struct.aic3x_priv*, %struct.aic3x_priv** %5, align 8
  %149 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %45
  %153 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %154 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %155 = call i32 @aic3x_read_reg_cache(%struct.snd_soc_codec* %153, i32 %154)
  store i32 %155, i32* %6, align 4
  %156 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %157 = load i32, i32* @AIC3X_PLL_PROGA_REG, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @PLL_ENABLE, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = call i32 @aic3x_write(%struct.snd_soc_codec* %156, i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %152, %45
  br label %164

164:                                              ; preds = %2, %163, %44, %27, %26
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %167 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  ret i32 0
}

declare dso_local i32 @aic3x_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @aic3x_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
