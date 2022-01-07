; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_sgio2audio.c_snd_sgio2audio_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/mips/extr_sgio2audio.c_snd_sgio2audio_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_sgio2audio_chan* }
%struct.snd_sgio2audio_chan = type { i32 }
%struct.snd_sgio2audio = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.snd_pcm_substream*, i64, i64 }

@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sgio2audio_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_sgio2audio*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_sgio2audio_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_sgio2audio* %9, %struct.snd_sgio2audio** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 2
  %17 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %16, align 8
  store %struct.snd_sgio2audio_chan* %17, %struct.snd_sgio2audio_chan** %5, align 8
  %18 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %5, align 8
  %19 = getelementptr inbounds %struct.snd_sgio2audio_chan, %struct.snd_sgio2audio_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %22 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %31 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %38 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %45 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %46 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %51, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %79 [
    i32 128, label %55
    i32 129, label %68
  ]

55:                                               ; preds = %1
  %56 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %57 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %56, i32 0, i32 1
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ad1843_setup_dac(i32* %57, i32 %59, i32 %62, i32 %63, i32 %66)
  br label %79

68:                                               ; preds = %1
  %69 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %70 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %69, i32 0, i32 1
  %71 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ad1843_setup_adc(i32* %70, i32 %73, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %1, %68, %55
  %80 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %81 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret i32 0
}

declare dso_local %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad1843_setup_dac(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ad1843_setup_adc(i32*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
