; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8903.c_wm8903_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.i2c_client*, %struct.wm8903_priv* }
%struct.i2c_client = type { i32 }
%struct.wm8903_priv = type { i32, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@WM8903_AUDIO_INTERFACE_1 = common dso_local global i32 0, align 4
@WM8903_AUDIO_INTERFACE_2 = common dso_local global i32 0, align 4
@WM8903_AUDIO_INTERFACE_3 = common dso_local global i32 0, align 4
@WM8903_CLOCK_RATES_0 = common dso_local global i32 0, align 4
@WM8903_CLOCK_RATES_1 = common dso_local global i32 0, align 4
@WM8903_DAC_DIGITAL_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Ignoring hw_params for slave substream\0A\00", align 1
@WM8903_DAC_SB_FILT = common dso_local global i32 0, align 4
@sample_rates = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%dHz unsupported by ADC\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"DSP fs = %dHz\0A\00", align 1
@WM8903_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@WM8903_AIF_WL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"MCLK = %dHz, target sample rate = %dHz\0A\00", align 1
@clk_sys_ratios = common dso_local global %struct.TYPE_7__* null, align 8
@WM8903_MCLKDIV2 = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_RATE_MASK = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_MODE_MASK = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_RATE_SHIFT = common dso_local global i32 0, align 4
@WM8903_CLK_SYS_MODE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"CLK_SYS_RATE=%x, CLK_SYS_MODE=%x div=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Actual CLK_SYS = %dHz\0A\00", align 1
@bclk_divs = common dso_local global %struct.TYPE_7__* null, align 8
@WM8903_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@WM8903_LRCLK_RATE_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"BCLK ratio %d for %dHz - actual BCLK = %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8903_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.wm8903_priv*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %29, align 8
  store %struct.snd_soc_pcm_runtime* %30, %struct.snd_soc_pcm_runtime** %8, align 8
  %31 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %32 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %31, i32 0, i32 0
  %33 = load %struct.snd_soc_device*, %struct.snd_soc_device** %32, align 8
  store %struct.snd_soc_device* %33, %struct.snd_soc_device** %9, align 8
  %34 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %35 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %37, align 8
  store %struct.snd_soc_codec* %38, %struct.snd_soc_codec** %10, align 8
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 1
  %41 = load %struct.wm8903_priv*, %struct.wm8903_priv** %40, align 8
  store %struct.wm8903_priv* %41, %struct.wm8903_priv** %11, align 8
  %42 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %43 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %42, i32 0, i32 0
  %44 = load %struct.i2c_client*, %struct.i2c_client** %43, align 8
  store %struct.i2c_client* %44, %struct.i2c_client** %12, align 8
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_rate(%struct.snd_pcm_hw_params* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %48 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %49 = call i32 @snd_soc_read(%struct.snd_soc_codec* %47, i32 %48)
  store i32 %49, i32* %22, align 4
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %51 = load i32, i32* @WM8903_AUDIO_INTERFACE_2, align 4
  %52 = call i32 @snd_soc_read(%struct.snd_soc_codec* %50, i32 %51)
  store i32 %52, i32* %23, align 4
  %53 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %54 = load i32, i32* @WM8903_AUDIO_INTERFACE_3, align 4
  %55 = call i32 @snd_soc_read(%struct.snd_soc_codec* %53, i32 %54)
  store i32 %55, i32* %24, align 4
  %56 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %57 = load i32, i32* @WM8903_CLOCK_RATES_0, align 4
  %58 = call i32 @snd_soc_read(%struct.snd_soc_codec* %56, i32 %57)
  store i32 %58, i32* %25, align 4
  %59 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %60 = load i32, i32* @WM8903_CLOCK_RATES_1, align 4
  %61 = call i32 @snd_soc_read(%struct.snd_soc_codec* %59, i32 %60)
  store i32 %61, i32* %26, align 4
  %62 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %63 = load i32, i32* @WM8903_DAC_DIGITAL_1, align 4
  %64 = call i32 @snd_soc_read(%struct.snd_soc_codec* %62, i32 %63)
  store i32 %64, i32* %27, align 4
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %66 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %67 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %66, i32 0, i32 2
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %67, align 8
  %69 = icmp eq %struct.snd_pcm_substream* %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %3
  %71 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %429

74:                                               ; preds = %3
  %75 = load i32, i32* %13, align 4
  %76 = icmp sle i32 %75, 24000
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @WM8903_DAC_SB_FILT, align 4
  %79 = load i32, i32* %27, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %27, align 4
  br label %86

81:                                               ; preds = %74
  %82 = load i32, i32* @WM8903_DAC_SB_FILT, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %27, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %27, align 4
  br label %86

86:                                               ; preds = %81, %77
  store i32 0, i32* %17, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  %95 = call i32 @abs(i32 %94) #3
  store i32 %95, i32* %19, align 4
  store i32 1, i32* %16, align 4
  br label %96

96:                                               ; preds = %118, %86
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %99 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %98)
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  %110 = call i32 @abs(i32 %109) #3
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %20, align 4
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %114, %101
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %96

121:                                              ; preds = %96
  %122 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %123 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %140 [
    i32 88200, label %133
    i32 96000, label %133
  ]

133:                                              ; preds = %126, %126
  %134 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %429

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141, %121
  %143 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @WM8903_SAMPLE_RATE_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %26, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %26, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sample_rates, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %26, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %26, align 4
  %164 = load i32, i32* @WM8903_AIF_WL_MASK, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %22, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %13, align 4
  %169 = mul nsw i32 2, %168
  store i32 %169, i32* %14, align 4
  %170 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %171 = call i32 @params_format(%struct.snd_pcm_hw_params* %170)
  switch i32 %171, label %190 [
    i32 131, label %172
    i32 130, label %175
    i32 129, label %180
    i32 128, label %185
  ]

172:                                              ; preds = %142
  %173 = load i32, i32* %14, align 4
  %174 = mul nsw i32 %173, 16
  store i32 %174, i32* %14, align 4
  br label %193

175:                                              ; preds = %142
  %176 = load i32, i32* %14, align 4
  %177 = mul nsw i32 %176, 20
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %22, align 4
  %179 = or i32 %178, 4
  store i32 %179, i32* %22, align 4
  br label %193

180:                                              ; preds = %142
  %181 = load i32, i32* %14, align 4
  %182 = mul nsw i32 %181, 24
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %22, align 4
  %184 = or i32 %183, 8
  store i32 %184, i32* %22, align 4
  br label %193

185:                                              ; preds = %142
  %186 = load i32, i32* %14, align 4
  %187 = mul nsw i32 %186, 32
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %22, align 4
  %189 = or i32 %188, 12
  store i32 %189, i32* %22, align 4
  br label %193

190:                                              ; preds = %142
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %4, align 4
  br label %429

193:                                              ; preds = %185, %180, %175, %172
  %194 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %197 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %199)
  store i32 0, i32* %18, align 4
  %201 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %202 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %207, %211
  %213 = sdiv i32 %203, %212
  %214 = load i32, i32* %13, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 @abs(i32 %215) #3
  store i32 %216, i32* %19, align 4
  store i32 1, i32* %16, align 4
  br label %217

