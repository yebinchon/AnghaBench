; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.vx_pipe*, %struct.TYPE_6__ }
%struct.vx_pipe = type { i32, %struct.snd_pcm_substream*, i32 }
%struct.vx_core = type { i32, i32, %struct.TYPE_5__, %struct.vx_pipe** }
%struct.TYPE_5__ = type { i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vx_pcm_delayed_start = common dso_local global i32 0, align 4
@vx_pcm_playback_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @vx_pcm_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %12)
  store %struct.vx_core* %13, %struct.vx_core** %5, align 8
  store %struct.vx_pipe* null, %struct.vx_pipe** %6, align 8
  %14 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %15 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %32 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %107

41:                                               ; preds = %23
  %42 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %43 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %42, i32 0, i32 3
  %44 = load %struct.vx_pipe**, %struct.vx_pipe*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %44, i64 %46
  %48 = load %struct.vx_pipe*, %struct.vx_pipe** %47, align 8
  store %struct.vx_pipe* %48, %struct.vx_pipe** %6, align 8
  %49 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %50 = icmp ne %struct.vx_pipe* %49, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %41
  %52 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @vx_alloc_pipe(%struct.vx_core* %52, i32 0, i32 %53, i32 2, %struct.vx_pipe** %6)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %51
  %60 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %61 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %62 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %61, i32 0, i32 3
  %63 = load %struct.vx_pipe**, %struct.vx_pipe*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %63, i64 %65
  store %struct.vx_pipe* %60, %struct.vx_pipe** %66, align 8
  br label %67

67:                                               ; preds = %59, %41
  %68 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %69 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %73 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %74 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %73, i32 0, i32 1
  store %struct.snd_pcm_substream* %72, %struct.snd_pcm_substream** %74, align 8
  %75 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %76 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %75, i32 0, i32 0
  %77 = load i32, i32* @vx_pcm_delayed_start, align 4
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = ptrtoint %struct.snd_pcm_substream* %78 to i64
  %80 = call i32 @tasklet_init(i32* %76, i32 %77, i64 %79)
  %81 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %82 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %83 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %82, i32 0, i32 3
  %84 = load %struct.vx_pipe**, %struct.vx_pipe*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %84, i64 %86
  store %struct.vx_pipe* %81, %struct.vx_pipe** %87, align 8
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %89 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_6__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 4 bitcast (%struct.TYPE_6__* @vx_pcm_playback_hw to i8*), i64 4, i1 false)
  %91 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %92 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %99 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %99, i32 0, i32 0
  store %struct.vx_pipe* %98, %struct.vx_pipe** %100, align 8
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %102 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %103 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %101, i32 0, i32 %102, i32 4)
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %106 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %104, i32 0, i32 %105, i32 4)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %67, %57, %38, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_alloc_pipe(%struct.vx_core*, i32, i32, i32, %struct.vx_pipe**) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
