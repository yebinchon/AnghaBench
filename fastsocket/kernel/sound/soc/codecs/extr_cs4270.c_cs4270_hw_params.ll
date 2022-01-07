; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_cs4270.c_cs4270_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32, %struct.cs4270_private* }
%struct.cs4270_private = type { i32, i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@NUM_MCLK_RATIOS = common dso_local global i32 0, align 4
@cs4270_mode_ratios = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"could not find matching ratio\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS4270_MODE = common dso_local global i32 0, align 4
@CS4270_MODE_SPEED_MASK = common dso_local global i32 0, align 4
@CS4270_MODE_DIV_MASK = common dso_local global i32 0, align 4
@CS4270_MODE_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c write failed\0A\00", align 1
@CS4270_FORMAT = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_MASK = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_MASK = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_I2S = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_I2S = common dso_local global i32 0, align 4
@CS4270_FORMAT_DAC_LJ = common dso_local global i32 0, align 4
@CS4270_FORMAT_ADC_LJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown dai format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs4270_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4270_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.cs4270_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %8, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_device*, %struct.snd_soc_device** %21, align 8
  store %struct.snd_soc_device* %22, %struct.snd_soc_device** %9, align 8
  %23 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %24 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %26, align 8
  store %struct.snd_soc_codec* %27, %struct.snd_soc_codec** %10, align 8
  %28 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %29 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %28, i32 0, i32 1
  %30 = load %struct.cs4270_private*, %struct.cs4270_private** %29, align 8
  store %struct.cs4270_private* %30, %struct.cs4270_private** %11, align 8
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @params_rate(%struct.snd_pcm_hw_params* %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.cs4270_private*, %struct.cs4270_private** %11, align 8
  %34 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = udiv i32 %35, %36
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %53, %3
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @NUM_MCLK_RATIOS, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cs4270_mode_ratios, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %38

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @NUM_MCLK_RATIOS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %62 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %162

67:                                               ; preds = %56
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %69 = load i32, i32* @CS4270_MODE, align 4
  %70 = call i32 @snd_soc_read(%struct.snd_soc_codec* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @CS4270_MODE_SPEED_MASK, align 4
  %72 = load i32, i32* @CS4270_MODE_DIV_MASK, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %16, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cs4270_mode_ratios, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load %struct.cs4270_private*, %struct.cs4270_private** %11, align 8
  %86 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %67
  %90 = load i32, i32* @CS4270_MODE_SLAVE, align 4
  %91 = load i32, i32* %16, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %16, align 4
  br label %102

93:                                               ; preds = %67
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cs4270_mode_ratios, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %93, %89
  %103 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %104 = load i32, i32* @CS4270_MODE, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @snd_soc_write(%struct.snd_soc_codec* %103, i32 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %111 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %4, align 4
  br label %162

115:                                              ; preds = %102
  %116 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %117 = load i32, i32* @CS4270_FORMAT, align 4
  %118 = call i32 @snd_soc_read(%struct.snd_soc_codec* %116, i32 %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* @CS4270_FORMAT_DAC_MASK, align 4
  %120 = load i32, i32* @CS4270_FORMAT_ADC_MASK, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %16, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load %struct.cs4270_private*, %struct.cs4270_private** %11, align 8
  %126 = getelementptr inbounds %struct.cs4270_private, %struct.cs4270_private* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %140 [
    i32 129, label %128
    i32 128, label %134
  ]

128:                                              ; preds = %115
  %129 = load i32, i32* @CS4270_FORMAT_DAC_I2S, align 4
  %130 = load i32, i32* @CS4270_FORMAT_ADC_I2S, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* %16, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %16, align 4
  br label %147

134:                                              ; preds = %115
  %135 = load i32, i32* @CS4270_FORMAT_DAC_LJ, align 4
  %136 = load i32, i32* @CS4270_FORMAT_ADC_LJ, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %16, align 4
  br label %147

140:                                              ; preds = %115
  %141 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %142 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @dev_err(i32 %143, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %162

147:                                              ; preds = %134, %128
  %148 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %149 = load i32, i32* @CS4270_FORMAT, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @snd_soc_write(%struct.snd_soc_codec* %148, i32 %149, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %156 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %4, align 4
  br label %162

160:                                              ; preds = %147
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %154, %140, %109, %60
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
