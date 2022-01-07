; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_es1688 = type { i32, i32, i32 }

@ES1688_DSP_CMD_SPKOFF = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@DMA_AUTOINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1688_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %30 = load i32, i32* @ES1688_DSP_CMD_SPKOFF, align 4
  %31 = call i32 @snd_es1688_dsp_command(%struct.snd_es1688* %29, i32 %30)
  %32 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %33 = call i32 @snd_es1688_write(%struct.snd_es1688* %32, i32 184, i8 zeroext 14)
  %34 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %35 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %36 = call i32 @snd_es1688_read(%struct.snd_es1688* %35, i32 168)
  %37 = and i32 %36, -4
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 3, %40
  %42 = or i32 %37, %41
  %43 = trunc i32 %42 to i8
  %44 = call i32 @snd_es1688_write(%struct.snd_es1688* %34, i32 168, i8 zeroext %43)
  %45 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %46 = call i32 @snd_es1688_write(%struct.snd_es1688* %45, i32 185, i8 zeroext 2)
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %68

51:                                               ; preds = %1
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_pcm_format_width(i32 %54)
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %59 = call i32 @snd_es1688_write(%struct.snd_es1688* %58, i32 183, i8 zeroext 81)
  %60 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %61 = call i32 @snd_es1688_write(%struct.snd_es1688* %60, i32 183, i8 zeroext -48)
  br label %67

62:                                               ; preds = %51
  %63 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %64 = call i32 @snd_es1688_write(%struct.snd_es1688* %63, i32 183, i8 zeroext 113)
  %65 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %66 = call i32 @snd_es1688_write(%struct.snd_es1688* %65, i32 183, i8 zeroext -12)
  br label %67

67:                                               ; preds = %62, %57
  br label %85

68:                                               ; preds = %1
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_pcm_format_width(i32 %71)
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %76 = call i32 @snd_es1688_write(%struct.snd_es1688* %75, i32 183, i8 zeroext 81)
  %77 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %78 = call i32 @snd_es1688_write(%struct.snd_es1688* %77, i32 183, i8 zeroext -104)
  br label %84

79:                                               ; preds = %68
  %80 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %81 = call i32 @snd_es1688_write(%struct.snd_es1688* %80, i32 183, i8 zeroext 113)
  %82 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %83 = call i32 @snd_es1688_write(%struct.snd_es1688* %82, i32 183, i8 zeroext -68)
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %87 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %88 = call i32 @snd_es1688_read(%struct.snd_es1688* %87, i32 177)
  %89 = and i32 %88, 15
  %90 = or i32 %89, 80
  %91 = trunc i32 %90 to i8
  %92 = call i32 @snd_es1688_write(%struct.snd_es1688* %86, i32 177, i8 zeroext %91)
  %93 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %94 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %95 = call i32 @snd_es1688_read(%struct.snd_es1688* %94, i32 178)
  %96 = and i32 %95, 15
  %97 = or i32 %96, 80
  %98 = trunc i32 %97 to i8
  %99 = call i32 @snd_es1688_write(%struct.snd_es1688* %93, i32 178, i8 zeroext %98)
  %100 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %101 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %100, i32 0, i32 1
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load i32, i32* %7, align 4
  %105 = sub i32 0, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %107 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @DMA_MODE_READ, align 4
  %114 = load i32, i32* @DMA_AUTOINIT, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @snd_dma_program(i32 %108, i32 %111, i32 %112, i32 %115)
  %117 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %118 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %117, i32 0, i32 1
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @spin_lock_irqsave(i32* %118, i64 %119)
  %121 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = trunc i32 %122 to i8
  %124 = call i32 @snd_es1688_write(%struct.snd_es1688* %121, i32 164, i8 zeroext %123)
  %125 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = lshr i32 %126, 8
  %128 = trunc i32 %127 to i8
  %129 = call i32 @snd_es1688_write(%struct.snd_es1688* %125, i32 165, i8 zeroext %128)
  %130 = load %struct.snd_es1688*, %struct.snd_es1688** %4, align 8
  %131 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %130, i32 0, i32 1
  %132 = load i64, i64* %3, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  ret i32 0
}

declare dso_local %struct.snd_es1688* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_es1688_reset(%struct.snd_es1688*) #1

declare dso_local i32 @snd_es1688_set_rate(%struct.snd_es1688*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_es1688_dsp_command(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_es1688_write(%struct.snd_es1688*, i32, i8 zeroext) #1

declare dso_local i32 @snd_es1688_read(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_dma_program(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
