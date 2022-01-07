; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_korg1212 = type { i64, i32, i32, i32, i32, %struct.snd_pcm_substream*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"K1212_DEBUG: snd_korg1212_capture_open [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@snd_korg1212_capture_info = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@K1212_PERIODS = common dso_local global i32 0, align 4
@K1212_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@kPlayBufferFrames = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_korg1212_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_korg1212*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_korg1212* %7, %struct.snd_korg1212** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %5, align 8
  %11 = load i32*, i32** @stateName, align 8
  %12 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %13 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %19 = call i32 @snd_korg1212_OpenCard(%struct.snd_korg1212* %18)
  %20 = load i32, i32* @snd_korg1212_capture_info, align 4
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %24 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %25 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %24, i32 0, i32 6
  %26 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %23, i32* %25)
  %27 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %28 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %32 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %33 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %32, i32 0, i32 5
  store %struct.snd_pcm_substream* %31, %struct.snd_pcm_substream** %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %38 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @K1212_PERIODS, align 4
  %40 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %41 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @K1212_CHANNELS, align 4
  %43 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %44 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.snd_korg1212*, %struct.snd_korg1212** %4, align 8
  %46 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %45, i32 0, i32 1
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %51 = load i32, i32* @kPlayBufferFrames, align 4
  %52 = load i32, i32* @kPlayBufferFrames, align 4
  %53 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %49, i32 %50, i32 %51, i32 %52)
  ret i32 0
}

declare dso_local %struct.snd_korg1212* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @snd_korg1212_OpenCard(%struct.snd_korg1212*) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
