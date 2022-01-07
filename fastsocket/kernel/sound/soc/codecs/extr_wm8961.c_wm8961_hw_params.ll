; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.wm8961_priv* }
%struct.wm8961_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"MCLK has not been specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm8961_srate = common dso_local global %struct.TYPE_4__* null, align 8
@WM8961_ADDITIONAL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8961_SAMPLE_RATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Selected SRATE %dHz for %dHz\0A\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"SYSCLK must be at least 64*fs for DAC\0A\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"SYSCLK must be at least 256*fs for ADC\0A\00", align 1
@wm8961_clk_sys_ratio = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Unable to generate CLK_SYS_RATE\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Selected CLK_SYS_RATE of %d for %d/%d=%d\0A\00", align 1
@WM8961_CLOCKING_4 = common dso_local global i32 0, align 4
@WM8961_CLK_SYS_RATE_MASK = common dso_local global i32 0, align 4
@WM8961_CLK_SYS_RATE_SHIFT = common dso_local global i32 0, align 4
@WM8961_AUDIO_INTERFACE_0 = common dso_local global i32 0, align 4
@WM8961_WL_MASK = common dso_local global i32 0, align 4
@WM8961_WL_SHIFT = common dso_local global i32 0, align 4
@WM8961_ADC_DAC_CONTROL_2 = common dso_local global i32 0, align 4
@WM8961_DACSLOPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8961_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_codec*, align 8
  %9 = alloca %struct.wm8961_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %16, align 8
  store %struct.snd_soc_codec* %17, %struct.snd_soc_codec** %8, align 8
  %18 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %18, i32 0, i32 1
  %20 = load %struct.wm8961_priv*, %struct.wm8961_priv** %19, align 8
  store %struct.wm8961_priv* %20, %struct.wm8961_priv** %9, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %24 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %3
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %260

34:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %38 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  %50 = call i64 @abs(i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = call i64 @abs(i64 %59)
  %61 = icmp slt i64 %50, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %40
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %70 = load i32, i32* @WM8961_ADDITIONAL_CONTROL_3, align 4
  %71 = call i32 @snd_soc_read(%struct.snd_soc_codec* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* @WM8961_SAMPLE_RATE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %85 = load i32, i32* @WM8961_ADDITIONAL_CONTROL_3, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @snd_soc_write(%struct.snd_soc_codec* %84, i32 %85, i32 %86)
  %88 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %89 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_srate, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %13, align 4
  %99 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %101 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %68
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %115 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %260

120:                                              ; preds = %110, %68
  %121 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 256
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %131 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %260

136:                                              ; preds = %126, %120
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %153, %136
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %140 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %139)
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %156

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %137

156:                                              ; preds = %151, %137
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %159 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %158)
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %163 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %4, align 4
  br label %260

168:                                              ; preds = %156
  %169 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %170 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %179 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.wm8961_priv*, %struct.wm8961_priv** %9, align 8
  %183 = getelementptr inbounds %struct.wm8961_priv, %struct.wm8961_priv* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %13, align 4
  %186 = sdiv i32 %184, %185
  %187 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %177, i32 %180, i32 %181, i32 %186)
  %188 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %189 = load i32, i32* @WM8961_CLOCKING_4, align 4
  %190 = call i32 @snd_soc_read(%struct.snd_soc_codec* %188, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* @WM8961_CLK_SYS_RATE_MASK, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %14, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %14, align 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wm8961_clk_sys_ratio, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @WM8961_CLK_SYS_RATE_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %14, align 4
  %205 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %206 = load i32, i32* @WM8961_CLOCKING_4, align 4
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @snd_soc_write(%struct.snd_soc_codec* %205, i32 %206, i32 %207)
  %209 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %210 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %211 = call i32 @snd_soc_read(%struct.snd_soc_codec* %209, i32 %210)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* @WM8961_WL_MASK, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %14, align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* %14, align 4
  %216 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %217 = call i32 @params_format(%struct.snd_pcm_hw_params* %216)
  switch i32 %217, label %234 [
    i32 131, label %218
    i32 130, label %219
    i32 129, label %224
    i32 128, label %229
  ]

218:                                              ; preds = %168
  br label %237

219:                                              ; preds = %168
  %220 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %221 = shl i32 1, %220
  %222 = load i32, i32* %14, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %14, align 4
  br label %237

224:                                              ; preds = %168
  %225 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %226 = shl i32 2, %225
  %227 = load i32, i32* %14, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %14, align 4
  br label %237

229:                                              ; preds = %168
  %230 = load i32, i32* @WM8961_WL_SHIFT, align 4
  %231 = shl i32 3, %230
  %232 = load i32, i32* %14, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %14, align 4
  br label %237

234:                                              ; preds = %168
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %4, align 4
  br label %260

237:                                              ; preds = %229, %224, %219, %218
  %238 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %239 = load i32, i32* @WM8961_AUDIO_INTERFACE_0, align 4
  %240 = load i32, i32* %14, align 4
  %241 = call i32 @snd_soc_write(%struct.snd_soc_codec* %238, i32 %239, i32 %240)
  %242 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %243 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %244 = call i32 @snd_soc_read(%struct.snd_soc_codec* %242, i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp sle i32 %245, 24000
  br i1 %246, label %247, label %251

247:                                              ; preds = %237
  %248 = load i32, i32* @WM8961_DACSLOPE, align 4
  %249 = load i32, i32* %14, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %14, align 4
  br label %255

251:                                              ; preds = %237
  %252 = load i32, i32* @WM8961_DACSLOPE, align 4
  %253 = load i32, i32* %14, align 4
  %254 = and i32 %253, %252
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %251, %247
  %256 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %8, align 8
  %257 = load i32, i32* @WM8961_ADC_DAC_CONTROL_2, align 4
  %258 = load i32, i32* %14, align 4
  %259 = call i32 @snd_soc_write(%struct.snd_soc_codec* %256, i32 %257, i32 %258)
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %255, %234, %161, %129, %113, %27
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
