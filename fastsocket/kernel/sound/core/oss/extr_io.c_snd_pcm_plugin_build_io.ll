; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_io.c_snd_pcm_plugin_build_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_io.c_snd_pcm_plugin_build_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_plugin = type { i64, i32, i32 }
%struct.snd_pcm_plugin_format = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"I/O io\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@io_playback_transfer = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@io_src_channels = common dso_local global i32 0, align 4
@io_capture_transfer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_build_io(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_plugin** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_pcm_plugin**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_plugin_format, align 4
  %10 = alloca %struct.snd_pcm_plugin*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_pcm_plugin** %2, %struct.snd_pcm_plugin*** %7, align 8
  %11 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %7, align 8
  %12 = icmp ne %struct.snd_pcm_plugin** %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %7, align 8
  store %struct.snd_pcm_plugin* null, %struct.snd_pcm_plugin** %21, align 8
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = icmp ne %struct.snd_pcm_substream* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %26 = icmp ne %struct.snd_pcm_hw_params* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ true, %20 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @snd_BUG_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %87

36:                                               ; preds = %28
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %38 = call i32 @params_format(%struct.snd_pcm_hw_params* %37)
  %39 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @params_rate(%struct.snd_pcm_hw_params* %40)
  %42 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_channels(%struct.snd_pcm_hw_params* %43)
  %45 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_plugin_format, %struct.snd_pcm_plugin_format* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = call i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.snd_pcm_plugin_format* %9, %struct.snd_pcm_plugin_format* %9, i32 %51, %struct.snd_pcm_plugin** %10)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %87

57:                                               ; preds = %36
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %59 = call i64 @params_access(%struct.snd_pcm_hw_params* %58)
  %60 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %63 = call i64 @snd_pcm_plug_stream(%struct.snd_pcm_substream* %62)
  %64 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = load i32, i32* @io_playback_transfer, align 4
  %68 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @io_src_channels, align 4
  %77 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %66
  br label %84

80:                                               ; preds = %57
  %81 = load i32, i32* @io_capture_transfer, align 4
  %82 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %79
  %85 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %10, align 8
  %86 = load %struct.snd_pcm_plugin**, %struct.snd_pcm_plugin*** %7, align 8
  store %struct.snd_pcm_plugin* %85, %struct.snd_pcm_plugin** %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %84, %55, %33, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_plugin_build(%struct.snd_pcm_substream*, i8*, %struct.snd_pcm_plugin_format*, %struct.snd_pcm_plugin_format*, i32, %struct.snd_pcm_plugin**) #1

declare dso_local i64 @params_access(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @snd_pcm_plug_stream(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
