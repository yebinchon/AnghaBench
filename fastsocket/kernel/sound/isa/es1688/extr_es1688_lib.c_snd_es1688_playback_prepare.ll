; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_playback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_playback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_es1688 = type { i32, i32, i32 }

@ES1688_DSP_CMD_SPKON = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1688_playback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_playback_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_es1688*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_es1688* %9, %struct.snd_es1688** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %19 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %21 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %25 = call i32 @snd_es1688_reset(%struct.snd_es1688* %24)
  %26 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %28 = call i32 @snd_es1688_set_rate(%struct.snd_es1688* %26, %struct.snd_pcm_substream* %27)
  %29 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %30 = call i32 @snd_es1688_write(%struct.snd_es1688* %29, i32 184, i8 zeroext 4)
  %31 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %32 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %33 = call i32 @snd_es1688_read(%struct.snd_es1688* %32, i32 168)
  %34 = and i32 %33, -4
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 3, %37
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  %41 = call i32 @snd_es1688_write(%struct.snd_es1688* %31, i32 168, i8 zeroext %40)
  %42 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %43 = call i32 @snd_es1688_write(%struct.snd_es1688* %42, i32 185, i8 zeroext 2)
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %69

48:                                               ; preds = %1
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_pcm_format_width(i32 %51)
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %56 = call i32 @snd_es1688_write(%struct.snd_es1688* %55, i32 182, i8 zeroext -128)
  %57 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %58 = call i32 @snd_es1688_write(%struct.snd_es1688* %57, i32 183, i8 zeroext 81)
  %59 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %60 = call i32 @snd_es1688_write(%struct.snd_es1688* %59, i32 183, i8 zeroext -48)
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %63 = call i32 @snd_es1688_write(%struct.snd_es1688* %62, i32 182, i8 zeroext 0)
  %64 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %65 = call i32 @snd_es1688_write(%struct.snd_es1688* %64, i32 183, i8 zeroext 113)
  %66 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %67 = call i32 @snd_es1688_write(%struct.snd_es1688* %66, i32 183, i8 zeroext -12)
  br label %68

68:                                               ; preds = %61, %54
  br label %90

69:                                               ; preds = %1
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snd_pcm_format_width(i32 %72)
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %77 = call i32 @snd_es1688_write(%struct.snd_es1688* %76, i32 182, i8 zeroext -128)
  %78 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %79 = call i32 @snd_es1688_write(%struct.snd_es1688* %78, i32 183, i8 zeroext 81)
  %80 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %81 = call i32 @snd_es1688_write(%struct.snd_es1688* %80, i32 183, i8 zeroext -104)
  br label %89

82:                                               ; preds = %69
  %83 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %84 = call i32 @snd_es1688_write(%struct.snd_es1688* %83, i32 182, i8 zeroext 0)
  %85 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %86 = call i32 @snd_es1688_write(%struct.snd_es1688* %85, i32 183, i8 zeroext 113)
  %87 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %88 = call i32 @snd_es1688_write(%struct.snd_es1688* %87, i32 183, i8 zeroext -68)
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %92 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %93 = call i32 @snd_es1688_read(%struct.snd_es1688* %92, i32 177)
  %94 = and i32 %93, 15
  %95 = or i32 %94, 80
  %96 = trunc i32 %95 to i8
  %97 = call i32 @snd_es1688_write(%struct.snd_es1688* %91, i32 177, i8 zeroext %96)
  %98 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %99 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %100 = call i32 @snd_es1688_read(%struct.snd_es1688* %99, i32 178)
  %101 = and i32 %100, 15
  %102 = or i32 %101, 80
  %103 = trunc i32 %102 to i8
  %104 = call i32 @snd_es1688_write(%struct.snd_es1688* %98, i32 178, i8 zeroext %103)
  %105 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %106 = load i32, i32* @ES1688_DSP_CMD_SPKON, align 4
  %107 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %105, i32 %106)
  %108 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %109 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %108, i32 0, i32 1
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load i32, i32* %7, align 4
  %113 = sub i32 0, %112
  store i32 %113, i32* %7, align 4
  %114 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %115 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @DMA_MODE_WRITE, align 4
  %122 = load i32, i32* @DMA_AUTOINIT, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @snd_dma_program(i32 %116, i32 %119, i32 %120, i32 %123)
  %125 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %126 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %125, i32 0, i32 1
  %127 = load i64, i64* %3, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = trunc i32 %130 to i8
  %132 = call i32 @snd_es1688_write(%struct.snd_es1688* %129, i32 164, i8 zeroext %131)
  %133 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = lshr i32 %134, 8
  %136 = trunc i32 %135 to i8
  %137 = call i32 @snd_es1688_write(%struct.snd_es1688* %133, i32 165, i8 zeroext %136)
  %138 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %139 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %138, i32 0, i32 1
  %140 = load i64, i64* %3, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  ret i32 0
}

declare dso_local %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_es1688_reset(%struct.snd_es1688*) #1

declare dso_local i32 @snd_es1688_set_rate(%struct.snd_es1688*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1688_write(%struct.snd_es1688*, i32, i8 zeroext) #1

declare dso_local i32 @snd_es1688_read(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_es1688_dsp_command(%struct.snd_es1688*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
