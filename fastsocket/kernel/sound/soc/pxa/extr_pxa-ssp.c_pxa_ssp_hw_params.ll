; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_soc_dai* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, %struct.ssp_priv* }
%struct.ssp_priv = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ssp_device* }
%struct.ssp_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SSTSA = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR0_DSS = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSPSP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No TDM timeslot configured\0A\00", align 1
@SSCR0_FPCKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pxa_ssp_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.ssp_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %18, align 8
  store %struct.snd_soc_pcm_runtime* %19, %struct.snd_soc_pcm_runtime** %8, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %23, align 8
  store %struct.snd_soc_dai* %24, %struct.snd_soc_dai** %9, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 1
  %27 = load %struct.ssp_priv*, %struct.ssp_priv** %26, align 8
  store %struct.ssp_priv* %27, %struct.ssp_priv** %10, align 8
  %28 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %29 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.ssp_device*, %struct.ssp_device** %30, align 8
  store %struct.ssp_device* %31, %struct.ssp_device** %11, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_channels(%struct.snd_pcm_hw_params* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_format(%struct.snd_pcm_hw_params* %34)
  %36 = call i32 @snd_pcm_format_physical_width(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %38 = load i32, i32* @SSTSA, align 4
  %39 = call i32 @ssp_read_reg(%struct.ssp_device* %37, i32 %38)
  %40 = and i32 %39, 15
  store i32 %40, i32* %16, align 4
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @kfree(i64 %48)
  br label %50

50:                                               ; preds = %45, %3
  %51 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 32
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @ssp_get_dma_params(%struct.ssp_device* %51, i32 %62, i32 %68)
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %73 = load i32, i32* @SSCR0, align 4
  %74 = call i32 @ssp_read_reg(%struct.ssp_device* %72, i32 %73)
  %75 = load i32, i32* @SSCR0_SSE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %176

79:                                               ; preds = %60
  %80 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %81 = load i32, i32* @SSCR0, align 4
  %82 = call i32 @ssp_read_reg(%struct.ssp_device* %80, i32 %81)
  %83 = load i32, i32* @SSCR0_DSS, align 4
  %84 = load i32, i32* @SSCR0_EDSS, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = and i32 %82, %86
  store i32 %87, i32* %13, align 4
  %88 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %89 = load i32, i32* @SSCR0, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @ssp_write_reg(%struct.ssp_device* %88, i32 %89, i32 %90)
  %92 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %93 = load i32, i32* @SSCR0, align 4
  %94 = call i32 @ssp_read_reg(%struct.ssp_device* %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %96 = call i32 @params_format(%struct.snd_pcm_hw_params* %95)
  switch i32 %96, label %113 [
    i32 131, label %97
    i32 130, label %101
    i32 129, label %107
  ]

97:                                               ; preds = %79
  %98 = call i32 @SSCR0_DataSize(i32 16)
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %113

101:                                              ; preds = %79
  %102 = load i32, i32* @SSCR0_EDSS, align 4
  %103 = call i32 @SSCR0_DataSize(i32 8)
  %104 = or i32 %102, %103
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %113

107:                                              ; preds = %79
  %108 = load i32, i32* @SSCR0_EDSS, align 4
  %109 = call i32 @SSCR0_DataSize(i32 16)
  %110 = or i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %79, %107, %101, %97
  %114 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %115 = load i32, i32* @SSCR0, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @ssp_write_reg(%struct.ssp_device* %114, i32 %115, i32 %116)
  %118 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %119 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %122 = and i32 %120, %121
  switch i32 %122, label %156 [
    i32 128, label %123
  ]

123:                                              ; preds = %113
  %124 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %125 = load i32, i32* @SSPSP, align 4
  %126 = call i32 @ssp_read_reg(%struct.ssp_device* %124, i32 %125)
  store i32 %126, i32* %14, align 4
  %127 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %128 = call i32 @ssp_get_scr(%struct.ssp_device* %127)
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %131, 16
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %176

136:                                              ; preds = %130, %123
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @SSPSP_SFRMWDTH(i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 %143, 2
  %145 = call i32 @SSPSP_SFRMDLY(i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  %148 = call i32 @SSPSP_DMYSTRT(i32 1)
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %136
  %152 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %153 = load i32, i32* @SSPSP, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @ssp_write_reg(%struct.ssp_device* %152, i32 %153, i32 %154)
  br label %157

156:                                              ; preds = %113
  br label %157

157:                                              ; preds = %156, %151
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @SSCR0_MOD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %162
  %166 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %167 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %176

173:                                              ; preds = %162, %157
  %174 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %175 = call i32 @dump_registers(%struct.ssp_device* %174)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %173, %165, %133, %78
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i64 @ssp_get_dma_params(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

declare dso_local i32 @ssp_get_scr(%struct.ssp_device*) #1

declare dso_local i32 @SSPSP_SFRMWDTH(i32) #1

declare dso_local i32 @SSPSP_SFRMDLY(i32) #1

declare dso_local i32 @SSPSP_DMYSTRT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
