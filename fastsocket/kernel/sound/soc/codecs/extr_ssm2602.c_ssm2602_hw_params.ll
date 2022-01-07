; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.i2c_client*, %struct.ssm2602_priv* }
%struct.i2c_client = type { i32 }
%struct.ssm2602_priv = type { %struct.snd_pcm_substream*, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@SSM2602_IFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Ignoring hw_params for slave substream\0A\00", align 1
@coeff_div = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SSM2602_ACTIVE = common dso_local global i32 0, align 4
@SSM2602_SRATE = common dso_local global i32 0, align 4
@ACTIVE_ACTIVATE_CODEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ssm2602_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_soc_device*, align 8
  %11 = alloca %struct.snd_soc_codec*, align 8
  %12 = alloca %struct.ssm2602_priv*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %17, align 8
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %9, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_device*, %struct.snd_soc_device** %20, align 8
  store %struct.snd_soc_device* %21, %struct.snd_soc_device** %10, align 8
  %22 = load %struct.snd_soc_device*, %struct.snd_soc_device** %10, align 8
  %23 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %25, align 8
  store %struct.snd_soc_codec* %26, %struct.snd_soc_codec** %11, align 8
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 1
  %29 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %28, align 8
  store %struct.ssm2602_priv* %29, %struct.ssm2602_priv** %12, align 8
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %31 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %30, i32 0, i32 0
  %32 = load %struct.i2c_client*, %struct.i2c_client** %31, align 8
  store %struct.i2c_client* %32, %struct.i2c_client** %13, align 8
  %33 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %34 = load i32, i32* @SSM2602_IFACE, align 4
  %35 = call i32 @ssm2602_read_reg_cache(%struct.snd_soc_codec* %33, i32 %34)
  %36 = and i32 %35, 65523
  store i32 %36, i32* %14, align 4
  %37 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %12, align 8
  %38 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @params_rate(%struct.snd_pcm_hw_params* %40)
  %42 = call i32 @get_coeff(i32 %39, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %44 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %12, align 8
  %45 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %44, i32 0, i32 0
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %45, align 8
  %47 = icmp eq %struct.snd_pcm_substream* %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %111

52:                                               ; preds = %3
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coeff_div, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %54)
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %111

60:                                               ; preds = %52
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coeff_div, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coeff_div, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = or i32 %67, %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @coeff_div, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %75, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %84 = load i32, i32* @SSM2602_ACTIVE, align 4
  %85 = call i32 @ssm2602_write(%struct.snd_soc_codec* %83, i32 %84, i32 0)
  %86 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %87 = load i32, i32* @SSM2602_SRATE, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ssm2602_write(%struct.snd_soc_codec* %86, i32 %87, i32 %88)
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_format(%struct.snd_pcm_hw_params* %90)
  switch i32 %91, label %102 [
    i32 131, label %92
    i32 130, label %93
    i32 129, label %96
    i32 128, label %99
  ]

92:                                               ; preds = %60
  br label %102

93:                                               ; preds = %60
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, 4
  store i32 %95, i32* %14, align 4
  br label %102

96:                                               ; preds = %60
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, 8
  store i32 %98, i32* %14, align 4
  br label %102

99:                                               ; preds = %60
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, 12
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %60, %99, %96, %93, %92
  %103 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %104 = load i32, i32* @SSM2602_IFACE, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @ssm2602_write(%struct.snd_soc_codec* %103, i32 %104, i32 %105)
  %107 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  %108 = load i32, i32* @SSM2602_ACTIVE, align 4
  %109 = load i32, i32* @ACTIVE_ACTIVATE_CODEC, align 4
  %110 = call i32 @ssm2602_write(%struct.snd_soc_codec* %107, i32 %108, i32 %109)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %102, %57, %48
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @ssm2602_read_reg_cache(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @ssm2602_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