217:                                              ; preds = %250, %193
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %220 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %219)
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %253

222:                                              ; preds = %217
  %223 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %224 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %231, %237
  %239 = sdiv i32 %225, %238
  %240 = load i32, i32* %13, align 4
  %241 = sub nsw i32 %239, %240
  %242 = call i32 @abs(i32 %241) #3
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %20, align 4
  %244 = load i32, i32* %19, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %222
  %247 = load i32, i32* %16, align 4
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %20, align 4
  store i32 %248, i32* %19, align 4
  br label %249

249:                                              ; preds = %246, %222
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  br label %217

253:                                              ; preds = %217
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %269

261:                                              ; preds = %253
  %262 = load i32, i32* @WM8903_MCLKDIV2, align 4
  %263 = load i32, i32* %25, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %25, align 4
  %265 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %266 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sdiv i32 %267, 2
  store i32 %268, i32* %21, align 4
  br label %277

269:                                              ; preds = %253
  %270 = load i32, i32* @WM8903_MCLKDIV2, align 4
  %271 = xor i32 %270, -1
  %272 = load i32, i32* %25, align 4
  %273 = and i32 %272, %271
  store i32 %273, i32* %25, align 4
  %274 = load %struct.wm8903_priv*, %struct.wm8903_priv** %11, align 8
  %275 = getelementptr inbounds %struct.wm8903_priv, %struct.wm8903_priv* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %21, align 4
  br label %277

