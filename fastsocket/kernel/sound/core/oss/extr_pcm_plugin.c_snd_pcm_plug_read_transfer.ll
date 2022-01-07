; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_read_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plug_read_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32 }
%struct.snd_pcm_plugin = type { i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32, %struct.snd_pcm_plugin* }

@.str = private unnamed_addr constant [22 x i8] c"read plugin: %s, %li\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plug_read_transfer(%struct.snd_pcm_substream* %0, %struct.snd_pcm_plugin_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_plugin*, align 8
  %9 = alloca %struct.snd_pcm_plugin*, align 8
  %10 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %11 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @snd_pcm_plug_slave_size(%struct.snd_pcm_substream* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %3
  store %struct.snd_pcm_plugin_channel* null, %struct.snd_pcm_plugin_channel** %10, align 8
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %24 = call %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream* %23)
  store %struct.snd_pcm_plugin* %24, %struct.snd_pcm_plugin** %8, align 8
  br label %25

25:                                               ; preds = %69, %22
  %26 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %27 = icmp ne %struct.snd_pcm_plugin* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %33, label %72

33:                                               ; preds = %31
  %34 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %34, i32 0, i32 3
  %36 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %35, align 8
  store %struct.snd_pcm_plugin* %36, %struct.snd_pcm_plugin** %9, align 8
  %37 = icmp ne %struct.snd_pcm_plugin* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %39, i32 0, i32 0
  %41 = load i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)*, i32 (%struct.snd_pcm_plugin*, i32, %struct.snd_pcm_plugin_channel**)** %40, align 8
  %42 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 %41(%struct.snd_pcm_plugin* %42, i32 %43, %struct.snd_pcm_plugin_channel** %11)
  store i32 %44, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %12, align 4
  br label %52

50:                                               ; preds = %33
  %51 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %6, align 8
  store %struct.snd_pcm_plugin_channel* %51, %struct.snd_pcm_plugin_channel** %11, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @pdprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %58, i32 0, i32 1
  %60 = load i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)*, i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)** %59, align 8
  %61 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %8, align 8
  %62 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %10, align 8
  %63 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 %60(%struct.snd_pcm_plugin* %61, %struct.snd_pcm_plugin_channel* %62, %struct.snd_pcm_plugin_channel* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %9, align 8
  store %struct.snd_pcm_plugin* %70, %struct.snd_pcm_plugin** %8, align 8
  %71 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %11, align 8
  store %struct.snd_pcm_plugin_channel* %71, %struct.snd_pcm_plugin_channel** %10, align 8
  br label %25

72:                                               ; preds = %31
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %67, %46, %20
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @snd_pcm_plug_slave_size(%struct.snd_pcm_substream*, i32) #1

declare dso_local %struct.snd_pcm_plugin* @snd_pcm_plug_first(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pdprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
