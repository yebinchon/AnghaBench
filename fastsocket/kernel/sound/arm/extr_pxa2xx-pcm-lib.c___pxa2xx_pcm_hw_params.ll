; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_pxa2xx-pcm-lib.c___pxa2xx_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, i32, %struct.pxa2xx_runtime_data* }
%struct.pxa2xx_runtime_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@DCMD_ENDIRQEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pxa2xx_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.pxa2xx_runtime_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %5, align 8
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %15, i32 0, i32 2
  %17 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %16, align 8
  store %struct.pxa2xx_runtime_data* %17, %struct.pxa2xx_runtime_data** %6, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = call i64 @params_buffer_bytes(%struct.snd_pcm_hw_params* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %21 = call i64 @params_period_bytes(%struct.snd_pcm_hw_params* %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 1
  %25 = call i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream* %22, i32* %24)
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %30 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %9, align 8
  %32 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %33 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %98, %2
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 24
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %38
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %56 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %73

62:                                               ; preds = %38
  %63 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %64 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %62, %51
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %81 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = or i64 %84, %85
  %87 = load i64, i64* @DCMD_ENDIRQEN, align 8
  %88 = or i64 %86, %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 1
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %9, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %79
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %38, label %103

103:                                              ; preds = %98
  %104 = load %struct.pxa2xx_runtime_data*, %struct.pxa2xx_runtime_data** %6, align 8
  %105 = getelementptr inbounds %struct.pxa2xx_runtime_data, %struct.pxa2xx_runtime_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 -1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  ret i32 0
}

declare dso_local i64 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_set_runtime_buffer(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