277:                                              ; preds = %269, %261
  %278 = load i32, i32* @WM8903_CLK_SYS_RATE_MASK, align 4
  %279 = load i32, i32* @WM8903_CLK_SYS_MODE_MASK, align 4
  %280 = or i32 %278, %279
  %281 = xor i32 %280, -1
  %282 = load i32, i32* %26, align 4
  %283 = and i32 %282, %281
  store i32 %283, i32* %26, align 4
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @WM8903_CLK_SYS_RATE_SHIFT, align 4
  %291 = shl i32 %289, %290
  %292 = load i32, i32* %26, align 4
  %293 = or i32 %292, %291
  store i32 %293, i32* %26, align 4
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @WM8903_CLK_SYS_MODE_SHIFT, align 4
  %301 = shl i32 %299, %300
  %302 = load i32, i32* %26, align 4
  %303 = or i32 %302, %301
  store i32 %303, i32* %26, align 4
  %304 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %305 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %304, i32 0, i32 0
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %313 = load i32, i32* %18, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** @clk_sys_ratios, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %305, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %311, i32 %317, i32 %323)
  %325 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %326 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %325, i32 0, i32 0
  %327 = load i32, i32* %21, align 4
  %328 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %327)
  store i32 0, i32* %15, align 4
  %329 = load i32, i32* %21, align 4
  %330 = mul nsw i32 %329, 10
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i64 0
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = sdiv i32 %330, %334
  %336 = load i32, i32* %14, align 4
  %337 = sub nsw i32 %335, %336
  store i32 %337, i32* %19, align 4
  store i32 1, i32* %16, align 4
  br label %338

338:                                              ; preds = %358, %277
  %339 = load i32, i32* %16, align 4
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %341 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %340)
  %342 = icmp slt i32 %339, %341
  br i1 %342, label %343, label %363

343:                                              ; preds = %338
  %344 = load i32, i32* %21, align 4
  %345 = mul nsw i32 %344, 10
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %347 = load i32, i32* %16, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = sdiv i32 %345, %351
  %353 = load i32, i32* %14, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %20, align 4
  %355 = load i32, i32* %20, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %343
  br label %363

358:                                              ; preds = %343
  %359 = load i32, i32* %16, align 4
  store i32 %359, i32* %15, align 4
  %360 = load i32, i32* %20, align 4
  store i32 %360, i32* %19, align 4
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %16, align 4
  br label %338

363:                                              ; preds = %357, %338
  %364 = load i32, i32* @WM8903_BCLK_DIV_MASK, align 4
  %365 = xor i32 %364, -1
  %366 = load i32, i32* %23, align 4
  %367 = and i32 %366, %365
  store i32 %367, i32* %23, align 4
  %368 = load i32, i32* @WM8903_LRCLK_RATE_MASK, align 4
  %369 = xor i32 %368, -1
  %370 = load i32, i32* %24, align 4
  %371 = and i32 %370, %369
  store i32 %371, i32* %24, align 4
  %372 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %373 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %372, i32 0, i32 0
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = sdiv i32 %379, 10
  %381 = load i32, i32* %14, align 4
  %382 = load i32, i32* %21, align 4
  %383 = mul nsw i32 %382, 10
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %385 = load i32, i32* %15, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = sdiv i32 %383, %389
  %391 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %373, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %380, i32 %381, i32 %390)
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bclk_divs, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %23, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %23, align 4
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* %13, align 4
  %402 = sdiv i32 %400, %401
  %403 = load i32, i32* %24, align 4
  %404 = or i32 %403, %402
  store i32 %404, i32* %24, align 4
  %405 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %406 = load i32, i32* @WM8903_CLOCK_RATES_0, align 4
  %407 = load i32, i32* %25, align 4
  %408 = call i32 @snd_soc_write(%struct.snd_soc_codec* %405, i32 %406, i32 %407)
  %409 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %410 = load i32, i32* @WM8903_CLOCK_RATES_1, align 4
  %411 = load i32, i32* %26, align 4
  %412 = call i32 @snd_soc_write(%struct.snd_soc_codec* %409, i32 %410, i32 %411)
  %413 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %414 = load i32, i32* @WM8903_AUDIO_INTERFACE_1, align 4
  %415 = load i32, i32* %22, align 4
  %416 = call i32 @snd_soc_write(%struct.snd_soc_codec* %413, i32 %414, i32 %415)
  %417 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %418 = load i32, i32* @WM8903_AUDIO_INTERFACE_2, align 4
  %419 = load i32, i32* %23, align 4
  %420 = call i32 @snd_soc_write(%struct.snd_soc_codec* %417, i32 %418, i32 %419)
  %421 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %422 = load i32, i32* @WM8903_AUDIO_INTERFACE_3, align 4
  %423 = load i32, i32* %24, align 4
  %424 = call i32 @snd_soc_write(%struct.snd_soc_codec* %421, i32 %422, i32 %423)
  %425 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %426 = load i32, i32* @WM8903_DAC_DIGITAL_1, align 4
  %427 = load i32, i32* %27, align 4
  %428 = call i32 @snd_soc_write(%struct.snd_soc_codec* %425, i32 %426, i32 %427)
  store i32 0, i32* %4, align 4
  br label %429

429:                                              ; preds = %363, %190, %133, %70
  %430 = load i32, i32* %4, align 4
  ret i32 %430
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
