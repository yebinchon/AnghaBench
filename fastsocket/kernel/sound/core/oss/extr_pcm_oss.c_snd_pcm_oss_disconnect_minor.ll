; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_disconnect_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_disconnect_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@SNDRV_OSS_DEVICE_TYPE_PCM = common dso_local global i32 0, align 4
@dsp_map = common dso_local global i32* null, align 8
@SNDRV_OSS_INFO_DEV_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*)* @snd_pcm_oss_disconnect_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_disconnect_minor(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %3 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %4 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %3)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %11 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %19 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -2
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32 @snd_unregister_oss_device(i32 %24, %struct.TYPE_5__* %27, i32 0)
  br label %29

29:                                               ; preds = %17, %9
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %31 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %39 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, -3
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @SNDRV_OSS_DEVICE_TYPE_PCM, align 4
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %46 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @snd_unregister_oss_device(i32 %44, %struct.TYPE_5__* %47, i32 1)
  br label %49

49:                                               ; preds = %37, %29
  %50 = load i32*, i32** @dsp_map, align 8
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %52 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %59 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %49
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %66 = call %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %64, %1
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @oss_pcm(%struct.snd_pcm*) #1

declare dso_local i32 @snd_unregister_oss_device(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
