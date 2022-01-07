; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_pcm.c_vx_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_4__*, %struct.snd_pcm_runtime* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm_runtime = type { %struct.vx_pipe*, %struct.TYPE_6__ }
%struct.vx_pipe = type { %struct.vx_pipe*, i32, i32, %struct.snd_pcm_substream* }
%struct.vx_core = type { i32, i32, %struct.TYPE_5__, i64*, i32*, %struct.vx_pipe**, %struct.vx_pipe** }
%struct.TYPE_5__ = type { i32 }

@VX_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vx_pcm_delayed_start = common dso_local global i32 0, align 4
@vx_pcm_capture_hw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @vx_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca %struct.vx_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 1
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.vx_core* %14, %struct.vx_core** %5, align 8
  store %struct.vx_pipe* null, %struct.vx_pipe** %7, align 8
  %15 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %16 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VX_STAT_IS_STALE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %166

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @snd_BUG_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %166

42:                                               ; preds = %24
  %43 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @vx_alloc_pipe(%struct.vx_core* %43, i32 1, i32 %44, i32 2, %struct.vx_pipe** %6)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %2, align 4
  br label %166

50:                                               ; preds = %42
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %53 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %52, i32 0, i32 3
  store %struct.snd_pcm_substream* %51, %struct.snd_pcm_substream** %53, align 8
  %54 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %55 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %54, i32 0, i32 2
  %56 = load i32, i32* @vx_pcm_delayed_start, align 4
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %58 = ptrtoint %struct.snd_pcm_substream* %57 to i64
  %59 = call i32 @tasklet_init(i32* %55, i32 %56, i64 %58)
  %60 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %61 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %62 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %61, i32 0, i32 6
  %63 = load %struct.vx_pipe**, %struct.vx_pipe*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %63, i64 %65
  store %struct.vx_pipe* %60, %struct.vx_pipe** %66, align 8
  %67 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %68 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %143

75:                                               ; preds = %50
  %76 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %77 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %76, i32 0, i32 5
  %78 = load %struct.vx_pipe**, %struct.vx_pipe*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %78, i64 %80
  %82 = load %struct.vx_pipe*, %struct.vx_pipe** %81, align 8
  store %struct.vx_pipe* %82, %struct.vx_pipe** %7, align 8
  %83 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %84 = icmp ne %struct.vx_pipe* %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %75
  %86 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @vx_alloc_pipe(%struct.vx_core* %86, i32 0, i32 %87, i32 2, %struct.vx_pipe** %7)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %166

93:                                               ; preds = %85
  %94 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %95 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %96 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %95, i32 0, i32 5
  %97 = load %struct.vx_pipe**, %struct.vx_pipe*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vx_pipe*, %struct.vx_pipe** %97, i64 %99
  store %struct.vx_pipe* %94, %struct.vx_pipe** %100, align 8
  br label %101

101:                                              ; preds = %93, %75
  %102 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %103 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %109 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %116 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @vx_set_monitor_level(%struct.vx_core* %106, i32 %107, i32 %114, i64 %121)
  %123 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  %126 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %127 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %135 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, 1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @vx_set_monitor_level(%struct.vx_core* %123, i32 %125, i32 %133, i64 %141)
  br label %143

143:                                              ; preds = %101, %50
  %144 = load %struct.vx_pipe*, %struct.vx_pipe** %7, align 8
  %145 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %146 = getelementptr inbounds %struct.vx_pipe, %struct.vx_pipe* %145, i32 0, i32 0
  store %struct.vx_pipe* %144, %struct.vx_pipe** %146, align 8
  %147 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %148 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %147, i32 0, i32 1
  %149 = bitcast %struct.TYPE_6__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 4 bitcast (%struct.TYPE_6__* @vx_pcm_capture_hw to i8*), i64 4, i1 false)
  %150 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %151 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %155 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %158 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %159 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %158, i32 0, i32 0
  store %struct.vx_pipe* %157, %struct.vx_pipe** %159, align 8
  %160 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %161 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_BYTES, align 4
  %162 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %160, i32 0, i32 %161, i32 4)
  %163 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %164 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %165 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %163, i32 0, i32 %164, i32 4)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %143, %91, %48, %39, %21
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.vx_core* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_alloc_pipe(%struct.vx_core*, i32, i32, i32, %struct.vx_pipe**) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @vx_set_monitor_level(%struct.vx_core*, i32, i32, i64) #1

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
