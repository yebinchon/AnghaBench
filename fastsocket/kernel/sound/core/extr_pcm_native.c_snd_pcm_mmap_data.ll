; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_mmap_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_mmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* }
%struct.snd_pcm_runtime = type { i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i64 0, align 8
@EBADFD = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@SNDRV_PCM_ACCESS_RW_NONINTERLEAVED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_mmap_data(%struct.snd_pcm_substream* %0, %struct.file* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VM_WRITE, align 4
  %22 = load i32, i32* @VM_READ, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %132

29:                                               ; preds = %17
  br label %41

30:                                               ; preds = %3
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VM_READ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %132

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 2
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %43, align 8
  store %struct.snd_pcm_runtime* %44, %struct.snd_pcm_runtime** %8, align 8
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SNDRV_PCM_STATE_OPEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EBADFD, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %132

55:                                               ; preds = %41
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SNDRV_PCM_INFO_MMAP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %132

65:                                               ; preds = %55
  %66 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_ACCESS_RW_NONINTERLEAVED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %132

80:                                               ; preds = %71
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %83, %86
  store i64 %87, i64* %9, align 8
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %89 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PAGE_SHIFT, align 8
  %92 = shl i64 %90, %91
  store i64 %92, i64* %10, align 8
  %93 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @PAGE_ALIGN(i32 %95)
  store i64 %96, i64* %11, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %132

103:                                              ; preds = %80
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %105, %106
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %132

112:                                              ; preds = %103
  %113 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)*, i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)** %116, align 8
  %118 = icmp ne i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)*, i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)** %123, align 8
  %125 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %127 = call i32 %124(%struct.snd_pcm_substream* %125, %struct.vm_area_struct* %126)
  store i32 %127, i32* %4, align 4
  br label %132

128:                                              ; preds = %112
  %129 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %131 = call i32 @snd_pcm_lib_default_mmap(%struct.snd_pcm_substream* %129, %struct.vm_area_struct* %130)
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %119, %109, %100, %77, %62, %52, %37, %26
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @snd_pcm_lib_default_mmap(%struct.snd_pcm_substream*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
