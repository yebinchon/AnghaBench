; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/extr_es18xx.c_snd_es18xx_playback_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_es18xx = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ES18XX_PCM2 = common dso_local global i32 0, align 4
@DAC2 = common dso_local global i32 0, align 4
@DAC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es18xx_playback_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_playback_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_es18xx*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_es18xx* %7, %struct.snd_es18xx** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %14 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ES18XX_PCM2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %21 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DAC2, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %19
  %28 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %29 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %32 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_dma_pointer(i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %37 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %12, %1
  %41 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %42 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DAC1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %61

48:                                               ; preds = %40
  %49 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %50 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %53 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_dma_pointer(i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.snd_es18xx*, %struct.snd_es18xx** %4, align 8
  %58 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %56, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %48, %47, %27, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.snd_es18xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_dma_pointer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
