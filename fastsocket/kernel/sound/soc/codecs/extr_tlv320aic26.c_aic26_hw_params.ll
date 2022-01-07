; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_tlv320aic26.c_aic26_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_device* }
%struct.snd_soc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.aic26* }
%struct.aic26 = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"aic26_hw_params(substream=%p, params=%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"rate=%i format=%i\0A\00", align 1
@AIC26_DIV_6 = common dso_local global i32 0, align 4
@AIC26_DIV_4 = common dso_local global i32 0, align 4
@AIC26_DIV_3 = common dso_local global i32 0, align 4
@AIC26_DIV_2 = common dso_local global i32 0, align 4
@AIC26_DIV_1_5 = common dso_local global i32 0, align 4
@AIC26_DIV_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"bad rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AIC26_WLEN_16 = common dso_local global i32 0, align 4
@AIC26_WLEN_24 = common dso_local global i32 0, align 4
@AIC26_WLEN_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"bad format\0A\00", align 1
@AIC26_REG_PLL_PROG1 = common dso_local global i32 0, align 4
@AIC26_REG_PLL_PROG2 = common dso_local global i32 0, align 4
@AIC26_REG_AUDIO_CTRL3 = common dso_local global i32 0, align 4
@AIC26_REG_AUDIO_CTRL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @aic26_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic26_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_device*, align 8
  %10 = alloca %struct.snd_soc_codec*, align 8
  %11 = alloca %struct.aic26*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %21, align 8
  store %struct.snd_soc_pcm_runtime* %22, %struct.snd_soc_pcm_runtime** %8, align 8
  %23 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %24 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_device*, %struct.snd_soc_device** %24, align 8
  store %struct.snd_soc_device* %25, %struct.snd_soc_device** %9, align 8
  %26 = load %struct.snd_soc_device*, %struct.snd_soc_device** %9, align 8
  %27 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %29, align 8
  store %struct.snd_soc_codec* %30, %struct.snd_soc_codec** %10, align 8
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %32 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %31, i32 0, i32 0
  %33 = load %struct.aic26*, %struct.aic26** %32, align 8
  store %struct.aic26* %33, %struct.aic26** %11, align 8
  %34 = load %struct.aic26*, %struct.aic26** %11, align 8
  %35 = getelementptr inbounds %struct.aic26, %struct.aic26* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %40 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_substream* %38, %struct.snd_pcm_hw_params* %39)
  %41 = load %struct.aic26*, %struct.aic26** %11, align 8
  %42 = getelementptr inbounds %struct.aic26, %struct.aic26* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %46 = call i32 @params_rate(%struct.snd_pcm_hw_params* %45)
  %47 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %48 = call i32 @params_format(%struct.snd_pcm_hw_params* %47)
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %51 = call i32 @params_rate(%struct.snd_pcm_hw_params* %50)
  switch i32 %51, label %70 [
    i32 8000, label %52
    i32 11025, label %54
    i32 12000, label %56
    i32 16000, label %58
    i32 22050, label %60
    i32 24000, label %62
    i32 32000, label %64
    i32 44100, label %66
    i32 48000, label %68
  ]

52:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %53 = load i32, i32* @AIC26_DIV_6, align 4
  store i32 %53, i32* %13, align 4
  br label %78

54:                                               ; preds = %3
  store i32 44100, i32* %12, align 4
  %55 = load i32, i32* @AIC26_DIV_4, align 4
  store i32 %55, i32* %13, align 4
  br label %78

56:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %57 = load i32, i32* @AIC26_DIV_4, align 4
  store i32 %57, i32* %13, align 4
  br label %78

58:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %59 = load i32, i32* @AIC26_DIV_3, align 4
  store i32 %59, i32* %13, align 4
  br label %78

60:                                               ; preds = %3
  store i32 44100, i32* %12, align 4
  %61 = load i32, i32* @AIC26_DIV_2, align 4
  store i32 %61, i32* %13, align 4
  br label %78

62:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %63 = load i32, i32* @AIC26_DIV_2, align 4
  store i32 %63, i32* %13, align 4
  br label %78

64:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %65 = load i32, i32* @AIC26_DIV_1_5, align 4
  store i32 %65, i32* %13, align 4
  br label %78

