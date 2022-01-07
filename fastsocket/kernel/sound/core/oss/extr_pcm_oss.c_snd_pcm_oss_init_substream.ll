; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_init_substream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_init_substream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, i32, i32 }
%struct.snd_pcm_oss_setup = type { i64, i64 }
%struct.snd_pcm_runtime2 = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.snd_pcm_oss_setup }

@O_NONBLOCK = common dso_local global i32 0, align 4
@AFMT_U8 = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@AFMT_MU_LAW = common dso_local global i32 0, align 4
@snd_pcm_oss_release_substream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_pcm_oss_setup*, i32)* @snd_pcm_oss_init_substream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_pcm_oss_init_substream(%struct.snd_pcm_substream* %0, %struct.snd_pcm_oss_setup* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_oss_setup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime2*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_oss_setup* %1, %struct.snd_pcm_oss_setup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.TYPE_6__* @oss_substream(%struct.snd_pcm_substream* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.TYPE_6__* @oss_substream(%struct.snd_pcm_substream* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %17 = bitcast %struct.snd_pcm_oss_setup* %15 to i8*
  %18 = bitcast %struct.snd_pcm_oss_setup* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %42

29:                                               ; preds = %3
  %30 = load %struct.snd_pcm_oss_setup*, %struct.snd_pcm_oss_setup** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_oss_setup, %struct.snd_pcm_oss_setup* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.snd_pcm_runtime2* @oss_runtime(i32 %45)
  store %struct.snd_pcm_runtime2* %46, %struct.snd_pcm_runtime2** %7, align 8
  %47 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %48 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 8000, i32* %55, align 8
  %56 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 8
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @SNDRV_MINOR_OSS_DEVICE(i32 %60)
  switch i32 %61, label %72 [
    i32 128, label %62
    i32 129, label %67
  ]

62:                                               ; preds = %42
  %63 = load i32, i32* @AFMT_U8, align 4
  %64 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 7
  store i32 %63, i32* %66, align 8
  br label %77

67:                                               ; preds = %42
  %68 = load i32, i32* @AFMT_S16_LE, align 4
  %69 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  store i32 %68, i32* %71, align 8
  br label %77

72:                                               ; preds = %42
  %73 = load i32, i32* @AFMT_MU_LAW, align 4
  %74 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 7
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %72, %67, %62
  %78 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.snd_pcm_runtime2*, %struct.snd_pcm_runtime2** %7, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_runtime2, %struct.snd_pcm_runtime2* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @snd_pcm_oss_release_substream, align 4
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %92 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @oss_substream(%struct.snd_pcm_substream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_pcm_runtime2* @oss_runtime(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @SNDRV_MINOR_OSS_DEVICE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
