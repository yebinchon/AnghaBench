; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_es18xx = type { i32, i32 }

@ADC1 = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_es18xx*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_es18xx* %8, %struct.snd_es18xx** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %18 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %20 = call i32 @snd_es18xx_reset_fifo(%struct.snd_es18xx* %19)
  %21 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  %28 = call i32 @snd_es18xx_bits(%struct.snd_es18xx* %21, i32 168, i32 3, i32 %27)
  %29 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %31 = load i32, i32* @ADC1, align 4
  %32 = call i32 @snd_es18xx_rate_set(%struct.snd_es18xx* %29, %struct.snd_pcm_substream* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = sub i32 65536, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %35, i32 164, i32 %37)
  %39 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = lshr i32 %40, 8
  %42 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %39, i32 165, i32 %41)
  %43 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @snd_pcm_format_unsigned(i32 %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 81, i32 113
  %51 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %43, i32 183, i32 %50)
  %52 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 64, i32 8
  %59 = or i32 144, %58
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_pcm_format_width(i32 %62)
  %64 = icmp eq i32 %63, 16
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 4, i32 0
  %67 = or i32 %59, %66
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @snd_pcm_format_unsigned(i32 %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 32
  %75 = or i32 %67, %74
  %76 = call i32 @snd_es18xx_write(%struct.snd_es18xx* %52, i32 183, i32 %75)
  %77 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %78 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @DMA_MODE_READ, align 4
  %85 = load i32, i32* @DMA_AUTOINIT, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @snd_dma_program(i32 %79, i32 %82, i32 %83, i32 %86)
  ret i32 0
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

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
