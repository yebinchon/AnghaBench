; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback1_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback1_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@DAC2 = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, %struct.snd_pcm_substream*)* @snd_es18xx_playback1_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback1_prepare(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_es18xx*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_es18xx* %0, %struct.snd_es18xx** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %17 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = load i32, i32* @DAC2, align 4
  %21 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %18, %struct.snd_pcm_substream* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 65536, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 255
  %27 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %24, i32 116, i32 %26)
  %28 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = lshr i32 %29, 8
  %31 = call i32 @snd_es18xx_mixer_write(%struct.snd_es18xx* %28, i32 118, i32 %30)
  %32 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 2
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_pcm_format_width(i32 %41)
  %43 = icmp eq i32 %42, 16
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = or i32 %38, %45
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @snd_pcm_format_unsigned(i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 4
  %54 = or i32 %46, %53
  %55 = call i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx* %32, i32 122, i32 7, i32 %54)
  %56 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %57 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @DMA_MODE_WRITE, align 4
  %64 = load i32, i32* @DMA_AUTOINIT, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @snd_dma_program(i32 %58, i32 %61, i32 %62, i32 %65)
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_rate_set(%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_es18xx_mixer_write(%struct.snd_es18xx*, i32, i32) #1

declare dso_local i32 @snd_es18xx_mixer_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
