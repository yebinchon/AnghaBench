; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_io.c_io_capture_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_io.c_io_capture_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_plugin = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm_plugin_channel = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8* }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_plugin*, %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel*, i32)* @io_capture_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_capture_transfer(%struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_plugin*, align 8
  %7 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %8 = alloca %struct.snd_pcm_plugin_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store %struct.snd_pcm_plugin* %0, %struct.snd_pcm_plugin** %6, align 8
  store %struct.snd_pcm_plugin_channel* %1, %struct.snd_pcm_plugin_channel** %7, align 8
  store %struct.snd_pcm_plugin_channel* %2, %struct.snd_pcm_plugin_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %14 = icmp ne %struct.snd_pcm_plugin* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @snd_BUG_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %107

22:                                               ; preds = %4
  %23 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %24 = icmp ne %struct.snd_pcm_plugin_channel* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %107

32:                                               ; preds = %22
  %33 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pcm_read(i32 %41, i8* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %107

48:                                               ; preds = %32
  %49 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %11, align 4
  %53 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %12, align 8
  %57 = load i8**, i8*** %12, align 8
  %58 = icmp ne i8** %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i64 @snd_BUG_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %107

66:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %72, i64 %74
  %76 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.snd_pcm_plugin_channel*, %struct.snd_pcm_plugin_channel** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_pcm_plugin_channel, %struct.snd_pcm_plugin_channel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  br label %96

91:                                               ; preds = %71
  %92 = load i8**, i8*** %12, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* null, i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load %struct.snd_pcm_plugin*, %struct.snd_pcm_plugin** %6, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_plugin, %struct.snd_pcm_plugin* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i8**, i8*** %12, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @pcm_readv(i32 %103, i8** %104, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %100, %63, %38, %29, %19
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @pcm_read(i32, i8*, i32) #1

declare dso_local i32 @pcm_readv(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
