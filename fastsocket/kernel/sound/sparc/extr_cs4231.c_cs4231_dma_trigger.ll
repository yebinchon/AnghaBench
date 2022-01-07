; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_cs4231_dma_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_cs4231.c_cs4231_dma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cs4231 = type { i32, i32, %struct.cs4231_dma_control, i32, i32, %struct.cs4231_dma_control }
%struct.cs4231_dma_control = type { i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)* }

@CS4231_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@CS4231_RECORD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, i32, i32)* @cs4231_dma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_dma_trigger(%struct.snd_pcm_substream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_cs4231*, align 8
  %8 = alloca %struct.cs4231_dma_control*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_cs4231* %10, %struct.snd_cs4231** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CS4231_PLAYBACK_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %3
  %16 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %17 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %16, i32 0, i32 5
  store %struct.cs4231_dma_control* %17, %struct.cs4231_dma_control** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %22 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %21, i32 0, i32 1
  %23 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %22, align 8
  %24 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %25 = call i32 %23(%struct.cs4231_dma_control* %24, i32 0)
  %26 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %27 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %26, i32 0, i32 0
  %28 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %27, align 8
  %29 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %30 = call i32 %28(%struct.cs4231_dma_control* %29, i32 1)
  %31 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %32 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %33 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %36 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %35, i32 0, i32 3
  %37 = call i32 @snd_cs4231_advance_dma(%struct.cs4231_dma_control* %31, i32 %34, i32* %36)
  br label %44

38:                                               ; preds = %15
  %39 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %40 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %39, i32 0, i32 0
  %41 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %40, align 8
  %42 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %43 = call i32 %41(%struct.cs4231_dma_control* %42, i32 0)
  br label %44

44:                                               ; preds = %38, %20
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CS4231_RECORD_ENABLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %45
  %51 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %52 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %51, i32 0, i32 2
  store %struct.cs4231_dma_control* %52, %struct.cs4231_dma_control** %8, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %57 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %56, i32 0, i32 1
  %58 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %57, align 8
  %59 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %60 = call i32 %58(%struct.cs4231_dma_control* %59, i32 1)
  %61 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %62 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %61, i32 0, i32 0
  %63 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %62, align 8
  %64 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %65 = call i32 %63(%struct.cs4231_dma_control* %64, i32 1)
  %66 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %67 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %68 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_cs4231*, %struct.snd_cs4231** %7, align 8
  %71 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %70, i32 0, i32 0
  %72 = call i32 @snd_cs4231_advance_dma(%struct.cs4231_dma_control* %66, i32 %69, i32* %71)
  br label %79

73:                                               ; preds = %50
  %74 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %75 = getelementptr inbounds %struct.cs4231_dma_control, %struct.cs4231_dma_control* %74, i32 0, i32 0
  %76 = load i32 (%struct.cs4231_dma_control*, i32)*, i32 (%struct.cs4231_dma_control*, i32)** %75, align 8
  %77 = load %struct.cs4231_dma_control*, %struct.cs4231_dma_control** %8, align 8
  %78 = call i32 %76(%struct.cs4231_dma_control* %77, i32 0)
  br label %79

79:                                               ; preds = %73, %55
  br label %80

80:                                               ; preds = %79, %45
  ret void
}

declare dso_local %struct.snd_cs4231* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_cs4231_advance_dma(%struct.cs4231_dma_control*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
