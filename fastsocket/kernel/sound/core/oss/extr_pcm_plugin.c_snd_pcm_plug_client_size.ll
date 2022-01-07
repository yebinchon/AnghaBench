; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_client_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_client_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin = type { i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)*, %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin* }

@ENXIO = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin*, align 8
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = call i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = icmp ne %struct.snd_pcm_substream* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @ENXIO, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %96

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %96

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %31 = call %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream* %30)
  store %struct.snd_pcm_plugin* %31, %struct.snd_pcm_plugin** %6, align 8
  br label %32

32:                                               ; preds = %55, %29
  %33 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %34 = icmp ne %struct.snd_pcm_plugin* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %57

40:                                               ; preds = %38
  %41 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %41, i32 0, i32 3
  %43 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %42, align 8
  store %struct.snd_pcm_plugin* %43, %struct.snd_pcm_plugin** %7, align 8
  %44 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %44, i32 0, i32 0
  %46 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %45, align 8
  %47 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 0
  %51 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %50, align 8
  %52 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 %51(%struct.snd_pcm_plugin* %52, i64 %53)
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %48, %40
  %56 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %7, align 8
  store %struct.snd_pcm_plugin* %56, %struct.snd_pcm_plugin** %6, align 8
  br label %32

57:                                               ; preds = %38
  br label %94

58:                                               ; preds = %25
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %64 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %63)
  store %struct.snd_pcm_plugin* %64, %struct.snd_pcm_plugin** %6, align 8
  br label %65

65:                                               ; preds = %88, %62
  %66 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %67 = icmp ne %struct.snd_pcm_plugin* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = icmp sgt i64 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  %74 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %74, i32 0, i32 2
  %76 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %75, align 8
  store %struct.snd_pcm_plugin* %76, %struct.snd_pcm_plugin** %8, align 8
  %77 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %77, i32 0, i32 1
  %79 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %78, align 8
  %80 = icmp ne i64 (%struct.snd_pcm_plugin*, i64)* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %82, i32 0, i32 1
  %84 = load i64 (%struct.snd_pcm_plugin*, i64)*, i64 (%struct.snd_pcm_plugin*, i64)** %83, align 8
  %85 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 %84(%struct.snd_pcm_plugin* %85, i64 %86)
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %81, %73
  %89 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  store %struct.snd_pcm_plugin* %89, %struct.snd_pcm_plugin** %6, align 8
  br label %65

90:                                               ; preds = %71
  br label %93

91:                                               ; preds = %58
  %92 = call i32 (...) @snd_BUG()
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %57
  %95 = load i64, i64* %5, align 8
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %94, %24, %18
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_last(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
