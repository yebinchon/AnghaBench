; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ad1889.c_snd_ad1889_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32 }
%struct.snd_ad1889 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AD_CHAN_WAV = common dso_local global i32 0, align 4
@AD_DS_WSMC = common dso_local global i32 0, align 4
@AD_DS_WSMC_WA16 = common dso_local global i32 0, align 4
@AD_DS_WSMC_WAST = common dso_local global i32 0, align 4
@AD_DS_WAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"prepare playback: addr = 0x%x, count = %u, size = %u, reg = 0x%x, rate = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ad1889_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_ad1889*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ad1889* %9, %struct.snd_ad1889** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %18 = load i32, i32* @AD_CHAN_WAV, align 4
  %19 = call i32 @ad1889_channel_reset(%struct.snd_ad1889* %17, i32 %18)
  %20 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %21 = load i32, i32* @AD_DS_WSMC, align 4
  %22 = call i32 @ad1889_readw(%struct.snd_ad1889* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @AD_DS_WSMC_WA16, align 4
  %24 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_pcm_format_width(i32 %31)
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @AD_DS_WSMC_WA16, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @AD_DS_WSMC_WAST, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %49 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %53 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %57 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %63 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %66 = load i32, i32* @AD_DS_WSMC, align 4
  %67 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %68 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ad1889_writew(%struct.snd_ad1889* %65, i32 %66, i32 %70)
  %72 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %73 = load i32, i32* @AD_DS_WAS, align 4
  %74 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ad1889_writew(%struct.snd_ad1889* %72, i32 %73, i32 %76)
  %78 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %79 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %80 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ad1889_load_wave_buffer_address(%struct.snd_ad1889* %78, i32 %82)
  %84 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ad1889_load_wave_buffer_count(%struct.snd_ad1889* %84, i32 %85)
  %87 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ad1889_load_wave_interrupt_count(%struct.snd_ad1889* %87, i32 %88)
  %90 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %91 = load i32, i32* @AD_DS_WSMC, align 4
  %92 = call i32 @ad1889_readw(%struct.snd_ad1889* %90, i32 %91)
  %93 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %94 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %93, i32 0, i32 1
  %95 = call i32 @spin_unlock_irq(i32* %94)
  %96 = load %struct.snd_ad1889*, %struct.snd_ad1889** %3, align 8
  %97 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ad1889_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %102, i32 %105)
  ret i32 0
}

declare dso_local %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @ad1889_channel_reset(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ad1889_writew(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_load_wave_buffer_address(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_load_wave_buffer_count(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_load_wave_interrupt_count(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ad1889_debug(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
