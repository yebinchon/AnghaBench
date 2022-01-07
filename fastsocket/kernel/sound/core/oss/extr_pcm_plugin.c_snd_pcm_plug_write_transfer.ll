; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_write_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_write_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32 }
%struct.snd_pcm_plugin = type { i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32, %struct.snd_pcm_plugin* }

@.str = private unnamed_addr constant [23 x i8] c"write plugin: %s, %li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_write_transfer(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  %9 = alloca %struct.snd_pcm_plugin*, align 8
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %15)
  store %struct.snd_pcm_plugin* %16, %struct.snd_pcm_plugin** %8, align 8
  br label %17

17:                                               ; preds = %90, %3
  %18 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %19 = icmp ne %struct.snd_pcm_plugin* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %93

25:                                               ; preds = %23
  %26 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %26, i32 0, i32 5
  %28 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %27, align 8
  store %struct.snd_pcm_plugin* %28, %struct.snd_pcm_plugin** %9, align 8
  %29 = icmp ne %struct.snd_pcm_plugin* %28, null
  br i1 %29, label %30, label %72

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.snd_pcm_plugin*, i32)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %37, i32 0, i32 0
  %39 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %38, align 8
  %40 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 %39(%struct.snd_pcm_plugin* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %44, i32 0, i32 1
  %46 = load i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)** %45, align 8
  %47 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 %46(%struct.snd_pcm_plugin* %47, i32 %48, %struct.snd_pcm_plugin_channel** %10)
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %97

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %59, i32 0, i32 2
  %61 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.snd_pcm_plugin*, i32)* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %64, i32 0, i32 2
  %66 = load i32 (%struct.snd_pcm_plugin*, i32)*, i32 (%struct.snd_pcm_plugin*, i32)** %65, align 8
  %67 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 %66(%struct.snd_pcm_plugin* %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %53
  br label %73

72:                                               ; preds = %25
  store %struct.snd_pcm_plugin_channel* null, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %75 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @pdprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %79, i32 0, i32 3
  %81 = load i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)** %80, align 8
  %82 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %83 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  %84 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 %81(%struct.snd_pcm_plugin* %82, %struct.snd_pcm_plugin_channel* %83, %struct.snd_pcm_plugin_channel* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %97

90:                                               ; preds = %73
  %91 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  store %struct.snd_pcm_plugin_channel* %91, %struct.snd_pcm_plugin_channel** %6, align 8
  %92 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  store %struct.snd_pcm_plugin* %92, %struct.snd_pcm_plugin** %8, align 8
  br label %17

93:                                               ; preds = %23
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @snd_pcm_plug_client_size(%struct.snd_pcm_substream* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %88, %51
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pdprintf(i8*, i32, i32) #1

declare dso_local i32 @snd_pcm_plug_client_size(%struct.snd_pcm_substream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
