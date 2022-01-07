; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i64 }
%struct.echoaudio = type { i32 }
%struct.audioformat = type { i32, i32, i64, i32 }
%struct.audiopipe = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Prepare rate=%d format=%d channels=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Prepare error: unsupported format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.audioformat, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.echoaudio* %9, %struct.echoaudio** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.audiopipe*
  %17 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DE_HWP(i8* %29)
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %50 [
    i32 128, label %40
    i32 132, label %42
    i32 131, label %44
    i32 130, label %46
    i32 129, label %48
  ]

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 8, i32* %41, align 4
  br label %59

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 16, i32* %43, align 4
  br label %59

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 24, i32* %45, align 4
  br label %59

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %1, %46
  %49 = getelementptr inbounds %struct.audioformat, %struct.audioformat* %6, i32 0, i32 1
  store i32 32, i32* %49, align 4
  br label %59

50:                                               ; preds = %1
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @DE_HWP(i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %86

59:                                               ; preds = %48, %44, %42, %40
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %62 = call i32 @px_num(%struct.echoaudio* %61)
  %63 = icmp sge i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @snd_BUG_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %86

70:                                               ; preds = %59
  %71 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @is_pipe_allocated(%struct.echoaudio* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i64 @snd_BUG_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @set_audio_format(%struct.echoaudio* %83, i32 %84, %struct.audioformat* %6)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %79, %67, %50
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.echoaudio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @DE_HWP(i8*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @px_num(%struct.echoaudio*) #1

declare dso_local i32 @is_pipe_allocated(%struct.echoaudio*, i32) #1

declare dso_local i32 @set_audio_format(%struct.echoaudio*, i32, %struct.audioformat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
