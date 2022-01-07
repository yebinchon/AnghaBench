; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_open_playback_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm_open_playback_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.snd_ca0106_pcm* }
%struct.snd_ca0106_pcm = type { i32, %struct.snd_pcm_substream*, %struct.snd_ca0106* }
%struct.snd_ca0106 = type { i32*, %struct.TYPE_2__*, %struct.snd_ca0106_channel* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_ca0106_channel = type { i32, i32, %struct.snd_ca0106_pcm*, %struct.snd_ca0106* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_ca0106_pcm_free_substream = common dso_local global i32 0, align 4
@snd_ca0106_playback_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@PCM_FRONT_CHANNEL = common dso_local global i32 0, align 4
@spi_dacd_reg = common dso_local global i32* null, align 8
@spi_dacd_bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ca0106_pcm_open_playback_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm_open_playback_channel(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ca0106*, align 8
  %7 = alloca %struct.snd_ca0106_channel*, align 8
  %8 = alloca %struct.snd_ca0106_pcm*, align 8
  %9 = alloca %struct.snd_pcm_runtime*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.snd_ca0106* %13, %struct.snd_ca0106** %6, align 8
  %14 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %15 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %14, i32 0, i32 2
  %16 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %16, i64 %18
  store %struct.snd_ca0106_channel* %19, %struct.snd_ca0106_channel** %7, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %9, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.snd_ca0106_pcm* @kzalloc(i32 24, i32 %23)
  store %struct.snd_ca0106_pcm* %24, %struct.snd_ca0106_pcm** %8, align 8
  %25 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %26 = icmp eq %struct.snd_ca0106_pcm* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %124

30:                                               ; preds = %2
  %31 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %32 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %33 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %32, i32 0, i32 2
  store %struct.snd_ca0106* %31, %struct.snd_ca0106** %33, align 8
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %36 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %35, i32 0, i32 1
  store %struct.snd_pcm_substream* %34, %struct.snd_pcm_substream** %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %39 = getelementptr inbounds %struct.snd_ca0106_pcm, %struct.snd_ca0106_pcm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 2
  store %struct.snd_ca0106_pcm* %40, %struct.snd_ca0106_pcm** %42, align 8
  %43 = load i32, i32* @snd_ca0106_pcm_free_substream, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @snd_ca0106_playback_hw, align 4
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %50 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %51 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %50, i32 0, i32 3
  store %struct.snd_ca0106* %49, %struct.snd_ca0106** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %54 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %56 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.snd_ca0106_pcm*, %struct.snd_ca0106_pcm** %8, align 8
  %58 = load %struct.snd_ca0106_channel*, %struct.snd_ca0106_channel** %7, align 8
  %59 = getelementptr inbounds %struct.snd_ca0106_channel, %struct.snd_ca0106_channel* %58, i32 0, i32 2
  store %struct.snd_ca0106_pcm* %57, %struct.snd_ca0106_pcm** %59, align 8
  %60 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %61 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %62 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %30
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %124

66:                                               ; preds = %30
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %69 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %67, i32 0, i32 %68, i32 64)
  store i32 %69, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %124

73:                                               ; preds = %66
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %75 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %74)
  %76 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %77 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @PCM_FRONT_CHANNEL, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  %87 = load i32*, i32** @spi_dacd_reg, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %11, align 4
  %92 = load i32*, i32** @spi_dacd_bit, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %99 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %97
  store i32 %105, i32* %103, align 4
  %106 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %107 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %108 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @snd_ca0106_spi_write(%struct.snd_ca0106* %106, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %86
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %124

119:                                              ; preds = %86
  br label %120

120:                                              ; preds = %119, %82, %73
  %121 = load %struct.snd_ca0106*, %struct.snd_ca0106** %6, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @restore_spdif_bits(%struct.snd_ca0106* %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %117, %71, %64, %27
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.snd_ca0106* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_ca0106_pcm* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ca0106_spi_write(%struct.snd_ca0106*, i32) #1

declare dso_local i32 @restore_spdif_bits(%struct.snd_ca0106*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
