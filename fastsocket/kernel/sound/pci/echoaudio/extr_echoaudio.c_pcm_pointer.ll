; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio.c_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.audiopipe* }
%struct.audiopipe = type { i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*)* @pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.audiopipe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %3, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 1
  %13 = load %struct.audiopipe*, %struct.audiopipe** %12, align 8
  store %struct.audiopipe* %13, %struct.audiopipe** %4, align 8
  %14 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %15 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @le32_to_cpu(i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %21 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %25 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %32 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %34, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %39, align 8
  %41 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %42 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %40, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %49, %1
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @frames_to_bytes(%struct.snd_pcm_runtime* %52, i64 %53)
  %55 = load %struct.audiopipe*, %struct.audiopipe** %4, align 8
  %56 = getelementptr inbounds %struct.audiopipe, %struct.audiopipe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i64 @frames_to_bytes(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