66:                                               ; preds = %3
  store i32 44100, i32* %12, align 4
  %67 = load i32, i32* @AIC26_DIV_1, align 4
  store i32 %67, i32* %13, align 4
  br label %78

68:                                               ; preds = %3
  store i32 48000, i32* %12, align 4
  %69 = load i32, i32* @AIC26_DIV_1, align 4
  store i32 %69, i32* %13, align 4
  br label %78

70:                                               ; preds = %3
  %71 = load %struct.aic26*, %struct.aic26** %11, align 8
  %72 = getelementptr inbounds %struct.aic26, %struct.aic26* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %169

78:                                               ; preds = %68, %66, %64, %62, %60, %58, %56, %54, %52
  %79 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %80 = call i32 @params_format(%struct.snd_pcm_hw_params* %79)
  switch i32 %80, label %89 [
    i32 128, label %81
    i32 131, label %83
    i32 130, label %85
    i32 129, label %87
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @AIC26_WLEN_16, align 4
  store i32 %82, i32* %14, align 4
  br label %97

83:                                               ; preds = %78
  %84 = load i32, i32* @AIC26_WLEN_16, align 4
  store i32 %84, i32* %14, align 4
  br label %97

85:                                               ; preds = %78
  %86 = load i32, i32* @AIC26_WLEN_24, align 4
  store i32 %86, i32* %14, align 4
  br label %97

87:                                               ; preds = %78
  %88 = load i32, i32* @AIC26_WLEN_32, align 4
  store i32 %88, i32* %14, align 4
  br label %97

89:                                               ; preds = %78
  %90 = load %struct.aic26*, %struct.aic26** %11, align 8
  %91 = getelementptr inbounds %struct.aic26, %struct.aic26* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %169

97:                                               ; preds = %87, %85, %83, %81
  store i32 1, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 44100
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 7, i32 8
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 44100
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 5264, i32 1920
  store i32 %105, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = shl i32 %106, 11
  %108 = or i32 32768, %107
  %109 = load i32, i32* %15, align 4
  %110 = shl i32 %109, 8
  %111 = or i32 %108, %110
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 %112, 2
  %114 = or i32 %111, %113
  store i32 %114, i32* %19, align 4
  %115 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %116 = load i32, i32* @AIC26_REG_PLL_PROG1, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @aic26_reg_write(%struct.snd_soc_codec* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = shl i32 %119, 2
  store i32 %120, i32* %19, align 4
  %121 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %122 = load i32, i32* @AIC26_REG_PLL_PROG2, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @aic26_reg_write(%struct.snd_soc_codec* %121, i32 %122, i32 %123)
  %125 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %126 = load i32, i32* @AIC26_REG_AUDIO_CTRL3, align 4
  %127 = call i32 @aic26_reg_read_cache(%struct.snd_soc_codec* %125, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = and i32 %128, -63489
  store i32 %129, i32* %19, align 4
  %130 = load %struct.aic26*, %struct.aic26** %11, align 8
  %131 = getelementptr inbounds %struct.aic26, %struct.aic26* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %97
  %135 = load i32, i32* %19, align 4
  %136 = or i32 %135, 2048
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %134, %97
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 48000
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %19, align 4
  %142 = or i32 %141, 8192
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %145 = load i32, i32* @AIC26_REG_AUDIO_CTRL3, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @aic26_reg_write(%struct.snd_soc_codec* %144, i32 %145, i32 %146)
  %148 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %149 = load i32, i32* @AIC26_REG_AUDIO_CTRL1, align 4
  %150 = call i32 @aic26_reg_read_cache(%struct.snd_soc_codec* %148, i32 %149)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = and i32 %151, -4096
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.aic26*, %struct.aic26** %11, align 8
  %155 = getelementptr inbounds %struct.aic26, %struct.aic26* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %153, %156
  %158 = load i32, i32* %13, align 4
  %159 = shl i32 %158, 3
  %160 = or i32 %157, %159
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %19, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %19, align 4
  %165 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %10, align 8
  %166 = load i32, i32* @AIC26_REG_AUDIO_CTRL1, align 4
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @aic26_reg_write(%struct.snd_soc_codec* %165, i32 %166, i32 %167)
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %143, %89, %70
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @aic26_reg_write(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @aic26_reg_read_cache(%struct.snd_soc_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
