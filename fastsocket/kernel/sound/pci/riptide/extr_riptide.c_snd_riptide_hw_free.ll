; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_snd_riptide_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_riptide = type { %struct.cmdif* }
%struct.cmdif = type { i32 }
%struct.pcmhw = type { i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_riptide_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.pcmhw*, align 8
  %5 = alloca %struct.cmdif*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_riptide* %7, %struct.snd_riptide** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream* %8)
  store %struct.pcmhw* %9, %struct.pcmhw** %4, align 8
  %10 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %11 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %10, i32 0, i32 0
  %12 = load %struct.cmdif*, %struct.cmdif** %11, align 8
  store %struct.cmdif* %12, %struct.cmdif** %5, align 8
  %13 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %14 = icmp ne %struct.cmdif* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %17 = icmp ne %struct.pcmhw* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %20 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %25 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %26 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %29 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @freelbuspath(%struct.cmdif* %24, i32 %27, i32* %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %34 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %36 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %35, i32 0, i32 0
  store i32 255, i32* %36, align 8
  %37 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %38 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 255, i32* %40, align 4
  %41 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %42 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 255, i32* %44, align 4
  %45 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %46 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %52 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %51, i32 0, i32 2
  %53 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %52)
  %54 = load %struct.pcmhw*, %struct.pcmhw** %4, align 8
  %55 = getelementptr inbounds %struct.pcmhw, %struct.pcmhw* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %32
  br label %58

58:                                               ; preds = %57, %15, %1
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %59)
  ret i32 %60
}

declare dso_local %struct.snd_riptide* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcmhw* @get_pcmhwdev(%struct.snd_pcm_substream*) #1

declare dso_local i32 @freelbuspath(%struct.cmdif*, i32, i32*) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_2__*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
