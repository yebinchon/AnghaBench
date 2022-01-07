; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_pcm_plugin.c_snd_pcm_plugin_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i32, %struct.snd_pcm_plugin*, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_plugin_free(%struct.snd_pcm_plugin* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_plugin*, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %3, align 8
  %4 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %5 = icmp ne %struct.snd_pcm_plugin* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %8, i32 0, i32 2
  %10 = bitcast {}** %9 to i32 (%struct.snd_pcm_plugin*)**
  %11 = load i32 (%struct.snd_pcm_plugin*)*, i32 (%struct.snd_pcm_plugin*)** %10, align 8
  %12 = icmp ne i32 (%struct.snd_pcm_plugin*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %14, i32 0, i32 2
  %16 = bitcast {}** %15 to i32 (%struct.snd_pcm_plugin*)**
  %17 = load i32 (%struct.snd_pcm_plugin*)*, i32 (%struct.snd_pcm_plugin*)** %16, align 8
  %18 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %19 = call i32 %17(%struct.snd_pcm_plugin* %18)
  br label %20

20:                                               ; preds = %13, %7
  %21 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %21, i32 0, i32 1
  %23 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %22, align 8
  %24 = call i32 @kfree(%struct.snd_pcm_plugin* %23)
  %25 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vfree(i32 %27)
  %29 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %3, align 8
  %30 = call i32 @kfree(%struct.snd_pcm_plugin* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %6
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @kfree(%struct.snd_pcm_plugin*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
