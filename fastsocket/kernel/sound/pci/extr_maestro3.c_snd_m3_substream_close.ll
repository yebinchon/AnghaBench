; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_substream_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_substream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.m3_dma* }
%struct.m3_dma = type { i64, i64, i64, i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, %struct.snd_pcm_substream*)* @snd_m3_substream_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_substream_close(%struct.snd_m3* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.m3_dma*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %3, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.m3_dma*, %struct.m3_dma** %9, align 8
  store %struct.m3_dma* %10, %struct.m3_dma** %5, align 8
  %11 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %12 = icmp eq %struct.m3_dma* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %16 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %19 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %24 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %29 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %30 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %31 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @snd_m3_pcm_stop(%struct.snd_m3* %28, %struct.m3_dma* %29, i64 %32)
  br label %34

34:                                               ; preds = %27, %22, %14
  %35 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %36 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %41 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %42 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %47 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_m3_remove_list(%struct.snd_m3* %40, i32 %45, i32 %50)
  %52 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %53 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %54 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %59 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_m3_remove_list(%struct.snd_m3* %52, i32 %57, i32 %62)
  %64 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %65 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %66 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %71 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_m3_remove_list(%struct.snd_m3* %64, i32 %69, i32 %74)
  %76 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %77 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %39, %34
  %79 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %80 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.m3_dma*, %struct.m3_dma** %5, align 8
  %82 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %84 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  br label %86

86:                                               ; preds = %78, %13
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_m3_pcm_stop(%struct.snd_m3*, %struct.m3_dma*, i64) #1

declare dso_local i32 @snd_m3_remove_list(%struct.snd_m3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
