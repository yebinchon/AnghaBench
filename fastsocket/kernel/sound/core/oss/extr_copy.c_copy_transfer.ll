; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_copy.c_copy_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_copy.c_copy_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@ENXIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i64)* @copy_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @copy_transfer(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %13 = icmp ne %struct.snd_pcm_plugin* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %16 = icmp ne %struct.snd_pcm_plugin_channel* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %19 = icmp ne %struct.snd_pcm_plugin_channel* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %14, %4
  %22 = phi i1 [ true, %14 ], [ true, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @snd_BUG_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @ENXIO, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %130

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i64 0, i64* %5, align 8
  br label %130

33:                                               ; preds = %29
  %34 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %125, %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %128

42:                                               ; preds = %38
  %43 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %53, 8
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %49, %42
  %57 = phi i1 [ true, %42 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @snd_BUG_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* @ENXIO, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %130

64:                                               ; preds = %56
  %65 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %66 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %68, 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %73 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %75, 8
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i1 [ true, %64 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @snd_BUG_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i64, i64* @ENXIO, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %5, align 8
  br label %130

86:                                               ; preds = %78
  %87 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %86
  %92 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %93 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %97, i32 0, i32 1
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @snd_pcm_area_silence(%struct.TYPE_8__* %98, i32 0, i64 %99, i32 %103)
  br label %105

105:                                              ; preds = %96, %91
  %106 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  br label %125

108:                                              ; preds = %86
  %109 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %111, i32 0, i32 1
  %113 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %113, i32 0, i32 1
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_pcm_area_copy(%struct.TYPE_8__* %112, i32 0, %struct.TYPE_8__* %114, i32 0, i64 %115, i32 %119)
  %121 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %7, align 8
  %122 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %121, i32 1
  store %struct.snd_pcm_plugin_channel* %122, %struct.snd_pcm_plugin_channel** %7, align 8
  %123 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %123, i32 1
  store %struct.snd_pcm_plugin_channel* %124, %struct.snd_pcm_plugin_channel** %8, align 8
  br label %125

125:                                              ; preds = %108, %105
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %38

128:                                              ; preds = %38
  %129 = load i64, i64* %9, align 8
  store i64 %129, i64* %5, align 8
  br label %130

130:                                              ; preds = %128, %83, %61, %32, %26
  %131 = load i64, i64* %5, align 8
  ret i64 %131
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_pcm_area_silence(%struct.TYPE_8__*, i32, i64, i32) #1

declare dso_local i32 @snd_pcm_area_copy(%struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
