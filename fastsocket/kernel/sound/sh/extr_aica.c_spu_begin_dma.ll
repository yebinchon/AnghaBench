; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_spu_begin_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_spu_begin_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_5__*, %struct.snd_pcm_runtime* }
%struct.TYPE_5__ = type { %struct.snd_card_aica* }
%struct.snd_card_aica = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.snd_pcm_runtime = type { i32 }

@aica_queue = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@aica_period_elapsed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @spu_begin_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_begin_dma(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_card_aica*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %5, i32 0, i32 1
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  store %struct.snd_pcm_runtime* %7, %struct.snd_pcm_runtime** %4, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.snd_card_aica*, %struct.snd_card_aica** %11, align 8
  store %struct.snd_card_aica* %12, %struct.snd_card_aica** %3, align 8
  %13 = load i32, i32* @aica_queue, align 4
  %14 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %15 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %14, i32 0, i32 1
  %16 = call i32 @queue_work(i32 %13, i32* %15)
  %17 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %18 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @unlikely(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %25 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %24, i32 0, i32 0
  %26 = load i64, i64* @jiffies, align 8
  %27 = add nsw i64 %26, 4
  %28 = call i32 @mod_timer(%struct.TYPE_6__* %25, i64 %27)
  br label %50

29:                                               ; preds = %1
  %30 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %31 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %30, i32 0, i32 0
  %32 = call i32 @init_timer(%struct.TYPE_6__* %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %34 = ptrtoint %struct.snd_pcm_substream* %33 to i64
  %35 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %36 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load i32, i32* @aica_period_elapsed, align 4
  %39 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %40 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* @jiffies, align 8
  %43 = add nsw i64 %42, 4
  %44 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %45 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 %43, i64* %46, align 8
  %47 = load %struct.snd_card_aica*, %struct.snd_card_aica** %3, align 8
  %48 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %47, i32 0, i32 0
  %49 = call i32 @add_timer(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @mod_timer(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @init_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
