; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/atmel/extr_ac97c.c_atmel_ac97c_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.atmel_ac97c = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ICA = common dso_local global i32 0, align 4
@PCM_LEFT = common dso_local global i32 0, align 4
@PCM_RIGHT = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AC97C_CMR_DMAEN = common dso_local global i64 0, align 8
@AC97C_CMR_SIZE_16 = common dso_local global i64 0, align 8
@AC97C_CMR_CEM_LITTLE = common dso_local global i64 0, align 8
@AC97C_CSR_OVRUN = common dso_local global i64 0, align 8
@CAMR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@AC97C_SR_CAEVT = common dso_local global i64 0, align 8
@IER = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@AC97C_MR_VRA = common dso_local global i64 0, align 8
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not set rate %d Hz\0A\00", align 1
@DMA_RX_READY = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @atmel_ac97c_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.atmel_ac97c*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.atmel_ac97c* %9, %struct.atmel_ac97c** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %14 = load i32, i32* @ICA, align 4
  %15 = call i64 @ac97c_readl(%struct.atmel_ac97c* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @PCM_LEFT, align 4
  %17 = call i64 @AC97C_CH_MASK(i32 %16)
  %18 = load i32, i32* @PCM_RIGHT, align 4
  %19 = call i64 @AC97C_CH_MASK(i32 %18)
  %20 = or i64 %17, %19
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %6, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 1, label %27
    i32 2, label %33
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* @PCM_LEFT, align 4
  %29 = load i32, i32* @A, align 4
  %30 = call i64 @AC97C_CH_ASSIGN(i32 %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %46

33:                                               ; preds = %1
  %34 = load i32, i32* @PCM_LEFT, align 4
  %35 = load i32, i32* @A, align 4
  %36 = call i64 @AC97C_CH_ASSIGN(i32 %34, i32 %35)
  %37 = load i32, i32* @PCM_RIGHT, align 4
  %38 = load i32, i32* @A, align 4
  %39 = call i64 @AC97C_CH_ASSIGN(i32 %37, i32 %38)
  %40 = or i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %162

46:                                               ; preds = %33, %27
  %47 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %48 = load i32, i32* @ICA, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @ac97c_writel(%struct.atmel_ac97c* %47, i32 %48, i64 %49)
  %51 = load i64, i64* @AC97C_CMR_DMAEN, align 8
  %52 = load i64, i64* @AC97C_CMR_SIZE_16, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %6, align 8
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %55 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %66 [
    i32 128, label %57
    i32 129, label %61
  ]

57:                                               ; preds = %46
  %58 = load i64, i64* @AC97C_CMR_CEM_LITTLE, align 8
  %59 = load i64, i64* %6, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %84

61:                                               ; preds = %46
  %62 = load i64, i64* @AC97C_CMR_CEM_LITTLE, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %6, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %84

66:                                               ; preds = %46
  %67 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %68 = load i32, i32* @ICA, align 4
  %69 = call i64 @ac97c_readl(%struct.atmel_ac97c* %67, i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* @PCM_LEFT, align 4
  %71 = call i64 @AC97C_CH_MASK(i32 %70)
  %72 = load i32, i32* @PCM_RIGHT, align 4
  %73 = call i64 @AC97C_CH_MASK(i32 %72)
  %74 = or i64 %71, %73
  %75 = xor i64 %74, -1
  %76 = load i64, i64* %6, align 8
  %77 = and i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %79 = load i32, i32* @ICA, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @ac97c_writel(%struct.atmel_ac97c* %78, i32 %79, i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %162

84:                                               ; preds = %61, %57
  %85 = load i64, i64* @AC97C_CSR_OVRUN, align 8
  %86 = load i64, i64* %6, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %6, align 8
  %88 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %89 = load i32, i32* @CAMR, align 4
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @ac97c_writel(%struct.atmel_ac97c* %88, i32 %89, i64 %90)
  %92 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %93 = load i32, i32* @IMR, align 4
  %94 = call i64 @ac97c_readl(%struct.atmel_ac97c* %92, i32 %93)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* @AC97C_SR_CAEVT, align 8
  %96 = load i64, i64* %6, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %99 = load i32, i32* @IER, align 4
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @ac97c_writel(%struct.atmel_ac97c* %98, i32 %99, i64 %100)
  %102 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %103 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 48000
  br i1 %105, label %106, label %117

106:                                              ; preds = %84
  %107 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %108 = load i32, i32* @MR, align 4
  %109 = call i64 @ac97c_readl(%struct.atmel_ac97c* %107, i32 %108)
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* @AC97C_MR_VRA, align 8
  %111 = load i64, i64* %6, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %6, align 8
  %113 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %114 = load i32, i32* @MR, align 4
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @ac97c_writel(%struct.atmel_ac97c* %113, i32 %114, i64 %115)
  br label %129

117:                                              ; preds = %84
  %118 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %119 = load i32, i32* @MR, align 4
  %120 = call i64 @ac97c_readl(%struct.atmel_ac97c* %118, i32 %119)
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* @AC97C_MR_VRA, align 8
  %122 = xor i64 %121, -1
  %123 = load i64, i64* %6, align 8
  %124 = and i64 %123, %122
  store i64 %124, i64* %6, align 8
  %125 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %126 = load i32, i32* @MR, align 4
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @ac97c_writel(%struct.atmel_ac97c* %125, i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %117, %106
  %130 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %131 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @snd_ac97_set_rate(i32 %132, i32 %133, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %129
  %141 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %142 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_dbg(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %140, %129
  %150 = load i32, i32* @DMA_RX_READY, align 4
  %151 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %152 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %151, i32 0, i32 0
  %153 = call i32 @test_bit(i32 %150, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %157 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %158 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %159 = call i32 @atmel_ac97c_prepare_dma(%struct.atmel_ac97c* %156, %struct.snd_pcm_substream* %157, i32 %158)
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %155, %149
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %66, %43
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.atmel_ac97c* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @ac97c_readl(%struct.atmel_ac97c*, i32) #1

declare dso_local i64 @AC97C_CH_MASK(i32) #1

declare dso_local i64 @AC97C_CH_ASSIGN(i32, i32) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i64) #1

declare dso_local i32 @snd_ac97_set_rate(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atmel_ac97c_prepare_dma(%struct.atmel_ac97c*, %struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
