; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.pxa2xx_runtime_data*, i32 }
%struct.pxa2xx_runtime_data = type { i32, i32 }

@pxa2xx_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pxa2xx_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.pxa2xx_runtime_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load i32, i32* @pxa2xx_pcm_hardware, align 4
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %15 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %13, i32 0, i32 %14, i32 32)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %21 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %22 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %20, i32 0, i32 %21, i32 32)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %68

26:                                               ; preds = %19
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %29 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %68

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.pxa2xx_runtime_data* @kzalloc(i32 8, i32 %36)
  store %struct.pxa2xx_runtime_data* %37, %struct.pxa2xx_runtime_data** %5, align 8
  %38 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %39 = icmp ne %struct.pxa2xx_runtime_data* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %68

41:                                               ; preds = %33
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %51 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @dma_alloc_writecombine(i32 %48, i32 %49, i32* %51, i32 %52)
  %54 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %55 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %57 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %41
  br label %65

61:                                               ; preds = %41
  %62 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 0
  store %struct.pxa2xx_runtime_data* %62, %struct.pxa2xx_runtime_data** %64, align 8
  store i32 0, i32* %2, align 4
  br label %70

65:                                               ; preds = %60
  %66 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %5, align 8
  %67 = call i32 @kfree(%struct.pxa2xx_runtime_data* %66)
  br label %68

68:                                               ; preds = %65, %40, %32, %25, %18
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local %struct.pxa2xx_runtime_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_writecombine(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.pxa2xx_runtime_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
