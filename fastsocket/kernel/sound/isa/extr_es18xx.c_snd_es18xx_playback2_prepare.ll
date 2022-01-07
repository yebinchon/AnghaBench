; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback2_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback2_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es18xx = type { i32, i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@DAC1 = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es18xx*, %struct.snd_pcm_substream*)* @snd_es18xx_playback2_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback2_prepare(%struct.snd_es18xx* %0, %struct.snd_pcm_substream* %1) #0 {
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
  %19 = call i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx* %18)
  %20 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 2, i32 1
  %27 = call i32 @snd_es18xx_bits(%struct.snd_es18xx* %20, i32 168, i32 3, i32 %26)
  %28 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %29 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %30 = load i32, i32* @DAC1, align 4
  %31 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %28, %struct.snd_pcm_substream* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = sub i32 65536, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %34, i32 164, i32 %36)
  %38 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 8
  %41 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %38, i32 165, i32 %40)
  %42 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @snd_pcm_format_unsigned(i32 %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 128, i32 0
  %50 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %42, i32 182, i32 %49)
  %51 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @snd_pcm_format_unsigned(i32 %54)
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 81, i32 113
  %59 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %51, i32 183, i32 %58)
  %60 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 64, i32 8
  %67 = or i32 144, %66
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @snd_pcm_format_width(i32 %70)
  %72 = icmp eq i32 %71, 16
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 4, i32 0
  %75 = or i32 %67, %74
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @snd_pcm_format_unsigned(i32 %78)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 32
  %83 = or i32 %75, %82
  %84 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %60, i32 183, i32 %83)
  %85 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %86 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @DMA_MODE_WRITE, align 4
  %93 = load i32, i32* @DMA_AUTOINIT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_dma_program(i32 %87, i32 %90, i32 %91, i32 %94)
  ret i32 0
}

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx*) #1

declare dso_local i32 @snd_es18xx_bits(%struct.snd_es18xx*, i32, i32, i32) #1

declare dso_local i32 @snd_es18xx_rate_set(%struct.snd_es18xx*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_es18xx_write(%struct.snd_es18xx*, i32, i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
