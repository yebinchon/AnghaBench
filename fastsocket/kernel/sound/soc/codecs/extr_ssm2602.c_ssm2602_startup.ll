; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_ssm2602.c_ssm2602_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i64 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.i2c_client*, %struct.ssm2602_priv* }
%struct.i2c_client = type { i32 }
%struct.ssm2602_priv = type { %struct.snd_pcm_substream*, %struct.snd_pcm_substream* }
%struct.snd_soc_dai = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Constraining to %d bits at %dHz\0A\00", align 1
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @ssm2602_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2602_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_device*, align 8
  %7 = alloca %struct.snd_soc_codec*, align 8
  %8 = alloca %struct.ssm2602_priv*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 1
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_device*, %struct.snd_soc_device** %15, align 8
  store %struct.snd_soc_device* %16, %struct.snd_soc_device** %6, align 8
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %20, align 8
  store %struct.snd_soc_codec* %21, %struct.snd_soc_codec** %7, align 8
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %23 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %22, i32 0, i32 1
  %24 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %23, align 8
  store %struct.ssm2602_priv* %24, %struct.ssm2602_priv** %8, align 8
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %25, i32 0, i32 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %9, align 8
  %28 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %28, i32 0, i32 0
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %29, align 8
  %31 = icmp ne %struct.snd_pcm_substream* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %2
  %33 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %34 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %34, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %36, align 8
  store %struct.snd_pcm_runtime* %37, %struct.snd_pcm_runtime** %10, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45)
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %32
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %53, align 8
  %55 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %54, i32 %55, i64 %58, i64 %61)
  br label %63

63:                                               ; preds = %51, %32
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %69, i32 0, i32 0
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %70, align 8
  %72 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %71, i32 %72, i64 %75, i64 %78)
  br label %80

80:                                               ; preds = %68, %63
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %82 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %83 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %82, i32 0, i32 1
  store %struct.snd_pcm_substream* %81, %struct.snd_pcm_substream** %83, align 8
  br label %88

84:                                               ; preds = %2
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %86 = load %struct.ssm2602_priv*, %struct.ssm2602_priv** %8, align 8
  %87 = getelementptr inbounds %struct.ssm2602_priv, %struct.ssm2602_priv* %86, i32 0, i32 0
  store %struct.snd_pcm_substream* %85, %struct.snd_pcm_substream** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
