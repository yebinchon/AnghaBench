; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_native.c_snd_pcm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_pcm_str*, %struct.snd_pcm* }
%struct.TYPE_4__ = type { i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_info*)* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_pcm_str = type { i64, i64 }
%struct.snd_pcm = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_info = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SNDRV_PCM_IOCTL1_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_info(%struct.snd_pcm_substream* %0, %struct.snd_pcm_info* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_info*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_str*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_info* %1, %struct.snd_pcm_info** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 6
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %9, align 8
  store %struct.snd_pcm* %10, %struct.snd_pcm** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 5
  %13 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %12, align 8
  store %struct.snd_pcm_str* %13, %struct.snd_pcm_str** %7, align 8
  %14 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %15 = call i32 @memset(%struct.snd_pcm_info* %14, i32 0, i32 56)
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strlcpy(i32 %40, i32 %43, i32 4)
  %45 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @strlcpy(i32 %47, i32 %50, i32 4)
  %52 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %7, align 8
  %63 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %7, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.snd_pcm_str*, %struct.snd_pcm_str** %7, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_str, %struct.snd_pcm_str* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strlcpy(i32 %78, i32 %81, i32 4)
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %83, i32 0, i32 1
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %84, align 8
  store %struct.snd_pcm_runtime* %85, %struct.snd_pcm_runtime** %5, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %87 = icmp ne %struct.snd_pcm_runtime* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %2
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_info, %struct.snd_pcm_info* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_info*)*, i32 (%struct.snd_pcm_substream*, i32, %struct.snd_pcm_info*)** %97, align 8
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %100 = load i32, i32* @SNDRV_PCM_IOCTL1_INFO, align 4
  %101 = load %struct.snd_pcm_info*, %struct.snd_pcm_info** %4, align 8
  %102 = call i32 %98(%struct.snd_pcm_substream* %99, i32 %100, %struct.snd_pcm_info* %101)
  br label %103

103:                                              ; preds = %88, %2
  ret i32 0
}

declare dso_local i32 @memset(%struct.snd_pcm_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
