; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-pcm.c_omap_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64, %struct.omap_runtime_data* }
%struct.omap_runtime_data = type { i32, i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @omap_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.omap_runtime_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %3, align 8
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %10, i32 0, i32 3
  %12 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %11, align 8
  store %struct.omap_runtime_data* %12, %struct.omap_runtime_data** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %4, align 8
  %20 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @omap_get_dma_dst_pos(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %23, i64 %28)
  store i32 %29, i32* %6, align 4
  br label %54

30:                                               ; preds = %1
  %31 = call i32 (...) @cpu_is_omap1510()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %4, align 8
  %35 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @omap_get_dma_src_pos(i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %38, i64 %43)
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %30
  %46 = load %struct.omap_runtime_data*, %struct.omap_runtime_data** %4, align 8
  %47 = getelementptr inbounds %struct.omap_runtime_data, %struct.omap_runtime_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %33
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @omap_get_dma_dst_pos(i32) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i32 @cpu_is_omap1510(...) #1

declare dso_local i64 @omap_get_dma_src_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
