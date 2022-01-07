; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/s6000/extr_s6000-pcm.c_s6000_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.s6000_runtime_data* }
%struct.s6000_runtime_data = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.s6000_pcm_dma_params* }
%struct.s6000_pcm_dma_params = type { i32, i32, i64 }

@s6000_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @s6000_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6000_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.s6000_pcm_dma_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.s6000_runtime_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %18, align 8
  store %struct.s6000_pcm_dma_params* %19, %struct.s6000_pcm_dma_params** %5, align 8
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %20, i32 0, i32 0
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %21, align 8
  store %struct.snd_pcm_runtime* %22, %struct.snd_pcm_runtime** %6, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %23, i32* @s6000_pcm_hardware)
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %27 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %25, i32 0, i32 %26, i32 16)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %92

32:                                               ; preds = %1
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %34 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %35 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %33, i32 0, i32 %34, i32 16)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %92

40:                                               ; preds = %32
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %43 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %92

48:                                               ; preds = %40
  %49 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %50 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %55 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %58 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %9, align 4
  %60 = load %struct.s6000_pcm_dma_params*, %struct.s6000_pcm_dma_params** %5, align 8
  %61 = getelementptr inbounds %struct.s6000_pcm_dma_params, %struct.s6000_pcm_dma_params* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %76

65:                                               ; preds = %53
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %67 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %92

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %53
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.s6000_runtime_data* @kzalloc(i32 4, i32 %78)
  store %struct.s6000_runtime_data* %79, %struct.s6000_runtime_data** %7, align 8
  %80 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %7, align 8
  %81 = icmp eq %struct.s6000_runtime_data* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %77
  %86 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %7, align 8
  %87 = getelementptr inbounds %struct.s6000_runtime_data, %struct.s6000_runtime_data* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.s6000_runtime_data*, %struct.s6000_runtime_data** %7, align 8
  %90 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %90, i32 0, i32 0
  store %struct.s6000_runtime_data* %89, %struct.s6000_runtime_data** %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %82, %73, %46, %38, %30
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local %struct.s6000_runtime_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
