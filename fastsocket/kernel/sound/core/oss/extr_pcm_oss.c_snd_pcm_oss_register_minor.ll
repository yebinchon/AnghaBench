; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_register_minor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_oss.c_snd_pcm_oss_register_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { i32, i8*, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@dsp_map = common dso_local global i32* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" (DUPLEX)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@adsp_map = common dso_local global i32* null, align 8
@SNDRV_OSS_INFO_DEV_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*)* @snd_pcm_oss_register_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_oss_register_minor(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %5 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %6 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %5)
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** @dsp_map, align 8
  %10 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %11 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %18 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %1
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %24 = call i32 @register_oss_dsp(%struct.snd_pcm* %23, i32 0)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %22
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %44 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %42, %33, %22
  %51 = phi i1 [ false, %33 ], [ false, %22 ], [ %49, %42 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %54 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %55 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %56, i8* %60)
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %63 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %69 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %50, %1
  %75 = load i32*, i32** @adsp_map, align 8
  %76 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %77 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %84 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %74
  %89 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %90 = call i32 @register_oss_dsp(%struct.snd_pcm* %89, i32 1)
  %91 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %92 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %98 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, 2
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %88, %74
  %104 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %105 = call %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm* %104)
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %112 = call i32 @snd_pcm_oss_proc_init(%struct.snd_pcm* %111)
  br label %113

113:                                              ; preds = %110, %103
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @oss_pcm(%struct.snd_pcm*) #1

declare dso_local i32 @register_oss_dsp(%struct.snd_pcm*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @snd_pcm_oss_proc_init(%struct.snd_pcm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
