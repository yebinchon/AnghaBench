; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_hw_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_pcm.c_snd_vortex_pcm_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@VORTEX_PCM_WT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_vortex_pcm_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vortex_pcm_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.TYPE_8__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @VORTEX_PCM_TYPE(i32 %18)
  %20 = load i64, i64* @VORTEX_PCM_WT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vortex_adb_allocroute(%struct.TYPE_8__* %26, i32 %29, i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %25, %22
  br label %51

41:                                               ; preds = %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vortex_wt_allocroute(%struct.TYPE_8__* %45, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_irq(i32* %57)
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %60 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %59)
  ret i32 %60
}

declare dso_local %struct.TYPE_8__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @VORTEX_PCM_TYPE(i32) #1

declare dso_local i32 @vortex_adb_allocroute(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @vortex_wt_allocroute(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
