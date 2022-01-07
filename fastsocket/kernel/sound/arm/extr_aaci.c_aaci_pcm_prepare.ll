; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i64, %struct.aaci_runtime* }
%struct.aaci_runtime = type { i32, i32, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @aaci_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.aaci_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 0
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %3, align 8
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %8, i32 0, i32 3
  %10 = load %struct.aaci_runtime*, %struct.aaci_runtime** %9, align 8
  store %struct.aaci_runtime* %10, %struct.aaci_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %16 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  %25 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %26 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %31 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %33 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %32, i32 %35)
  %37 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %38 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.aaci_runtime*, %struct.aaci_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.aaci_runtime, %struct.aaci_runtime* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  ret i32 0
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
