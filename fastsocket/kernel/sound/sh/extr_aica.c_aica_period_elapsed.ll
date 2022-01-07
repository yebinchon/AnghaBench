; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_period_elapsed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sh/extr_aica.c_aica_period_elapsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__*, %struct.snd_pcm_runtime* }
%struct.TYPE_2__ = type { %struct.snd_card_aica* }
%struct.snd_card_aica = type { i32, i32, i32, i32 }

@AICA_CONTROL_CHANNEL_SAMPLE_NUMBER = common dso_local global i32 0, align 4
@AICA_PERIOD_SIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@aica_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @aica_period_elapsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aica_period_elapsed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_card_aica*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %8, %struct.snd_pcm_substream** %5, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_card_aica*, %struct.snd_card_aica** %15, align 8
  store %struct.snd_card_aica* %16, %struct.snd_card_aica** %6, align 8
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %18 = load i32, i32* @AICA_CONTROL_CHANNEL_SAMPLE_NUMBER, align 4
  %19 = call i32 @readl(i32 %18)
  %20 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %17, i32 %19)
  %21 = load i32, i32* @AICA_PERIOD_SIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %25 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %30 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %29, i32 0, i32 3
  %31 = load i64, i64* @jiffies, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @mod_timer(i32* %30, i64 %32)
  br label %59

34:                                               ; preds = %1
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %42 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %45 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %53 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* @aica_queue, align 4
  %56 = load %struct.snd_card_aica*, %struct.snd_card_aica** %6, align 8
  %57 = getelementptr inbounds %struct.snd_card_aica, %struct.snd_card_aica* %56, i32 0, i32 2
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
