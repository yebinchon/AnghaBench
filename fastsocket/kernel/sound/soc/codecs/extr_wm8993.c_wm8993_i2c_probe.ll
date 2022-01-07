; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8993.c_wm8993_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i8*, i32 (%struct.snd_soc_codec*, i64, i32)*, i32 (%struct.snd_soc_codec*, i32)*, i32, %struct.TYPE_8__*, %struct.i2c_client*, %struct.wm8993_priv*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.i2c_client = type { %struct.TYPE_8__ }
%struct.wm8993_priv = type { i32, %struct.TYPE_7__, %struct.TYPE_7__*, %struct.snd_soc_codec }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.i2c_device_id = type { i32 }

@wm8993_codec = common dso_local global %struct.snd_soc_codec* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"A WM8993 is already registered\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"WM8993\00", align 1
@wm8993_read = common dso_local global i32 0, align 4
@i2c_master_send = common dso_local global i64 0, align 8
@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4
@wm8993_dai = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@wm8993_reg_defaults = common dso_local global i32* null, align 8
@WM8993_SOFTWARE_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid ID register value %x\0A\00", align 1
@WM8993_RIGHT_DAC_DIGITAL_VOLUME = common dso_local global i32 0, align 4
@WM8993_DAC_VU = common dso_local global i32 0, align 4
@WM8993_RIGHT_ADC_DIGITAL_VOLUME = common dso_local global i32 0, align 4
@WM8993_ADC_VU = common dso_local global i32 0, align 4
@WM8993_ANALOGUE_HP_0 = common dso_local global i32 0, align 4
@WM8993_HPOUT1_AUTO_PU = common dso_local global i32 0, align 4
@WM8993_CLOCKING_4 = common dso_local global i32 0, align 4
@WM8993_SR_MODE = common dso_local global i32 0, align 4
@WM8993_LINE_MIXER1 = common dso_local global i32 0, align 4
@WM8993_LINEOUT1_MODE = common dso_local global i32 0, align 4
@WM8993_LINE_MIXER2 = common dso_local global i32 0, align 4
@WM8993_LINEOUT2_MODE = common dso_local global i32 0, align 4
@WM8993_ADDITIONAL_CONTROL = common dso_local global i32 0, align 4
@WM8993_LINEOUT1_FB = common dso_local global i32 0, align 4
@WM8993_LINEOUT2_FB = common dso_local global i32 0, align 4
@WM8993_MICBIAS = common dso_local global i32 0, align 4
@WM8993_JD_SCTHR_MASK = common dso_local global i32 0, align 4
@WM8993_JD_THR_MASK = common dso_local global i32 0, align 4
@WM8993_MICB1_LVL = common dso_local global i32 0, align 4
@WM8993_MICB2_LVL = common dso_local global i32 0, align 4
@WM8993_JD_SCTHR_SHIFT = common dso_local global i32 0, align 4
@WM8993_JD_THR_SHIFT = common dso_local global i32 0, align 4
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8993_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8993_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8993_priv*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** @wm8993_codec, align 8
  %11 = icmp ne %struct.snd_soc_codec* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %253

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wm8993_priv* @kzalloc(i32 160, i32 %19)
  store %struct.wm8993_priv* %20, %struct.wm8993_priv** %6, align 8
  %21 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %22 = icmp eq %struct.wm8993_priv* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %253

26:                                               ; preds = %18
  %27 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %28 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %27, i32 0, i32 3
  store %struct.snd_soc_codec* %28, %struct.snd_soc_codec** %7, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %36 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %35, i32 0, i32 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memcpy(%struct.TYPE_7__* %36, i32* %40, i32 40)
  br label %42

42:                                               ; preds = %34, %26
  %43 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %44 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %43, i32 0, i32 15
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %47 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %46, i32 0, i32 14
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %50 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %49, i32 0, i32 13
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* @wm8993_read, align 4
  %55 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %57, i32 0, i32 1
  store i32 (%struct.snd_soc_codec*, i64, i32)* @wm8993_write, i32 (%struct.snd_soc_codec*, i64, i32)** %58, align 8
  %59 = load i64, i64* @i2c_master_send, align 8
  %60 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %61 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %60, i32 0, i32 11
  store i64 %59, i64* %61, align 8
  %62 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %63 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %66 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %65, i32 0, i32 10
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %68 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %69)
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %72 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  %76 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %77 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %76, i32 0, i32 2
  store i32 (%struct.snd_soc_codec*, i32)* @wm8993_set_bias_level, i32 (%struct.snd_soc_codec*, i32)** %77, align 8
  %78 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %78, i32 0, i32 7
  store %struct.TYPE_6__* @wm8993_dai, %struct.TYPE_6__** %79, align 8
  %80 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %81 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %80, i32 0, i32 3
  store i32 1, i32* %81, align 8
  %82 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %84 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %83, i32 0, i32 6
  store %struct.wm8993_priv* %82, %struct.wm8993_priv** %84, align 8
  %85 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %86 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32*, i32** @wm8993_reg_defaults, align 8
  %89 = call i32 @memcpy(%struct.TYPE_7__* %87, i32* %88, i32 8)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %92 = call i32 @i2c_set_clientdata(%struct.i2c_client* %90, %struct.wm8993_priv* %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %95 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %94, i32 0, i32 5
  store %struct.i2c_client* %93, %struct.i2c_client** %95, align 8
  %96 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  store %struct.snd_soc_codec* %96, %struct.snd_soc_codec** @wm8993_codec, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %100 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %99, i32 0, i32 4
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %100, align 8
  %101 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %102 = load i64, i64* @WM8993_SOFTWARE_RESET, align 8
  %103 = call i32 @wm8993_read_hw(%struct.snd_soc_codec* %101, i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** @wm8993_reg_defaults, align 8
  %106 = load i64, i64* @WM8993_SOFTWARE_RESET, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %104, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %42
  %111 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %112 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %111, i32 0, i32 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %9, align 4
  br label %249

118:                                              ; preds = %42
  %119 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %120 = load i64, i64* @WM8993_SOFTWARE_RESET, align 8
  %121 = call i32 @wm8993_write(%struct.snd_soc_codec* %119, i64 %120, i32 65535)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %249

125:                                              ; preds = %118
  %126 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %127 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %126, i32 0, i32 0
  store i32 2, i32* %127, align 8
  %128 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %129 = load i32, i32* @WM8993_RIGHT_DAC_DIGITAL_VOLUME, align 4
  %130 = load i32, i32* @WM8993_DAC_VU, align 4
  %131 = load i32, i32* @WM8993_DAC_VU, align 4
  %132 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %134 = load i32, i32* @WM8993_RIGHT_ADC_DIGITAL_VOLUME, align 4
  %135 = load i32, i32* @WM8993_ADC_VU, align 4
  %136 = load i32, i32* @WM8993_ADC_VU, align 4
  %137 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %139 = load i32, i32* @WM8993_ANALOGUE_HP_0, align 4
  %140 = load i32, i32* @WM8993_HPOUT1_AUTO_PU, align 4
  %141 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %138, i32 %139, i32 %140, i32 0)
  %142 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %143 = load i32, i32* @WM8993_CLOCKING_4, align 4
  %144 = load i32, i32* @WM8993_SR_MODE, align 4
  %145 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %142, i32 %143, i32 %144, i32 0)
  %146 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %147 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %125
  %152 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %153 = load i32, i32* @WM8993_LINE_MIXER1, align 4
  %154 = load i32, i32* @WM8993_LINEOUT1_MODE, align 4
  %155 = load i32, i32* @WM8993_LINEOUT1_MODE, align 4
  %156 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %125
  %158 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %159 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %165 = load i32, i32* @WM8993_LINE_MIXER2, align 4
  %166 = load i32, i32* @WM8993_LINEOUT2_MODE, align 4
  %167 = load i32, i32* @WM8993_LINEOUT2_MODE, align 4
  %168 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %164, i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %157
  %170 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %171 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %177 = load i32, i32* @WM8993_ADDITIONAL_CONTROL, align 4
  %178 = load i32, i32* @WM8993_LINEOUT1_FB, align 4
  %179 = load i32, i32* @WM8993_LINEOUT1_FB, align 4
  %180 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %176, i32 %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %169
  %182 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %183 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %189 = load i32, i32* @WM8993_ADDITIONAL_CONTROL, align 4
  %190 = load i32, i32* @WM8993_LINEOUT2_FB, align 4
  %191 = load i32, i32* @WM8993_LINEOUT2_FB, align 4
  %192 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %188, i32 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %195 = load i32, i32* @WM8993_MICBIAS, align 4
  %196 = load i32, i32* @WM8993_JD_SCTHR_MASK, align 4
  %197 = load i32, i32* @WM8993_JD_THR_MASK, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @WM8993_MICB1_LVL, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @WM8993_MICB2_LVL, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %204 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @WM8993_JD_SCTHR_SHIFT, align 4
  %208 = shl i32 %206, %207
  %209 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %210 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @WM8993_JD_THR_SHIFT, align 4
  %214 = shl i32 %212, %213
  %215 = or i32 %208, %214
  %216 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %217 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %215, %219
  %221 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %222 = getelementptr inbounds %struct.wm8993_priv, %struct.wm8993_priv* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = shl i32 %224, 1
  %226 = or i32 %220, %225
  %227 = call i32 @snd_soc_update_bits(%struct.snd_soc_codec* %194, i32 %195, i32 %202, i32 %226)
  %228 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %229 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %230 = call i32 @wm8993_set_bias_level(%struct.snd_soc_codec* %228, i32 %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %193
  br label %249

234:                                              ; preds = %193
  %235 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %236 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %235, i32 0, i32 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %236, align 8
  store %struct.TYPE_8__* %237, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wm8993_dai, i32 0, i32 0), align 8
  %238 = call i32 @snd_soc_register_dai(%struct.TYPE_6__* @wm8993_dai)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %245

242:                                              ; preds = %234
  %243 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %244 = call i32 @snd_soc_register_codec(%struct.snd_soc_codec* %243)
  store i32 %244, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %253

245:                                              ; preds = %241
  %246 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %247 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %248 = call i32 @wm8993_set_bias_level(%struct.snd_soc_codec* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %233, %124, %110
  store %struct.snd_soc_codec* null, %struct.snd_soc_codec** @wm8993_codec, align 8
  %250 = load %struct.wm8993_priv*, %struct.wm8993_priv** %6, align 8
  %251 = call i32 @kfree(%struct.wm8993_priv* %250)
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %249, %242, %23, %12
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.wm8993_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @wm8993_write(%struct.snd_soc_codec*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @wm8993_set_bias_level(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8993_priv*) #1

declare dso_local i32 @wm8993_read_hw(%struct.snd_soc_codec*, i64) #1

declare dso_local i32 @snd_soc_update_bits(%struct.snd_soc_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_register_dai(%struct.TYPE_6__*) #1

declare dso_local i32 @snd_soc_register_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.wm8993_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
